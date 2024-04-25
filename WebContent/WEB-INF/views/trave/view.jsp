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
tbody.traveDay tr td{
text-align:center;
white-space: nowrap; /* 텍스트 줄 바꿈 방지 */
}
button:not(:disabled):hover,
button.selected,
tr.traveRow.checked{
background-color:skyblue;
}
button:not(:disabled):hover{
cursor:pointer;
}
#traveTable{
	table-layout: fixed; 
}

td#estExpend.over-price{
color:red;
font-weight:bold;
}
</style>
<title>여행스케쥴 신청내역 조회</title>
</head>
<script>
$j(()=>{
	$j('#logoutBtn').click(e=>{
		alert('로그아웃되었습니다.\n로그인 페이지로 돌아갑니다.')
		location.href='/trave/login.do'
	})
	g_day=$j('.traveDay').eq(0)

	
	if(
			parseInt(($j('#estExpend').text()+'').replaceAll(',','')) > 
			parseInt(($j('#expend').text()+'').replaceAll(',','')) ){
		$j('#estExpend').addClass('over-price')
	}
	$j('.dayBtn').click(e=>{
		const el = $j(e.target)
		if(el.hasClass('selected')){
			return
		}
		el.addClass('selected').siblings().removeClass('selected')
		g_day=$j('.traveDay').hide().eq(el.index()).show()
	})
	$j(document).on('click','input[type="checkbox"]',e=>$j(e.target).closest('tr').toggleClass('checked'))
	
	
	$j('#modifyRequestBtn').click(e=>{
		const seq = $j('#seq').val()
		const traveSeqList = []
		const totalRows = $j('.traveRow')
		for(let i=0; i<totalRows.length; i++){
			if(totalRows[i].classList.contains('checked')){
				traveSeqList.push(seq+'-'+i)
			}
		}
		if(traveSeqList.length===0){
			alert('수정을 요청하실 일정을 선택해주세요.')
			return
		}
		const data = {
			seq : seq,
			traveSeqList : traveSeqList
		}
		
		$j.ajax({
			type			: "POST",
			url				: 	"/api/trave/view/modifyRequest.do",
			data			:	JSON.stringify(data),
			contentType		:	"application/json",
			success			:	function(res){
				if(res.result === 'success'){
					alert(traveSeqList.length+'개의 일정이 수정 요청되었습니다.')
					location.reload()
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
	
})
</script>
<body>
	<input id="seq" type="hidden" value="${c.seq }"/>
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
							<td>${c.transport}</td>
						</tr>
						<tr>
							<td align="center" >
								<b>예상 경비</b>
							</td >
							<td id="expend">${c.expend }</td>
						</tr>
						<tr>
							<td align="center" >
								<b>견적 경비</b>
							</td >
							<td id="estExpend">${c.estExpend }</td>
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
					<button id="logoutBtn" >로그아웃</button>
				</td>
			</tr>
			<tr>
				<td>
					<button class="dayBtn selected" value="1" class="selected">1</button>
					<c:forEach var="num" begin="2" end="${c.period}">
					|
					<button class="dayBtn"  value="${num }">${num }</button>
					</c:forEach>
				</td>
			</tr>
			<tr>
				<td>
					<c:choose>
						<c:when test="${c.isRequested eq 'N' }">
							 <button id="modifyRequestBtn">수정요청</button>
						</c:when>
		<%-- 				<c:otherwise>
							 <button disabled>수정요청완료</button>
						</c:otherwise> --%>
					</c:choose>
				</td>
			</tr>
			<tr>
				<td style="width:800px; text-align:center;">
					<table border="1" style="margin-left:5%; margin-right:5%;">
						<thead>
							<tr>
								<th></th>
								<th>수정요청여부</th>
								<th>시간</th>
								<th>지역<br><span>(${c.traveCity })</span></th>
								<th>장소명</th>
								<th>교통편</th>
								<th>예상이동시간</th>
								<th>이용시간</th>
								<th>이용요금</th>
								<th>계획상세</th>
								<th>교통비</th>
							</tr>
						</thead>
						<c:forEach var="day" items="${c.traveDays}" varStatus="status">
							<tbody class="traveDay" style="display:${status.index == 0 ? '' : 'none'};">
								<c:if test="${empty day }">
									<tr>
									<td colspan="10">일정이 없습니다.</td>
									</tr>
								</c:if>
								<c:forEach var="trave" items="${day}">
									<tr class="traveRow">
										<td>
											<input type="checkbox" ${c.isRequested eq 'Y' ? 'disabled' : ''}/>
										</td>
										<td>
											${trave.request eq 'M' ? 'Y' : 'N'}
										</td>
										<td>
											${trave.traveTime }
										<td>
											${trave.traveCounty }
										</td>
										<td>
											${trave.traveLoc}
										</td>
										<td>
											<c:choose>
												<c:when test="${trave.traveTrans == 'W' }">
														도보
												</c:when>
												<c:when test="${trave.traveTrans == 'B' }">
														버스
												</c:when>
												<c:when test="${trave.traveTrans == 'S' }">
														지하철
												</c:when>
												<c:when test="${trave.traveTrans == 'T' }">
														택시
												</c:when>
												<c:when test="${trave.traveTrans == 'R' }">
														렌트
												</c:when>
												<c:when test="${trave.traveTrans == 'C' }">
														자차
												</c:when>
											</c:choose>
										</td>
										<td>
											${trave.transTime }
										</td>
										<td>
											${trave.useTime}
										</td>
										<td><span>${trave.useExpend }</span>원</td>
										<td>
											${trave.traveDetail}
										</td>
										<td><span>${trave.traveFare }</span>원</td>
									</tr>												
								</c:forEach>
							</tbody>
						</c:forEach>
					</table>
		</tbody>
	</table>
	</div>
</body>
</html>