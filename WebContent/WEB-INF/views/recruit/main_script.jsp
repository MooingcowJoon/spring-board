<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="/WEB-INF/views/common/common.jsp"%>    
<%@include file="/WEB-INF/views/recruit/regexp.jsp"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
</head>
<script src="/resources/js/jquery-1.10.2.js"></script>
<script type="text/javascript">
$j().ready(() => {
	/* 
		프로세스
		0. 제출된 폼인지, 제출안된 폼인지 체크하여 분기처리
		1. 저장 또는 제출 버튼 클릭시 유효성 검사
		2. 유효성 검사 통과하면 제출하는데, 저장버튼이냐 제출버튼이냐에 따라 submit 함수 인자를 다르게 줘서 분기처리
		3. 셀렉트와 텍스트입력필드의 경우, 
			이름, 핸드폰번호 	-> readonly
			그 외 		-> 제출 이후 readonly
	*/
	
	// 0.제출된 폼인지, 제출안된 폼인지 체크하여 분기처리
	if('Y' === $j('#saveSubmitBtnTd').data('submit')){
		$j('input[type="button"]').hide()
		$j('#logoutBtn').show()

	
 	$j('input[type="text"]').each((index,el)=>{
		var val = $j(el).val()
		var parent = $j(el).parent().get()
		elName = el.name
		if(elName ==="startPeriod"){
			var endVal = $j(el).siblings("input").val()
			$j(parent).html(val + " ~ "+endVal)
			if(val === ''){
				$j(parent).html('미입력')
			}
		}else if(elName !== "endPeriod"){
			$j(parent).html(val)
			if(val === ''){
				$j(parent).html('미입력')
			}
			}
 		
		}) 
	$j('select').each((index,el)=>{
		var selectedValue = el.value
		$j(el).parent().html(selectedValue)
		
		})
	$j('#formTable').find('form:not(:eq(0))').each((index,form)=>{
		$j(form).find('th:first').remove()
		$j(form).find('.inputRow').each((index,row)=>$j(row).find('td:first').remove())	
	})
	$j('td').filter(function(){
		return $j(this).children('h3').length===0
	}).attr('align',"center")	
	$j('#logoutBtn').on('click',()=>{
		if(confirm('정말 로그아웃하시겠습니까?')){
			location.href="/recruit/login.do"
		}
	})	
	}else{
	
	// 날짜인풋 요소 또는 문자열을 받아서 6자리 자연수로 반환하는 함수
	var getDateNumber = function(input){
		if(typeof input === 'string'){
			return parseInt(input.replace(".",''))
		}
		return parseInt(input.value.replace(".",''))
	}
	
	// 날짜 유효성 체크 함수
	/*
		아래 3가지 체크하여 ture / false 반환
		1. 날짜 기간의 시작기간이 종료기간과 같거나 이후일때 -> false
		2. 출생일을 제외한 어떤 날짜라도 출생일보다 같거나 이전일때 -> false
		3. 재학 기간이 서로다른 재학 기간과 겹칠 때 or 근무 기간이 근무 기간과 겹칠 때 -> false
		--> 3개 다 통과 시 -> true
	*/
	var dateCheck = function(){
		// 재학 기간 입력들과 근무 기간 입력들 중 입력값이 있는 요소들만 추림 
		// dateCheck 함수가 호출되기 이전에 이미 null인풋에 대한 유효성 검사가 끝났으므로, 
		// value가 있으면 날짜유효성 빼고는 체크된 대상임
			// 재학 기간
		var eduStarts = $j('#eduForm').find('input[name="startPeriod"]').get().filter((input)=>input.value.trim())
		var eduEnds = $j('#eduForm').find('input[name="endPeriod"]').get().filter((input)=>input.value.trim())
			// 근무 기간
		var carStarts = $j('#carForm').find('input[name="startPeriod"]').get().filter((input)=>input.value.trim())
		var carEnds = $j('#carForm').find('input[name="endPeriod"]').get().filter((input)=>input.value.trim())
		
		
		// 1. 날짜 기간의 시작기간이 종료기간과 같거나 이후일때 -> false
		for(var i=0; i<eduStarts.length; i++){
			if(getDateNumber(eduStarts[i]) >= getDateNumber(eduEnds[i])){
				alert('종료기간을 시작기간 이후로 입력해주세요.')
				focusEnd(eduEnds[i])
				return false
			}
		}
		for(var i=0; i<carStarts.length; i++){
			if(getDateNumber(carStarts[i]) >= getDateNumber(carEnds[i])){
				alert('종료기간을 시작기간 이후로 입력해주세요.')
				focusEnd(carEnds[i])
				return false
			}
		}
		
		// 2. 출생일을 제외한(자격증취득일포함) 어떤 날짜라도 출생일보다 같거나 이전일때 -> false
			// 생년월일을 '월' 까지만 추린 숫자 (ex : 199111)
		var birthNumber = getDateNumber($j('input[name="birth"]').get(0))
			// 모든 시작 날짜(자격증취득일 추가)
		var dates = [...eduStarts,...carStarts]
		dates.push(...$j('#certForm')
							.find('input[name="acquDate"]').get()
							.filter(input=>input.value.trim()))
		// 모든 날짜에 대한 검사 시작 : 어떤 날짜라도 출생일보다 같거나 이전일때 -> false
		for(var i = 0; i < dates.length; i++){
			if(getDateNumber(dates[i]) <= birthNumber){
				alert(getInputRule(dates[i])['NAME']+' 출생연도 이후로 입력하셔야 합니다.')
				focusEnd(dates[i])
				return false
			}
		}
		
		// 3. 학력 기간이 학력 기간과 겹칠 때 or 근무 기간이 근무 기간과 겹칠 때 -> false
		//
		// 		3-1. 재학기간, 근무기간을 시작일과 종료일로 묶어서 저장할 배열들 선언 및 값 할당
		//		3-2. 시작일 순으로 정렬
		//		3-3. 정렬된 배열이기 때문에, 뒤의 뒷 원소의 시작기간이 앞 원소의 종료기간보다 작으면 기간이 겹친다.
		//				-> alert 출력 및 false 반환
		
		// 	3-1. 재학기간, 근무기간을 시작기간과 종료기간으로 묶어서 저장할 배열들 선언 및 값 할당
		var EDU = []
		var CAR = []
		// 날짜를 숫자로 변환 후 Interval 객체에 넣어서 인터벌리스트에 추가
		for (var i = 0; i<eduStarts.length; i++){
			EDU.push({s: eduStarts[i],
						e: eduEnds[i]})
		}
		for (var i = 0; i<carStarts.length; i++){
			CAR.push({s: carStarts[i],
						e: carEnds[i]})
		}
		
//		3-2. 시작일 순으로 정렬
		EDU.sort((edu1,edu2)=>getDateNumber(edu1.s)-getDateNumber(edu2.s))
		CAR.sort((car1,car2)=>getDateNumber(car1.s)-getDateNumber(car2.s))
		
		
//		3-3. 정렬된 배열이기 때문에, 뒤의 뒷 원소의 시작기간이 앞 원소의 종료기간보다 작거나 같으면 기간이 겹친다.
//				-> alert 출력 및 false 반환
		for(var i=0; i<EDU.length-1; i++){
			if(getDateNumber(EDU[i].e) >= getDateNumber(EDU[i+1].s)){
				var alertMsg = '같은 기간의 재학기간을 중복하여 입력하실 수 없습니다.'
				alert(alertMsg)					
				focusEnd(EDU[i+1].s)
				return false
			}
		}
		for(var i=0; i<CAR.length-1; i++){
			if(getDateNumber(CAR[i].e) >= getDateNumber(CAR[i+1].s)){
				var alertMsg = '같은 기간의 근무기간을 중복하여 입력하실 수 없습니다.'
				alert(alertMsg)
				focusEnd(CAR[i+1].s)
				return false
			}
		}
		// --> 3개 다 통과 시 -> true
		return true
	}	
		
	// form 또는 .inputRow tr 요소를 받아서 
	// 자손 name:value 요소들만 뽑아내서 객체화시키는 함수
	var seriForm= function(form){
	    var formData = {};
	    $j(form).find('input[type="text"], select').each(function() {
		        var name = $j(this).attr('name');
		        var value = $j(this).val().trim();
		        formData[name]=value
		    });
	    return formData;
	}
			
		
		
	// 인풋요소 넣으면 RULE 반환하는 함수
	var getInputRule = function(input){
				var sectionName = $j(input).closest('form').attr('id')
				var inputName = input.name
				return INPUT_RULE[sectionName][inputName]
			}
	
	$j('#logoutBtn').on('click',()=>{
		if(confirm('로그아웃시 저장되지 않은 정보가 사라집니다.\n정말 로그아웃하시겠습니까?')){
			location.href="/recruit/login.do"
		}
	})
	
	// 저장 및 제출버튼 클릭 이벤트 핸들러 함수
	// 유효성 검사가 완료된 checkedFormData 객체 받아서 제출/저장 분기처리후 서버에제출
	// checkedFormData가 null 이면 유효성 검사가 안된것이므로 리턴 (alert출력은 getCheckedFormData 함수가처리)
	$j('.saveSubmitBtn').on('click',function(e){
		
		var checkedFormData = getCheckedFormData()
		if(!checkedFormData){
			return
		}
		var isSubmit = false
		if(this.id == 'saveBtn'){
			checkedFormData["submit"]='N'
		}else if(this.id === 'submitBtn'){
			checkedFormData["submit"]='Y'
			isSubmit = true
		}
		if(isSubmit){
			if(!confirm("제출하신 이후에는 조회만 가능하며, 더 이상 수정하실 수 없습니다.\n정말 제출하시겠습니까?")){
				return
			}
		}
		console.log(checkedFormData)
		$j.ajax({
			type			: 	"POST",
			url				: 	"/api/recruit/main/submit.do",
			data			:	JSON.stringify(checkedFormData),
			contentType		:	"application/json",
			success			:	function(res){
				if(res.result === 'success'){
					if(isSubmit){
						alert('입력정보를 제출하였습니다.')
						location.reload()
					}else{
					alert('입력정보가 저장되었습니다.')
					}
					return
				}
				if(res.result === 'error'){
					alert('에러가 발생하였습니다.')
				}
			
			},
			error			:	function(res){
				console.log(res)
			}
		})
		
	})	
	
	
	// 폼 유효성 체크 이후 
	// ajax에 리퀘스트바디에 json으로 넣을 폼 반환하는 함수 
	var getCheckedFormData = function(){
		var recruitForm_Unchecked = idFind('recruitForm')
		var eduForm_Unchecked	=	idFind('eduForm')
		var carForm_Unchecked 	=	idFind('carForm')
		var certForm_Unchecked 	=	idFind('certForm')
		
		formsToCheck= [recruitForm_Unchecked
						,eduForm_Unchecked
						,carForm_Unchecked
						,certForm_Unchecked]
		
		inputCheckResult = formsInputCheck(formsToCheck)
		
		//  inputChecker가 널이 아닐경우
		//   --> 유효성 검사 미통과
		if(inputCheckResult){
			alert(inputCheckResult.msg)
			inputCheckResult.invalidInput.focus()
			return
		}
		// 날짜 유효성 체크 통과 못하면 리턴
		if(!dateCheck()){
			return
		}
		
		/// 유효성 검사 완료되었으니 폼요소에서 입력값 뽑아내서 서버단 VO/DTO 오브젝트매핑에 맞게 마샬링
		recruitForm=seriForm(recruitForm_Unchecked)
/* 		recruitForm['name']=idFind('recruitName').innerText
		recruitForm['phone']=idFind('recruitPhone').innerText */
		recruitForm['educationList']=[]
		recruitForm['careerList']=[]
		recruitForm['certificateList']=[]
		
		
		$j(eduForm_Unchecked).find('.inputRow').each((index,inputRow)=>{
			if($j(inputRow).find('input[type="text"]:first').val()!==''){
				
			var eduRow = seriForm(inputRow)
			recruitForm['educationList'].push(eduRow)
			}
		})
		$j(carForm_Unchecked).find('.inputRow').each((index,inputRow)=>{
			if($j(inputRow).find('input[type="text"]:first').val()!==''){
			var carRow = seriForm(inputRow)
			recruitForm['careerList'].push(carRow)
			}
		})
		$j(certForm_Unchecked).find('.inputRow').each((index,inputRow)=>{
			if($j(inputRow).find('input[type="text"]:first').val()!==''){
			var certRow = seriForm(inputRow)
			recruitForm['certificateList'].push(certRow)
			}
		})
		
		
/* 		var rowIndex = 0 
		recruitForm['educationList'].sort((eduRow1,eduRow2) => getDateNumber(eduRow2.startPeriod)-getDateNumber(eduRow1.startPeriod))
									.forEach(row=>row.eduSeq=rowIndex++)
		
		rowIndex = 0 
		recruitForm['careerList'].sort((carRow1,carRow2)=> getDateNumber(carRow2.startPeriod)-getDateNumber(carRow1.startPeriod))
									.forEach(row=>row.carSeq=rowIndex++)
									
		rowIndex = 0 
		recruitForm['certificateList'].sort((certRow1,certRow2)=>	getDateNumber(certRow2.acquDate)-getDateNumber(certRow1.acquDate))
									.forEach(row=>row.certSeq=rowIndex++) */
		return recruitForm
	}

	
	// 폼들 받아서 순차적으로 유효성 검사 수행
	// 문제요소 확인되면 해당 요소와 함께 alert 띄울 메시지 반환
	// 문제없을시 null 반환
	function formsInputCheck(formsToCheck){
		var inputCheckResult = null
		
		// 널 유효성 검사 함수 호출
		var nullInput = isFormComplete()
		
		if(nullInput){
				var invalidInput = nullInput;
				var msg = getInputRule(nullInput)['NAME']+' 입력해주세요.'
// 				var sectionName = formsToCheck[i].id
// 				if(INPUT_RULE[sectionName]['isEssential']){
					
// 					if(sectionName === 'recruitForm'){
// 						var addMsg = '지원자 정보의 모든 항목을 입력하셔야 합니다.\n'
// 					}
// 					if(sectionName === 'eduForm'){
// 						var addMsg = '최소 하나 이상의 학력 정보를 빠짐없이 입력하셔야 합니다.\n'
// 					}
// 					msg = addMsg + msg
// 				}
				inputCheckResult={
					invalidInput : invalidInput,
					msg : msg
				}
				return inputCheckResult
			}
		for(var i = 0; i<formsToCheck.length; i++){

			// 정규식 패턴 검사 함수 호출
			var invalidPatternInput = isFormValid(formsToCheck[i])
			if(invalidPatternInput){
				inputCheckResult={
						invalidInput : invalidPatternInput,
						msg : getInputRule(invalidPatternInput)['INFO']+'\n형식으로 입력하셔야 합니다.'
				}
				return inputCheckResult
			}
		}
		return inputCheckResult
	}
	
 	// 미입력값 부분의 유효성 체크해주는 함수
	var isFormComplete = function(){
		var recruitInputs = $j('#recruitForm').find('input[type="text"]')
		
		for(var i =0; i<recruitInputs.length; i++){
			if(recruitInputs[i].value.trim() === ''){
				return recruitInputs[i]
			}
		}
		
		
		var edu = $j('#eduForm').find('.inputRow')
		var eduArr = []
		var complete = false
		for(var i = 0; i<edu.length; i++){
			var inputs = $j(edu[i]).find('input[type="text"]')
			var hasAnyInputFilled = false
			var nullInput = null
			for (var j=0; j<inputs.length; j++){
				if(inputs[j].value.trim() === ''){
					if(!nullInput){
						nullInput=inputs[j]
					}
				}else if (inputs[j].value.trim() !== ''){
					hasAnyInputFilled = true
				}
			}
			if(!nullInput){
				complete=true
			}
			eduArr.push({nullInput: nullInput, hasAnyInputFilled: hasAnyInputFilled})
		}
		
		for(var i=0; i<eduArr.length; i++){
			if(!complete && eduArr[i].nullInput){
				return eduArr[i].nullInput
			}	
			if(eduArr[i].nullInput && eduArr[i].hasAnyInputFilled){
				return eduArr[i].nullInput
			}
			}
			
		var car = $j('#carForm').find('.inputRow')
		for(var i = 0; i<car.length; i++){
			var inputs = $j(car[i]).find('input[type="text"]')
			var hasAnyInputFilled = false
			var nullInput = null
			for (var j=0; j<inputs.length; j++){
				
				if(inputs[j].value.trim() === ''){
					if(!nullInput){
						nullInput=inputs[j]
					}
				}else if (inputs[j].value.trim() !== ''){
					hasAnyInputFilled = true
				}
			}
			if(hasAnyInputFilled && nullInput){
				return nullInput
			}
		}
		var cert = $j('#certForm').find('.inputRow')
		for(var i = 0; i<cert.length; i++){
			var inputs = $j(cert[i]).find('input[type="text"]')
			var hasAnyInputFilled = false
			var nullInput = null
			for (var j=0; j<inputs.length; j++){
				if(inputs[j].value.trim() === ''){
					if(!nullInput){
						nullInput=inputs[j]
					}
				}else if (inputs[j].value.trim() !== ''){
					hasAnyInputFilled = true
				}
			}
			if(hasAnyInputFilled && nullInput){
				return nullInput
			}
		}
		
		return null
		}
		
	// 입력패턴 일치 여부 체크 함수
	// 일치하지 않는 요소 있을시, 첫번째로 찾아진 입력요소와 이에 상응하는 안내메시지로 이루어진 response 객체 반환
 	var isFormValid = function(form){
		
		var invalidInput = null
		
		var inputs = $j(form).find('input[type="text"]:not([readonly])')
		
		for(var i=0; i<inputs.length; i++){
			var input 	=	inputs[i]
			// 공백값에 대한 검사는 이미 수행되었기에 공백값이면 스킵
			if(input.value.trim() === ''){
				continue
			}
			var inputRule = getInputRule(input)
			var regEx = inputRule['SUBMIT']
			
			if(!regEx.test(input.value)){
				invalidInput = input
				return invalidInput
				}
			}
		return invalidInput
		}
	

	
// 	텍스트 입력필드에 입력값 입력시 제한된 입력 막는 기능과,
	// 입력필드 입력값 제어 함수 날짜 필드에 숫자 입력시 '.' 자동으로 추가해주는 기능 
	$j(document).on('input','input[type="text"]:not(.inputDate)',function(){
		
		var rule = getInputRule(this)
		// 유효성규칙에서 정규표현식 패턴 확보
		var regExp = rule.INPUT
		
		// 허용되지않는 값 삭제
	    if (regExp.test(this.value)) {
	    	this.value = this.value.replace(regExp, '');
	    }
		if(this.name === 'grade'){
			var text = this.value.replaceAll('.','')
			if(text.length > 1 ){
				text  = text.slice(0,1)+'.'+text.slice(1)
			}
			this.value=text
		}
		
	})
	
	/// 날짜입력 입력값 제어
	var dateInputValues = {}
	$j(document).on('input','input.inputDate', function(e){
		
		// 커서 위치 저장 
		var ss = $j(this)[0].selectionStart;
		var ee = $j(this)[0].selectionEnd;
		 
		// 유효성 규칙 참조
		var rule = getInputRule(this)
		 
		// 유효성규칙에서 정규표현식 패턴 확보
		var regExp = rule.INPUT
		if (regExp.test(this.value)) {
	    	this.value = this.value.replace(regExp, '');
	    	this.setSelectionRange(ss-1, ss-1);
	    }	
		
		// 날짜 입력 함수의 최대 자리수 (생년월일은 8자까지)
		var mexLen = this.name === 'birth' ? 8 :6
		if(this.value.length > mexLen){
			this.value=dateInputValues[this.id]
			this.setSelectionRange(ss-1, ss-1);
		}	
		dateInputValues[this.id] = this.value
	})
	$j(document).on('focus mousedown','input.inputDate',function(e){
		this.value	= this.value.replaceAll('.','')
	})
	
	var dotJoin = function(input){
		var text = input.value.replaceAll('.','')
		if(text.length > 6 ){
			text  = text.slice(0,4)+'.'+text.slice(4,6)+'.'+text.slice(6)
		}else if(text.length > 4){
			text  = text.slice(0,4)+'.'+text.slice(4)
		}
		input.value=text	
	}
	
	
	$j('#formTable').on('blur','input.inputDate',function(e){
		var maxLen = this.name === 'birth' ? 8:6
		if(this.value.length === maxLen){
			dotJoin(this)
		}
	})
	
 	//학점입력시 소숫점 2자리로 제로 패딩 넣어주는 함수
	$j('#formTable').on('blur','input[name="grade"],input[name="startPeriod"],input[name="acquDate"], input[name="endPeriod"]',function(e){
		var text = this.value
		if(this.name ==="grade"){
			if (text.length === 3){
				text=text+'0'
			}
			
		}else{
			if(text.length === 6 && text.slice(-1) !== '0'){
				text = text.slice(0,5)+'0'+text.slice(-1)
			}
		}
		
		this.value= text
	
	})
	
	
	// 행추가 버튼 눌렀을 시
	$j('.addRow').on('click',function(e){
		var sectionTitle = $j(this).closest('tbody').find('h3').text()
		
		
		var inputRows = $j(this).closest('tr').next().find('.inputRow')
		
		if( inputRows.length === 5 ){
			alert('더 이상 '+sectionTitle+' 정보를 추가하실 수 없습니다.')
			return
		}
		
		var rowClone = inputRows.first().clone()
				
		// 입력 필드 초기화
		rowClone.find('input[type="text"]').val('');
    	rowClone.removeClass().addClass('inputRow')
	    // 셀렉트 박스 초기 상태로 되돌리기
	    rowClone.find('select').prop('selectedIndex', 0);
	    rowClone.find('input[type="checkbox"]').prop('checked',false)
		inputRows.first().parent().append(rowClone)
	})	
	
	// 행삭제 버튼 눌렀을시
	$j('.removeRow').on('click',function(e){
		var sectionTitle = $j(this).closest('tbody').find('h3').text()
		// 전체 행 배열
		var totalRows = $j(this).closest('tr').next().find('.inputRow')
		
		// 체크된 행 배열
		var checkedRows = totalRows.filter('.checked')
		// 체크된 행이 없을시
		if(checkedRows.length === 0){
			alert('선택된 '+sectionTitle+' 정보가 없습니다.')
			return
		}
		var rowClone =null
		// 체크된 행 개수가 전체 행 개수와 같을 경우 삭제 안됨
		if(checkedRows.length === totalRows.length){
			if($j(this).closest('tbody').find('form:first').attr('id') === 'eduForm'){
			alert('더 이상 삭제하실 수 없습니다.')
			return
			}
			rowClone = totalRows.first().clone()
			// 입력 필드 초기화
			rowClone.find('input[type="text"]').val('');
	    	rowClone.removeClass().addClass('inputRow')
		    // 셀렉트 박스 초기 상태로 되돌리기
		    rowClone.find('select').prop('selectedIndex', 0);
		    rowClone.find('input[type="checkbox"]').prop('checked',false)
		}
		
		var writingInput = findWritingInput(checkedRows)
		
		if(writingInput === null){
			checkedRows.remove()
			if(rowClone){
				$j(this).closest('tbody').find('form:first').find('tbody:first').append(rowClone)
			}
			return
		}
		
		if(writingInput !== null){
			var deleteConfirm = confirm('작성중인 '+sectionTitle+' 정보가 있습니다.\n정말 삭제하시겠습니까?')
			
			if(deleteConfirm){
				checkedRows.remove()
				if(rowClone){
					$j(this).closest('tbody').find('form:first').find('tbody:first').append(rowClone)
				}
				return
			}
		}
	})
	
	// 하위요소 중에 공백값을 지닌 텍스트인풋 요소가 있으면 그 요소를 반환하고, 없으면 널을 반환하는 함수
	var findBlankInput = function(trArr){
		return findInput(trArr,isBlank=true)
	}
	
	
	// 하위 요소중 작성중인 텍스트인풋 요소를 반환하는 함수
	var findWritingInput = function(trArr){
		return findInput(trArr,isBlank=false)
	}
	
	
	var findInput = function(trArr,isBlank){
		trArr = $j(trArr)
		
		var targetInput = null
		
		trArr.each(function(){
			var textInputs = $j(this).find('input[type="text"]')
			
			textInputs.each(function(){
				
				if(isBlank && $j(this).val().trim() === ''){
					targetInput = this
					return false;
				}
				
				if(!isBlank && $j(this).val().trim() !== ''){
					targetInput = this
					return false;
				}
			})
			if(targetInput !== null){
				return false;
			}
		})
		
		return targetInput
	}
	
	

	// dom 루트에 모든 하위 체크박스 요소 클릭시 해당 테이블에 checked 속성 토글하는 함수	
	$j(document).on('click','input[type="checkbox"]',function(e){
		var checked = $j(this).prop('checked')
		var tr = $j(this).closest('.inputRow')
		
		if(checked){
			tr.addClass('checked')
		}
		if(!checked){
			tr.removeClass('checked')
		}
		return		
	})
	
	}
})

</script>
<body>

</body>
</html>