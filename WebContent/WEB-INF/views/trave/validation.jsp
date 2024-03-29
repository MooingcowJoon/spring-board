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
		var flag = min === undefined ? true : false
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
		if(flag){
			return new RegExp('[^'+pattern+']','g')
		} 
		return new RegExp('^['+pattern+']{'+min+','+max+'}','g')
	}
	
	
	class Rule{
		constructor(label, patterns,min, max,custom){
			this.val		=	''
			this.label 		=	label
			this.patterns 	= 	patterns.split(',')
			this.input		=	getRegEx(this.patterns)
			this.min 		=	min
			this.max		= 	max
			this.submit		=	getRegEx(this.patterns,min,max)
			this.custom 	=	custom
		}
	}
	
	var getBasicRules = function(){
		return  {
			userName	:	new Rule('이름을','ko,KO',2,5),
			userPhone	:	new Rule('휴대폰번호를','num',10,11),
			period		:	new Rule('여행기간을','num',1,2),
			expend		:	new Rule('여행경비를','num',5,9),
		}
	}

	var inputEraser = function(e,Rules){
		var el = e.target
		var rule = Rules[el.name]
		var regEx = rule.input
		var cursorStart = $j(el)[0].selectionStart-1;
		
		if(regEx.test(el.value)){
			el.value = el.value.replace(regEx,'')
			el.setSelectionRange(cursorStart, cursorStart)
		}
		if(el.value.length > rule.max){
			el.value = rule.val
			el.setSelectionRange(cursorStart, cursorStart)
		}
		rule.val = el.value
	}
	
	
	var formsValidationHandler = function($forms,g_rules){
		var data = {}
		for (var i =0; i<$forms.length; i++){
			var res = formValidator($forms.get(i),g_rules,data)
			if(!res.isValid){
				var el = res.nullInput
				alert(g_rules[el.name].label+' 입력해주세요.')
				el.focus()
				return {isValid : false}
			}
		}
		return res
	}
	var formValidator = function(form, rules,data){
		var $form = $j(form)
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
				return {isValid:false,nullInput : $form.find('input[name="'+resArr[i]+'"]').get(i),data:data}
			}
		}
		
		return {isValid:true,data:data}
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