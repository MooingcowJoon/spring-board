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
	$j('#btn-submit').on('click',()=>{
		$j.ajax({
			type		: "POST",
			url			: "/api/user/join/submit.do",
			data		: JSON.stringify(formData),
			contentType	: "application/json",
			success 	: function(res){
				if(res.result === 'success'){
					alert("회원가입 성공. 게시판 목록으로 돌아갑니다.")
					location.href="/board/boardList.do"
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
								<td align="center" width="120" rowspan="2">
									id
								</td >
								<td>
									<input class="inputId" name="id" value="" id="inputId" type="text" maxlength="15"  style="height: 22px;"/>
								</td>
							</tr>
							<tr>
								<td style="border:none;" align="center">
									<span id="inputIdSpan">
										<b>
										2 ~ 15</b> 자의 
										<b>
										영문 소문자/숫자
										</b>
									</span>
								</td>
							</tr>
							<tr >
								<td align="center"  rowspan="2">
									pw
								</td >
	
								<td >
									<input  id="inputPw" name="pw" type="password"  autocomplete="off" style="height: 22px;"/>
								</td>
							</tr>
							<tr>
								<td style="border:none;" align="center">
									<span id="inputPwSpan">
										<b>
										6 ~ 12
										</b>자의 
										<b>
										영문 대소문자/숫자
										</b>
									</span>
								</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td align="right">
						<input type="button" id="btn-submit" value="로그인"/>
					</td>
				</tr>
			</tbody>
		</table>
<!-- 	</form> -->
</body>
</html>