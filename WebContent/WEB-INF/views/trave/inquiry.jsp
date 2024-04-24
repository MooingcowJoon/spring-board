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
$j().ready(() => {
	var g_rules = getBasicRules()
	$j('input[type="text"]').on('input',e=>inputEraser(e,g_rules))
	
	valueFormatHandler('input','price')
	
 	var submit = function(){
		var	formData = getValidFormData($j('form'))
		if(!formData){
			return
		}
		if(formData.period<=0){
			alert('여행 기간은 최소 1일 이상 입력하셔야합니다.')
			$j('[name="period"]').focus()
			return
		}
		formData.userName 	= idFind('userName').innerText
		formData.userPhone	= idFind('userPhone').innerText
		
		console.log(formData)
		$j.ajax({
			type			: "POST",
			url				: 	"/api/trave/inquiry/submit.do",
			data			:	JSON.stringify(formData),
			contentType		:	"application/json",
			success			:	function(res){
				if(res.result === 'success'){
					alert('신청되었습니다.')
					location.href = res.redirectUrl
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
		
		}
	$j('#submitBtn').on('click',submit)
})
</script>
<body>
	<table align="center">
		<tbody>
			<tr>
				<td>
					<form>
					<table id ="formTable" border="1">
						<tr >
							<td align="center" width="100">
								<b>고객명</b>
							</td >
							<td id = "userName">${userName }</td>
						</tr>
						<tr>
							<td align="center" >
								<b>휴대폰번호</b>
							</td >
							<td id="userPhone">${userPhone }</td>
						</tr>
						<tr>
							<td align="center" >
								<b>여행 기간</b>
							</td >
							<td>
								<input type="text" name="period" maxlength="2" value=""/>
							</td>
						</tr>
						<tr>
							<td align="center" >
								<b>이동수단</b>
							</td >
							<td>
								<select name="transport">
									<option value="R">렌트</option>
									<option value="B">대중교통</option>
									<option value="C">자차</option>
								</select>
							</td>
						</tr>
						<tr>
							<td align="center" >
								<b>예상 경비</b>
							</td >
							<td>
								<input type="text" class='price' name="expend" maxlength="10" value=""/>
							</td>
						</tr>
						<tr>
							<td align="center" >
								<b>여행지</b>
							</td >
							<td>
								<select name="traveCity">
									<c:forEach var="strCity" items="${traveCities }">
									<option value="${strCity}">${strCity }</option>
									</c:forEach>
								</select>
							</td>
						</tr>
						<tr>
							<td align="center" colspan="2">
								<input id="submitBtn" type="button" value="신청"/>
							</td>
						</tr>
					</table>
					</form>
				</td>
			</tr>
		</tbody>
	</table>
</body>
</html>