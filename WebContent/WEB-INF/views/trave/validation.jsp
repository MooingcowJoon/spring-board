<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/common/common.jsp"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<script>
	var getRegEx = function(patterns,min,max){
		var pattern = ''
		var map={
			ko	: 	"ㄱ-ㅎㅏ-ㅣ",
			KO	: 	"가-힣",
			num	: 	"0-9",
			en	:	"a-z",
			EN 	: 	"A-Z",
			sp	:	"\\s\\-_.,'\""
		}
		patterns.forEach(key=>pattern+=map[key])
		var isInputPattern = min === undefined ? true : false
		if(!isInputPattern){
			return new RegExp('^['+pattern.replace('ㄱ-ㅎㅏ-ㅣ','')+']{'+min+','+max+'}$')
		} 
		return new RegExp('[^'+pattern+']','g')
	}
	
	
	class Rule{
		constructor(label, patterns,min, max,info,submitPattern){
			this.value				=	''
			this.label 				=	label
			this.inputPattern		=	getRegEx(patterns.split(','))
			this.min 				=	min
			this.max				= 	max
			this.submitPattern		=	submitPattern ? submitPattern : getRegEx(patterns.split(','),min,max)
			this.info 				=	info
		}
	}
	
	var getBasicRules = function(){
		return  {
			userName	:	new Rule('이름을','ko,KO',2,5,'[ 2~5자의 완성형 한글 ]'),
			userPhone	:	new Rule('휴대폰번호를','num',10,11,'[ 10~11자의 숫자 ]'),
			period		:	new Rule('여행기간을','num',1,2,'[ 1~2자리 숫자 ]'),
			expend		:	new Rule('여행경비를','num',5,9,'[ 10,000 ~ 100,000,000 사이의 숫자 ]')
		}
	}

	var inputEraser = function(e,Rules){
		var el = e.target
		var rule = Rules[el.name]
		var regEx = rule.inputPattern
		var cursorStart = $j(el)[0].selectionStart-1;
		
		if(regEx.test(el.value)){
			el.value = el.value.replace(regEx,'')
			el.setSelectionRange(cursorStart, cursorStart)
		}
		if(el.value.length > rule.max){
			el.value = rule.value
			el.setSelectionRange(cursorStart, cursorStart)
		}
		rule.value = el.value
	}
	
	
	var formsValidationHandler = function(){
		var $forms = $j('form')
		var rules = getBasicRules()
		for (var i =0; i<$forms.length; i++){
			var res = formValidator($forms.get(i),rules)
			if(!res.isValid){
				return {isValid : false}
			}
		}
		return {isValid : true, data : data}
	}
	var formValidator = function(form,rules){
		var rows = $form.find('.inputRow')
		if(rows.length === 0){
			rows = $form
		}
		
		for (var i=0; i<rows.length; i++)
		var inputs = rows.find('input[type="text"]').map
				
		
		var arr = $form.serializeArray()
		var row_count = Math.max($form.find('.inputRow').length,1)
		var col_count= arr.length / row_count 
		
		var rows = []
		
		for (var i=0; i<row_count; i+=col_count){
			rows.push(arr.slice(i,i+col_count))
		}
		var complete=false
		var resArr = []
		
		var isMaster = $form.find('.inputRow').length === 0
		var formId = $form.attr('id')
		
		!isMaster && (data[formId]=[])
		for (var i =0; i<rows.length; i++){
			var res = nullChecker(rows[i])
			if(!res.nullName){
				complete= true
			}
			resArr.push(res.nullName)
			isMaster ? (data = {...data, ...res.formData}) : data[formId].push(res.formData)
		}
		for(var i=0; i<resArr.length; i++){
			if (!complete && resArr[i]){
				var el = $form.find('input[name="'+resArr[i]+'"]').get(i)
				alert(rules[el.name].label + " 입력해주세요.")
				el.focus()
				return {isValid:false}
			}
		}
		
		
		for(var i=0; i<rows.length; i++){
			var res = validChecker(rows[i],rules)
			if(!res.isValid){
				var el = $form.find('input[name="'+res.name+'"]').get(i)
				alert(rules[el.name].info + " 형태로 입력해주세요.")
				el.focus()
				return {isValid:false}
			}
		}
		
		return {isValid:true, data: data}
	}
	var nullChecker = function(arr){
		var nullName
		var hasAnyFilled
		var formData = {}
		for(var i =0; i<arr.length; i++){
			var val = arr[i].value.trim()
			formData[arr[i].name]=val
			if(val === '' && !nullName){
				nullName = arr[i].name
			}
			if (val !== ''){
				hasAnyFilled = true	
			}
		}
		return {nullName : nullName, hasAnyFilled:hasAnyFilled,formData:formData}
	}
	var validChecker = function(arr,rules){
		for(var i = 0; i<arr.length; i++){
			var name = arr[i].name
			var val = arr[i].value
			console.log(arr[i])
			if(!rules[name].submitPattern.test(val)){
				return {isValid: false, i : i, name : name}
			}
		}
		return {isValid : true}
	}
	
	
	
	var valueFormatHandler = function(elType,elClass){
		var selector = elType+'.'+elClass
		if(elClass === "price"){
			formatPrice(selector)
		}
	}
	var formatPrice = function(selector){
		$j(document).on('blur',selector,e=>e.target.value=e.target.value.replace(/\B(?=(\d{3})+(?!\d))/g, ','))
		$j(document).on('focus mousedown',selector,e=>e.target.value=e.target.value.replaceAll(',',''))
	}
	
	
</script>
<body >
</body>
</html>