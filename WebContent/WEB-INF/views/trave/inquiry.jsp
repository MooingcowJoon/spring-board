<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/common/common.jsp"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>여행스케쥴 신청 로그인</title>
</head>
<script>
$j().ready(() => {

	// 
	$j('#inputPhone').on('keypress',function(e){
		if(e.key === 'Enter'){
			submit()
			}
		})
	
	// 입력 필드에 입력때마다 브라우저단 유효성 검사 실행
	$j('input').on('input',function(e){
		var regExpEnum = {
				inputName		:	/[^ㄱ-ㅎㅏ-ㅣ가-힣]/g, 	
				inputPhone 		:	/[^0-9]/g,
			}
		var regExp = regExpEnum[this.id]
		if(regExp.test(this.value)){
			this.value=this.value.replaceAll(regExp,'')
		}
	})	
	
	// 인풋 요소의 id 문자열을 받아서 요소의 유효성을 검사하는 함수
	function isInputValid(input){
				
		// 각 인풋 요소들의 아이디에 맞는 정규표현식 이넘 초기화
		var regExpEnum = {
			inputName		:	/[가-힣]{2,5}$/g, 	
			inputPhone 		:	/[0-9]{10,11}$/g
		}
		
		// 인풋요소의 아이디를 키로 이넘값 참조하여 regExp 변수에 할당
		var regExp = regExpEnum[input.id]
		var val = input.value
		
		// 정규식 검사 결과 반환
		return regExp.test(val)
	};	
	
	
	// '로그인' 버튼 클릭 및 비밀번호에서 엔터키 입력시 호출될 함수
	function submit(){
		// id pw 인풋요소
		var inputName = idFind('inputName')
		var inputPhone = idFind('inputPhone')
		
		if(inputName.value === ''){
			alert('이름을 입력하여 주십시오.')
			inputName.focus()
			return
		}
		if(inputPhone.value===''){
			alert('휴대폰번호를 입력하여 주십시오.')
			inputPhone.focus()
			return
		}
		
		
		// 이름, 휴대폰번호 각각 1차 유효성검사 미통과시 알림 표시 후 포커스
		if(!isInputValid(inputName)){
			alert('이름을 올바르게 입력하여 주십시오.\n(2~5자의 완성형 한글)')
			inputName.focus()
			return
		}
		if(!isInputValid(inputPhone)){
			alert('휴대폰번호 입력을 확인하여 주십시오.\n(10~11자의 숫자)')
			inputPhone.focus()
			return
		}
		
		
		// formData객체에 저장
		var formData = {				
				name : inputName.value,
				phone : inputPhone.value
			}
		// 브라우저단 유효성 검사 통과하면 컨트롤러에서 검사
		$j.ajax({
			type		: "POST",
			url			: "/api/recruit/login.do",
			data		: JSON.stringify(formData),
			contentType	: "application/json",
			success 	: function(res){
				if(res.result === 'error'){
					alert(res.msg)
					return
				}
				
				if(res.result === 'success'){
					location.href=res.redirectUrl
				}
			},
			error		: function(xhr, status, error) {
	         	alert(error)
	        }
		})
	}
	
	$j('#submitBtn').on('click',submit)
	
})

</script>
<body>
	<form > 
		<table align="center">
			<tbody>
				<tr>
					<td>
						<table id ="formTable" border="1">
							<tr >
								<td align="center" width="120">
									<b>이름</b>
								</td >
								<td>
									<input class="inputId" name="name" value="" id="inputName" type="text" maxlength="5"  style="height: 22px;"/>
								</td>
							</tr>
							<tr>
								<td align="center" >
									<b>휴대폰번호</b>
								</td >
	
								<td >
									<input  id="inputPhone" name="phone" type="text"  maxlength="11" autocomplete="off" style="height: 22px;"/>
								</td>
							</tr>
							<tr>
								<td align="center" colspan="2">
									<input id="submitBtn" type="button" value="입사지원"/>
								</td>
							</tr>
						</table>
					</td>
				</tr>
			</tbody>
		</table>
	</form>
</body>
</html>