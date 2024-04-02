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
	
	
	var getValidFormData = function(){
		var $forms = $j('form')
		for (var i =0; i<$forms.length; i++){
			if(!formValidator($forms.get(i))){
				return null 
			}
		}
		return getFormData($forms)
	}
	var formValidator = function(form){
		var $form = $j(form)
		var rules = getBasicRules()
		var rows = $form.find('.inputRow').get()
		if(rows.length === 0){
			rows = $form
			}
		
		for (var i=0; i<rows.length; i++){
			var inputs = $j(rows[i]).find('input[type="text"]').get()
			for (var j=0; j<inputs.length; j++){
				var el = inputs[j]
				var rule = rules[el.name]
				var val = el.value.trim()
				if(el.className === 'price'){
					val=val.replaceAll(',','')
				}
				if( val === ''){
					alert(rule.label + " 입력해주세요.")
					el.focus()
					return false
					}
				if(!rule.submitPattern.test(val)){
					alert(rule.info + " 형태로 입력해주세요.")
					el.focus()
					return false
					}
				}
			}
		return true
		}

	var getFormData = function(forms){
		var data = {}
		for(var i = 0; i<forms.length; i++){
			var $form = $j(forms.get(i))
			var formId = $form.attr('id')
			var formData = {}
			$form.serializeArray().forEach(e => formData[e.name]=e.value)
			if(formId){
				data[formId]=formData
			}
			if(!formId){
				data={...data,...formData}
			}
		}
		return data
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