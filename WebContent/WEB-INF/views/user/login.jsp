<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/common/common.jsp"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그인 페이지</title>
</head>
<script>
$j().ready(() => {
	
	//'List' 링크 클릭시 이벤트
	$j('#toListLink').on('click',(e)=>{
		e.preventDefault()
		location.href='/board/boardList.do'
	})
	// 'Login' 링크 및 비밀번호 입력 필드에서 엔터키 누르면 submit() 함수 호출
	$j('#submitLink').on('click',(e)=>{
		e.preventDefault()
		submit()
		})
	$j('#inputPw').on('keypress',function(e){
		if(e.key === 'Enter'){
			submit()
			}
		})
	
	// 입력 필드에 입력때마다 브라우저단 유효성 검사 실행
	// --> (쓸데없는 db접근 차단)
	$j('#formTable').on('input','input[type="text"],input[type="password"]',function(){
		isInputValid(this.id)
	})	
	
	// 인풋 요소의 id 문자열을 받아서 요소의 유효성을 검사하는 함수
	function isInputValid(fieldId){
		var isValid
		
		var input = $j('#'+fieldId)
		var inputVal = input.val()
		
		// 각 인풋 요소들의 아이디에 맞는 정규표현식 이넘 초기화
		var regExpEnum = {
			inputId			:	/^[a-z0-9]{2,15}$/, 	
			inputPw 		:	/^[a-zA-Z0-9]{6,12}$/
		}
		
		// 인풋요소의 아이디를 키로 이넘값 참조하여 regExp 변수에 할당
		var regExp = regExpEnum[fieldId]
		
		// 정규식 테스트 결과에 따른 반영
		if(regExp.test(inputVal)){
			isValid = true
		}else if(!regExp.test(inputVal)){
			isValid = false
		}
		return isValid
	};	
	
	
	// '로그인' 버튼 클릭 및 비밀번호에서 엔터키 입력시 호출될 함수
	function submit(){
		// id pw 인풋요소
		var inputId = $j('#inputId')
		var inputPw = $j('#inputPw')
		
		if(inputId.val() === ''){
			alert('아이디를 입력하여 주십시오.')
			inputId.focus()
			return
		}
		if(inputPw.val()===''){
			alert('비밀번호를 입력하여 주십시오.')
			inputPw.focus()
			return
		}
		
		// formData객체에 저장
		var formData = {				
				id : inputId.val(),
				pw : inputPw.val()
			}
		
		// id, pw 각각 1차 유효성검사 미통과시 알림 표시 후 포커스
		if(!isInputValid(inputId.attr('id'))){
			alert('아이디를 올바르게 입력하여 주십시오.\n(2~15자의 영문 소문자 및 숫자)')
			inputId.focus()
			return
		}
		if(!isInputValid(inputPw.attr('id'))){
			alert('비밀번호 입력을 확인하여 주십시오.\n(6~15자의 영문 대소문자 및 숫자)')
			inputPw.focus()
			return
		}
		
		
		// 브라우저단 유효성 검사 통과하면 컨트롤러에서 검사
		$j.ajax({
			type		: "POST",
			url			: "/api/user/loginUser.do",
			data		: JSON.stringify(formData),
			contentType	: "application/json",
			success 	: function(res){
				if(res.result === 'fail'){
					if(res.msg === 'idNotFound'){
						alert('존재하지 않는 아이디입니다. 아이디 입력를 확인해주세요.')
						inputId.focus()
						return
					}
					if(res.msg === 'incorrectPw'){
						alert('비밀번호가 일치하지 않습니다. 비밀번호 입력을 확인해주세요.')
						inputPw.focus()
						return						
					}
				}else if(res.result === 'error'){
					alert('에러가 발생하였습니다. 게시판 목록으로 돌아갑니다.')
					location.href='/board/boardList.do'
				}else if(res.result === 'success'){
					alert("로그인 성공. 게시판 목록으로 돌아갑니다.")
					location.href="/board/boardList.do"				
				}
			},
			error		: function(xhr, status, error) {
	         	alert(error)
	        }
		})
	}
	
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
									id
								</td >
								<td>
									<input class="inputId" name="id" value="" id="inputId" type="text" maxlength="15"  style="height: 22px;"/>
								</td>
							</tr>
							<tr>
								<td align="center" >
									pw
								</td >
	
								<td >
									<input  id="inputPw" name="pw" type="password"  maxlength="12" autocomplete="off" style="height: 22px;"/>
								</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td align="right">
						<a href="" id="submitLink" >Login</a>
						<a href="" id="toListLink">List</a>
					</td>
				</tr>
			</tbody>
		</table>
	</form>
</body>
</html>