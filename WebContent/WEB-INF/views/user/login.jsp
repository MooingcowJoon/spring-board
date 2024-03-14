<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/common/common.jsp"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style>
span{
font-size: 0.7em; /* 조금 작게 만들기 */
}
span.fail {
    color: red; /* 빨간색 텍스트 */
}
span.pass {
    color: green; /* 초록색 텍스트 */
}
</style>
<title>로그인 페이지</title>
</head>
<script>
$j().ready(() => {
	$j('#submitBtn').on('click',()=>{
		var inputId = $j('#inputId')
		var inputPw = $j('#inputPw')
		
		var formData = {				
				id : inputId.val(),
				pw : inputPw.val()
			}
		
		if(formData.inputId === ''){
			alert('아이디 입력을 확인하여 주십시오.')
			inputId.focus()
			return
		}
		if(formData.inputPw === ''){
			alert('비밀번호 입력을 확인하여 주십시오.')
			inputPw.focus()
			return
		}
		
		$j.ajax({
			type		: "POST",
			url			: "/api/user/login/authenticateUser.do",
			data		: JSON.stringify(formData),
			contentType	: "application/json",
			success 	: function(res){
				if(res.result === 'success'){
					
					if(res.login === 'idNotFound'){
						alert('존재하지 않는 아이디입니다. 아이디 입력를 확인해주세요.')
						inputId.focus()
						return
					}else if(res.login === 'incorrectPw'){
						alert('비밀번호가 일치하지 않습니다. 비밀번호 입력을 확인해주세요.')
						inputPw.focus()
						return
					}else if(res.login === 'success'){
						alert("로그인 성공. 게시판 목록으로 돌아갑니다.")
						location.href="/board/boardList.do"
					}
				}else if(res.result === 'error'){
					alert('에러가 발생하였습니다.')
				}
			},
			error		: function(xhr, status, error) {
	         	alert(error)
	        }
		})
	})
})
</script>
<body>
<!-- 	<form> -->
		<table align="center">
			<tbody>
				<tr>
					<td>
						<table id ="formTable" border="1">
							<tr >
								<td align="center" width="120" >
									id
								</td >
								<td>
									<input class="inputId" name="id" value="" id="inputId" type="text" maxlength="15"  style="height: 22px;"/>
								</td>
							</tr>
							<tr >
								<td align="center" >
									pw
								</td >
	
								<td >
									<input  id="inputPw" name="pw" type="password"  autocomplete="off" style="height: 22px;"/>
								</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td align="right">
						<input type="button" id="submitBtn" value="로그인"/>
					</td>
				</tr>
			</tbody>
		</table>
<!-- 	</form> -->
</body>
</html>