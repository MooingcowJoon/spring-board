<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/trave/validation.jsp"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>여행스케쥴 신청 로그인</title>
</head>
<script>
$j(() => {
	
	var g_rules = getBasicRules()
	$j('input[type="text"]').on('input',e=>inputEraser(e,g_rules))
 	
	$j('#inputPhone').on('keypress',e=>{
	 		if( e.key === 'Enter'){
	 			submit()
	 		}
	 	})
	 	
	var submit = function(){
		var	data = getValidFormData($j('form'))
		if(!data){
			return
		}
		
		var queryParam = $j.param(data)
		location.href="/trave/inquiry.do?"+queryParam
	}
	$j('#submitBtn').on('click',submit)
	$j('#toManage').click(e=>location.href="/trave/manage.do")
	
})

</script>
<body>
	<form> 
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
									<input class="inputId" name="userName" value="" id="inputName" type="text" maxlength="5"  style="height: 22px;"/>
								</td>
							</tr>
							<tr>
								<td align="center" >
									<b>휴대폰번호</b>
								</td >
	
								<td >
									<input  id="inputPhone"   name="userPhone" type="text"  maxlength="11" autocomplete="off" style="height: 22px;"/>
								</td>
							</tr>
							<tr>
								<td align="center" colspan="2">
									<input id="submitBtn" type="button"  value="로그인"/>
									<input id="toManage" type="button"  value="관리자페이지로(테스트)"/>
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