<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/common/common.jsp"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
th {
  text-align: center; /* 헤더 텍스트를 가운데 정렬 */
}

</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>입사지원서 작성 페이지</title>
</head>
<script>
$j().ready(() => {
	
	/* 
		프로세스
		1. 저장 또는 제출 버튼 클릭시 유효성 검사
		2. 유효성 검사 통과하면 제출하는데, 저장버튼이냐 제출버튼이냐에 따라 submit 함수 인자를 다르게 줘서 분기처리
		3. 셀렉트와 텍스트입력필드의 경우, 
			이름, 핸드폰번호 	-> readonly
			그 외 		-> 제출 이후 readonly
	*/
	

	var INPUT_RULE = 
	{
		recruitForm:
			
		{
			isEssential : true,
			birth	: 	{
					    	TYPE	: 'DATE',
					    	NAME	:	'생년월일을',
							INFO 	: '1900.01.01 ~ 2099.12.31',
							INPUT	:	/[^0-9]/g,
							SUBMIT	:	/^(19\d\d|20\d\d).(0[1-9]|1[0-2]).(0[1-9]|[12][0-9]|3[01])$/
						}, 
			email	: 	{
					    	TYPE	: 'EMAIL',
					    	NAME	:	'이메일주소를',
							INFO 	: 'aaa@aaa.aa',
							INPUT	:	/[^a-zA-Z0-9@.-]/g, 
							SUBMIT	:	/^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/
						}, 
			addr	: 	{
					    	TYPE	: 'TEXT',
					    	NAME	:	'주소를',
							INFO 	: '1 ~ 30자 이상의 문자 및 "-" 기호, 띄어쓰기',
							INPUT	:	/[^a-zA-Z0-9ㄱ-ㅎㅏ-ㅣ가-힣-\s-]/g,
							SUBMIT	:	/[0-9a-zA-Z가-힣-\s-]{1,30}$/ 
						},
			
		},
		eduForm:
			{
			isEssential : true,
				startPeriod	:{
								TYPE	:	'DATE',
								NAME	:	'시작연월을',
								INFO	:	'1900.01 ~ 2099.12',
								INPUT	: 	/[^0-9]/g, 
								SUBMIT	:	/^(19\d\d|20\d\d).(0[1-9]|1[0-2])$/
							},
				endPeriod	:{
								TYPE	:	'DATE',
								NAME	:	'종료연월을',
								INFO	:	'1900.01 ~ 2099.12',
								INPUT	:	/[^0-9]/g, 
								SUBMIT	:	/^(19\d\d|20\d\d).(0[1-9]|1[0-2])$/
							},
				schoolName	:{
						    	TYPE	: 'TEXT',
						    	NAME	:	'학교명을',
								INFO 	: '1 ~ 30자 이상의 완성형 숫자, 문자 및 "-" 기호, 띄어쓰기',
								INPUT	:	/[^a-zA-Z0-9ㄱ-ㅎㅏ-ㅣ가-힣-\s-]/g, 
								SUBMIT	:	/[0-9a-zA-Z가-힣-\s-]{1,30}$/ 
							},
				major		:{
								TYPE	: 'TEXT',
								NAME	:'전공명을',
								INFO 	: '1 ~ 30자 이상의 완성형 숫자, 문자 및 "-" 기호, 띄어쓰기',
								INPUT	:	/[^a-zA-Z0-9ㄱ-ㅎㅏ-ㅣ가-힣-\s-]/g, 
								SUBMIT	:	/[0-9a-zA-Z가-힣-\s-]{1,30}$/ 
							},
				grade		:{
								TYPE	: 'GRADE',
								NAME	:	'평균학점을',
								INFO 	: "'3.2', '3.65' 등의",						
								INPUT	:	/[^0-9.]/g,
								SUBMIT	:	/^\d{1}\.\d{1,2}$/
							}
			},
		carForm:
				{
			isEssential : false,
				startPeriod	:{
								TYPE	:	'DATE',
								NAME	:	'시작연월을',
								INFO	:	'1900.01 ~ 2099.12',
								INPUT	: 	/[^0-9]/g, 
								SUBMIT	:	/^(19\d\d|20\d\d).(0[1-9]|1[0-2])$/
				},
				endPeriod	:{
								TYPE	:	'DATE',
								NAME	:	'종료연월을',
								INFO	:	'1900.01 ~ 2099.12',
								INPUT	:	/[^0-9]/g, 
								SUBMIT	:	/^(19\d\d|20\d\d).(0[1-9]|1[0-2])$/
							},
				compName	:{
								TYPE	: 'TEXT',
								NAME	:	'회사명을',
								INFO 	: '1 ~ 30자 이상의 완성형 숫자, 문자 및 "-" 기호, 띄어쓰기',
								INPUT	:	/[^a-zA-Z0-9ㄱ-ㅎㅏ-ㅣ가-힣-\s-]/g, 
								SUBMIT	:	/[0-9a-zA-Z가-힣-\s-]{1,30}$/ 
							},
 				task		:{
			 					TYPE	: 'TEXT',
			 					NAME	:	'부서/직급/직책을',
								INFO 	: '1 ~ 30자 이상의 완성형 숫자, 문자 및 "-" 기호, 띄어쓰기',
								INPUT	:	/[^a-zA-Z0-9ㄱ-ㅎㅏ-ㅣ가-힣-\s-]/g, 
								SUBMIT	:	/[0-9a-zA-Z가-힣-\s-]{1,30}$/ 
							},
				location	:{
								TYPE	: 'TEXT',
								NAME	:	'근무지의 지역을',
								INFO 	: '1 ~ 30자 이상의 완성형 숫자, 문자 및 "-" 기호, 띄어쓰기',
								INPUT	:	/[^a-zA-Z0-9ㄱ-ㅎㅏ-ㅣ가-힣-\s-]/g, 
								SUBMIT	:	/[0-9a-zA-Z가-힣-\s-]{1,30}$/ 
							}
				},
 		certForm:
			{
 			isEssential : false,
				qualifiName	:{
								TYPE	: 'TEXT',
								NAME	:	'자격증명을',
								INFO 	: '1 ~ 30자 이상의 완성형 숫자, 문자 및 "-" 기호, 띄어쓰기',
								INPUT	:	/[^a-zA-Z0-9ㄱ-ㅎㅏ-ㅣ가-힣-\s-]/g, 
								SUBMIT	:	/[0-9a-zA-Z가-힣-\s-]{1,30}$/ 
							},
				acquDate	:{
								TYPE	:	'DATE',
								NAME	:	'자격증 취득일을',
								INFO	:	'1900.01 ~ 2099.12',
								INPUT	:	/[^0-9]/g, 
								SUBMIT	:	/^(19\d\d|20\d\d).(0[1-9]|1[0-2])$/
							},
				organizeName	:{
								TYPE	: 'TEXT',
								NAME	:	'자격증 발행처를',
								INFO 	: '1 ~ 30자 이상의 완성형 숫자, 문자 및 "-" 기호, 띄어쓰기',
								INPUT	:	/[^a-zA-Z0-9ㄱ-ㅎㅏ-ㅣ가-힣-\s-]/g, 
								SUBMIT	:	/[0-9a-zA-Z가-힣-\s-]{1,30}$/
							}
		}
	}
	var getInputRuleByInput = function(input){
				var sectionName = $j(input).closest('form').attr('class')
				var inputName = input.name
				return INPUT_RULE[sectionName][inputName]
				
			}
	
	
			
			
	// 텍스트 입력필드에 입력값 입력시 제한된 입력 막는 기능과,
	// 날짜 필드에 숫자 입력시 '.' 자동으로 추가해주는 기능 
	$j(document).on('input','input[type="text"]',function(e){
		var sectionName = $j(this).closest('form').attr('class')
		var inputName = this.name
		
		var rule = INPUT_RULE[sectionName][inputName]
		
		var regExp = rule.INPUT
		
	    if (regExp.test(this.value)) {
	    	this.value = this.value.replace(regExp, '');
	    }
		
		if(rule.TYPE === 'DATE'){
			var text = this.value.replaceAll('.','')
			if(text.length > 6 ){
				text  = text.slice(0,4)+'.'+text.slice(4,6)+'.'+text.slice(6)
			}else if(text.length > 4){
				text  = text.slice(0,4)+'.'+text.slice(4)
			}
			this.value=text
		}
		
	})
	// 미입력값 부분의 유효성 체크해주는 함수
	var isFormComplete = function(form){
		var isEssential = INPUT_RULE[form.className]['isEssential']
		var nullInput = null

		var inputs = $j(form).find('input[type="text"]')
		
		for(var i=0; i<inputs.length; i++){
			if(inputs[i].value.trim() === '' && !nullInput){
				nullInput = inputs[i];
			}else{
				isEssential = true
			}
		}
		return isEssential? nullInput : null
		}
		
	// 유효값 안맞는 요소 있을시 해당 요소와 메시지로 이루어진 response 객체 반환
 	var isFormValid = function(form){
		var invalidInput = null
		
		var inputs = $j(form).find('input[type="text"]:not([readonly])')
		
		for(var i=0; i<inputs.length; i++){
			var input 	=	inputs[i]
			var regEx = getInputRuleByInput(input)['SUBMIT']
			
			if(!regEx.test(input.value)){
				invalidInput = input
				return invalidInput
				}
			}
		return invalidInput
		}
	
	// 폼들 받아서 입력값 순차적으로 처리해주는 함수
	function inputChecker(formsToCheck){
		var result = {
				invalidInput :null,
				msg :''
		}
		for(var i = 0; i<formsToCheck.length; i++){
			 
			var nullInput = isFormComplete(formsToCheck[i])
			if(nullInput){
				alert(getInputRuleByInput(nullInput)['NAME']+' 입력하셔야 합니다.')
				nullInput.focus()
				result = 
			}
			var invalidInput = isFormValid(formsToCheck[i])
			if(invalidInput){
				alert(getInputRuleByInput(invalidInput)['INFO']+'\n형식으로 입력하셔야 합니다.')
				invalidInput.focus()
				return
				}
			}
	}
	
				
	// 저장 기능 함수
	var save = function(){
		var recruitForms_Unchecked = $j('.recruitForm')
		var eduForms_Unchecked	=	$j('.eduForm')
		var carForm_Unchecked 	=	$j('.carForm')
		var certForm_Unchecked 	=	$j('.certForm')
		
		formsToCheck= []
		formsToCheck.push(...recruitForms_Unchecked.get()
							,...eduForms_Unchecked.get()
							,...carForm_Unchecked.get()
							,...certForm_Unchecked.get())
							
		
		
		recruitForm=seriForm(recruitForms_Unchecked.get(0))
		
		var eduForms = eduForms_Unchecked.map((index,eduForm)=>{
			eduForm=seriForm(eduForm)
			eduForm["eduSeq"]=index
			return eduForm
		})
		var carForms = carForm_Unchecked.map((index,carForm)=>{
			carForm=seriForm(carForm)
			carForm["carSeq"]=index
			return carForm
		})
		var certForms = certForm_Unchecked.map((index,certForm)=>{
			certForm=seriForm(certForm)
			certForm["certSeq"]=index
			return certForm
		})
		
		recruitForm['educationList']=eduForms.get()
		recruitForm['careerList']=carForms.get()
		recruitForm['certificateList']=certForms.get()

		console.log(recruitForm)
		
		$j.ajax({
			type			: 	"POST",
			url				: 	"/api/recruit/main/submit.do",
			data			:	JSON.stringify(recruitForm),
			contentType		:	"application/json",
			success			:	function(res){
				console.log(res.msg)
			},
			error			:	function(res){
				console.log(res)
			}
		})
		
	}
	
	
	//저장 버튼 눌렀을시
	$j('#saveBtn').on('click',function(e){
		e.preventDefault()
		save()
		
	})
	
	// 행추가 버튼 눌렀을 시
	$j('.addRow').on('click',function(e){
		var sectionTitle = $j(this).closest('tbody').find('h3').text()
		var inputRows = $j(this).closest('tbody').children('.inputRow')
		if( inputRows.length === 5 ){
			alert('더 이상의 '+sectionTitle+' 정보를 추가하실 수 없습니다.')
			return
		}
		
		var rowClone = $j(this).closest('tr').next().clone()
		
		// 입력 필드 초기화
		rowClone.find('input[type="text"]').val('');
    	rowClone.removeClass().addClass('inputRow')
	    // 셀렉트 박스 초기 상태로 되돌리기
	    rowClone.find('select').prop('selectedIndex', 0);
	    rowClone.find('input[type="checkbox"]').prop('checked',false)
		$j(this).closest('tbody').append(rowClone)
	})
	
	// 행삭제 버튼 눌렀을시
	$j('.removeRow').on('click',function(e){
		var sectionTitle = $j(this).closest('tbody').find('h3').text()
		// 체크된 행 배열
		var totalRows = $j(this).closest('tbody').children('.inputRow')
		
		// 전체 행 배열
		var checkedRows = totalRows.filter('.checked')
		// 체크된 행이 없을시
		if(checkedRows.length === 0){
			alert('선택된 '+sectionTitle+' 정보가 없습니다.')
			return
		}
		
		// 체크된 행 개수가 전체 행 개수와 같을 경우 삭제 안됨
		if(checkedRows.length === totalRows.length){
			alert('더 이상 삭제하실 수 없습니다.')
			return
		}
		
		var writingInput = findWritingInput(checkedRows)
		
		if(writingInput === null){
			checkedRows.remove()
			return
		}
		
		if(writingInput !== null){
			var deleteConfirm = confirm('작성중인 '+sectionTitle+' 정보가 있습니다.\n정말 삭제하시겠습니까?')
			
			if(deleteConfirm){
				checkedRows.remove()
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
	
	
	// 폼 직렬화 함수
	var seriForm= function(form){
	    var formDataArray = {};
	    form=$j(form)
	    // 폼 내의 모든 입력 요소를 순회하며 이름과 값을 배열에 추가
	    form.find('input[type="text"], select, textarea').each(function() {
	        var name = $j(this).attr('name');
	        var value = $j(this).val().trim();
	       	formDataArray[name]=value
	    });
	    
	    return formDataArray;
	}
	// dom 루트에 모든 하위 체크박스 요소 클릭시 해당 테이블에 checked 속성 토글하는 함수	
	$j(document).on('click','input[type="checkbox"]',function(e){
		var checked = $j(this).prop('checked')
		var tr = $j(this).closest('table').closest('tr')
		
		if(checked){
			tr.addClass('checked')
		}
		if(!checked){
			tr.removeClass('checked')
		}
		return		
	})
})

</script>
<body >
	<h2 align="center">입사 지원서</h2>
	<table align="center">
		<tbody>
			<tr>
				<td >
					<table id ="formTable" border="1" width="900">
						<tr class="inputRow">
							<td style="border:none;" align="center">
							<form class="recruitForm">
								<table border="1" >
									<tr>
										<td align="center" width="90"><b>이름</b>
										</td>
										<td>
											<input name="name" type="text" readonly value="${r.name}">
										</td>
										<td align="center" width="90"><b>생년월일</b>
										</td>
										<td>
											<input name="birth" maxlength="10" type="text"  value="${r.birth}">
										</td>
									</tr>
									<tr>
										<td align="center"><b>성별</b>
										</td>
										<td>
											<select name="gender">
												<option <c:if test ="${'남자' eq r.gender}">selected</c:if> value="남자">남자
												</option>
												<option <c:if test ="${'여자' eq r.gender}">selected</c:if> value="여자">여자
												</option>
											</select>
										</td>
										<td align="center"><b>연락처</b>
										</td>
										<td>
											<input name="phone" type="text" readonly value="${r.phone}">
										</td>
									</tr>
									<tr>
										<td align="center"><b>email</b>
										</td>
										<td>
											<input name="email" type="text"  value="${r.email}">
										</td>
										<td align="center"><b>주소</b>
										</td>
										<td>
											<input name="addr" type="text"  value="${r.addr}">
										</td>
									</tr>
									<tr>
										<td align="center"><b>희망근무지</b>
										</td>
										<td>
											<select name="location">
												<option <c:if test ="${'서울' eq r.location}">selected</c:if> value="서울">서울
												</option>
												<option <c:if test ="${'경기' eq r.location}">selected</c:if> value="경기">경기
												</option>
												<option <c:if test ="${'충청' eq r.location}">selected</c:if> value="충청">충청
												</option>
												<option <c:if test ="${'강원' eq r.location}">selected</c:if> value="강원">강원
												</option>
												<option <c:if test ="${'전라' eq r.location}">selected</c:if> value="전라">전라
												</option>
												<option <c:if test ="${'경상' eq r.location}">selected</c:if> value="경상">경상
												</option>
												<option <c:if test ="${'제주' eq r.location}">selected</c:if> value="제주">제주
												</option>
											</select>
										</td>
										<td align="center"><b>근무형태</b></td>
										<td>
											<select name="workType">
												<option <c:if test ="${'계약직' eq r.workType}">selected</c:if> value="계약직">
													계약직
												</option>
												<option <c:if test ="${'정규직' eq r.workType}">selected</c:if> value="정규직">
													정규직
												</option>
											</select>
										</td>
									</tr>
								</table>
							</form>
							</td>
						</tr>
						<tr>
							<td align="center" style="border:none;">
								<table border="1" width="750">
									<thead>
										<tr>
											<th>
												학력사항
											</th>
											<th>
												경력사항
											</th>
											<th>
												희망연봉
											</th>
											<th>
												희망근무지/근무형태
											</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td align="center">
												대학교 재학
											</td>
											<td align="center">
												0년 2개월
											</td>
											<td align="center">
												회사내규에 따름
											</td>
											<td align="center">
												회사내규에 따름
											</td>
										</tr>
									</tbody>
								</table>
							</td>
						</tr>
						<tr id="educationRow">
							<td style="border:none;">
								<table width="100%">
									<tr>
										<td style="border:none;">
											<h3>학력</h3>
										</td>
									</tr>
									<tr>
										<td align="right" style="border:none;">
											<input class="addRow" id="btn-add-edu" type="button" value="추가">
											<input class="removeRow" type="button" value="삭제">
										</td>
									</tr>
									<c:forEach var="edu" items="${eduList}" >
									<tr class="inputRow">
										<td align="center" >
										<form class="eduForm">
											<table border="1"  width="780">
												<thead>
													<tr>
														<th>
														</th>
														<th>
															재학기간
														</th>
														<th>
															구분
														</th>
														<th>
															학교명(소재지)
														</th>
														<th>
															전공
														</th>
														<th>
															학점
														</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td align="center">
															<input type="checkbox"/>
														</td>
														<td align="center">
															<input name="startPeriod" maxlength="7" type="text" value="${edu.startPeriod}"/>
															<br/>
															~
															<input name="endPeriod" maxlength="7"  type="text" value="${edu.endPeriod}"/>
														</td>
														<td align="center">
															<select name="division">
																<option value="재학" <c:if test ="${'재학' eq edu.division}">selected</c:if>>재학</option>
																<option value="중퇴" <c:if test ="${'중퇴' eq edu.division}">selected</c:if>>중퇴</option>
																<option value="졸업" <c:if test ="${'졸업' eq edu.division}">selected</c:if>>졸업</option>
															</select>
														</td>
														<td >
															<input name="schoolName" type="text" value="${edu.schoolName }"/>
															<select name="location">
																<option <c:if test ="${'서울' eq edu.location}">selected</c:if> value="서울">서울
																</option>
																<option <c:if test ="${'경기' eq edu.location}">selected</c:if> value="경기">경기
																</option>
																<option <c:if test ="${'충청' eq edu.location}">selected</c:if> value="충청">충청
																</option>
																<option <c:if test ="${'강원' eq edu.location}">selected</c:if> value="강원">강원
																</option>
																<option <c:if test ="${'전라' eq edu.location}">selected</c:if> value="전라">전라
																</option>
																<option <c:if test ="${'경상' eq edu.location}">selected</c:if> value="경상">경상
																</option>
																<option <c:if test ="${'제주' eq edu.location}">selected</c:if> value="제주">제주
																</option>
															</select>
														</td>
														<td align="center">
															<input type="text" maxlength="30" name="major" value="${edu.major}"/>
														</td>
														<td align="center">
															<input type="text" maxlength="4" name="grade" value="${edu.grade }"/>
														</td>
													</tr>
												</tbody>
											</table>
										</form>
										</td>
									</tr>
								</c:forEach>
								</table>
							</td>
						</tr>
						<tr id="careerRow">
							<td style="border:none;">
								<table width="100%">
									<tr>
										<td style="border:none;">
											<h3>경력</h3>
										</td>
									</tr>
									<tr>
										<td align="right" style="border:none;">
											<input class="addRow" type="button" value="추가">
											<input class="removeRow"type="button" value="삭제">
										</td>
									</tr>
									<c:forEach var="car" items="${carList}">
									<tr class="inputRow">
										<td align="center" >
											<form class="carForm">
											<table  border="1" width="780">
												<thead>
													<tr>
														<th>
														</th>
														<th>
															근무기간
														</th>
														<th>
															회사명
														</th>
														<th>
															부서/직급/직책
														</th>
														<th>
															지역
														</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td >
															<input type="checkbox"/>
														</td>
														<td >
															<input  name="startPeriod" maxlength="7"  type="text" value="${car.startPeriod}"/>
															<br/>
															~
															<br/>
															<input type="text" maxlength="7"  name="endPeriod" value="${car.endPeriod}" />
														</td>
														<td >
															<input name="compName" maxlength="30" type="text" value="${car.compName }"/>
														</td>
														<td >
															<input name="task" maxlength="30" type="text" value="${car.task }"/>
														</td>
														<td >
															<input name="location" maxlength="30" type="text" value="${car.location }"/>
														</td>
													</tr>
												</tbody>
											</table>
											</form>
										</td>
									</tr>
								</c:forEach>
								</table>
							</td>
						</tr>
						<tr id="certificateRow">
							<td style="border:none;">
								<table width="100%" >
									<tr>
										<td style="border:none;">
											<h3>자격증</h3>
										</td>
									</tr>
									<tr>
										<td align="right" style="border:none;">
											<input class="addRow" type="button" value="추가">
											<input class="removeRow"type="button" value="삭제">
										</td>
									</tr>
									<c:forEach var="cert" items="${certList}">
									<tr class="inputRow">
										<td align="center">
										<form class="certForm">
											<table  width="780" border="1">
												<thead>
													<tr>
														<th>
														</th>
														<th>
															자격증명
														</th>
														<th>
															취득일
														</th>
														<th>
															발행지
														</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td >
															<input type="checkbox"/>
														</td>
														<td >
															<input name="qualifiName" maxlength="30" type="text" value="${cert.qualifiName }"/>
														</td>
														<td >
															<input name="acquDate" maxlength="7"  type="text" value="${cert.acquDate }"/>
														</td>
														<td >
															<input name="organizeName" maxlength="30" type="text" value="${cert.organizeName }"/>
														</td>
													</tr>
												</tbody>
											</table>
										</form>
										</td>
									</tr>
									</c:forEach>
								</table>
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td align="center">
					<input id="saveBtn" type="button" value="저장"/>
					<input id="submitBtn" type="button" value="제출"/>
				</td>
			</tr>
		</tbody>
	</table>
</body>
</html>