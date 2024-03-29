<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/trave/validation.jsp"%>       
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style>
#client td{
text-align:center;
}
</style>
<title>여행스케쥴 신청내역 조회</title>
</head>
<script>
</script>
<body>
	<div class="container">
	<table align="center" >
		<tbody>
			<tr>
				<td align="center">
					<form>
					<table id ="client" border="1">
						<tr >
							<td align="center" width="100">
								<b>고객명</b>
							</td >
							<td width="200" align="center">${c.userName }</td>
						</tr>
						<tr>
							<td align="center" >
								<b>휴대폰번호</b>
							</td >
							<td>${c.userPhone }</td>
						</tr>
						<tr>
							<td align="center" >
								<b>여행 기간</b>
							</td >
							<td>${c.period }</td>
						</tr>
						<tr>
							<td align="center" >
								<b>이동수단</b>
							</td >
							<td>${c.transport }</td>
						</tr>
						<tr>
							<td align="center" >
								<b>예상 경비</b>
							</td >
							<td>${c.expend }</td>
						</tr>
						<tr>
							<td align="center" >
								<b>여행지</b>
							</td >
							<td>${c.traveCity}</td>
						</tr>
					</table>
					</form>
				</td>
			</tr>
			<tr>
				<td  style="border:none;"align="center" colspan="2">
					<input id="requestBtn" type="button" value="수정신청"/>
				</td>
			</tr>
			<tr>
				<td>
					<input type="button" value="1">
					<input type="button" value="2">
					<input type="button" value="3">
					<input type="button" value="4">
					<input type="button" value="11">
				</td>
			</tr>
			<tr>
				<td>
					<input type="button" value="수정요청">
				</td>
			</tr>
			<tr>
				<td>
					<table  border="1" style="margin-left:5%; margin-right:5%;">
						<thead>
							<tr>
								<th ></th>
								<th>시간</th>
								<th>지역</th>
								<th>장소명</th>
								<th>교통편</th>
								<th>예상이동시간</th>
								<th>이용요금(예상지출비용)</th>
								<th>계획상세</th>
								<th>교통비</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>
									<input type="checkbox"/>
								</td>
								<td>
									<input name="traveTime" type="text" value="오후 12:00 🕓"/>
								</td>
								<td>
									<select name="traveCity" >
										<option value="서울">서울</option>
										<option value="제주도">제주도</option>
									</select>
									<select name="traveCounty">
									</select>
								</td>
								<td>
									<input name="traveLoc" type="text" />
								</td>
								<td>
									<select name="traveTrans">
										<option value="W">도보</option>
										<option value="B">버스</option>
										<option value="S">지하철</option>
										<option value="T">택시</option>
										<option value="R">렌트</option>
									</select>
								</td>
								<td>
									<input name="" type="text" />
								</td>
								<td>
									<input name="" type="text" />
								</td>
								<td>
									<input name="" type="text" />
								</td>
								<td><span></span>원</td>
							</tr>												
						</tbody>
					</table>
		</tbody>
	</table>
	</div>
</body>
</html>