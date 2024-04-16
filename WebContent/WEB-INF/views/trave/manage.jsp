<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/trave/validation.jsp"%>       
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style>
td{
text-align:center;
}
th{text-align:center;}

tr.clientRow:hover,
tr.clientRow.selected,
button.dayBtn:hover,
button.dayBtn.selected,
tr.traveRow.checked{
background-color:skyblue;
}

button.dayBtn,
table#clientTable{
cursor:pointer;
}

</style>
<title>여행 일정 관리</title>
</head>
<%@include file="time_input.jsp"%>   
<script>
$j(()=>{
	let g_client
	let g_day
	const g_traveDayClone = $j('#traveList tbody:first').clone().empty()
	const g_traveRowClone = $j('.traveRow:first').clone()
	$j('#traveList tbody').remove()
	
	
	const removeRow = ()=>{
		const totalRows = g_day.children()
		const checkedRows = totalRows.filter((i,el)=>el.classList.contains('checked'))
		const t = totalRows.length
		const c = checkedRows.length
		const dayText = g_day.index()
		if(c===0){
			alert('['+dayText+'일차] 일정 중 선택된 일정이 없습니다.')
		}else if(c<t){
			alert('['+dayText+'일차] 일정 중 선택된 일정이 삭제되었습니다.')
			checkedRows.remove()
		}else if (c===t){
			g_day.append(generateTraveRow())
			checkedRows.remove()
			alert('['+dayText+'일차] 일정이 초기화 되었습니다.')
		}
		
	}
	
	$j('#traveList').on('click','input[type="checkbox"]',e=>$j(e.target).closest('tr').toggleClass('checked'))
	
	$j('#addRowBtn').click(e=>g_day.append(generateTraveRow()))
	$j('#removeRowBtn').click(e=>removeRow())
	
	const generateTraveRow = trave=>{
		const clone = g_traveRowClone.clone()
		if(trave){
			for(let key in trave){
				clone.find('[name='+key+']:first').val(trave[key])
			}
		}						
		return clone
	} 
	
	var initPage = ()=>selectRow($j('.clientRow:first'))
	$j('.clientRow').click(e=>selectRow($j(e.target).parent()))
	$j('#dayBtnContainer').on('click','button',e=>daySelect($j(e.target).index()+1))
	var selectRow = $row => {
		g_client && g_client.toggleClass('selected')
		const seq = (g_client= $row.toggleClass('selected')).data('seq')
		fetchClient(seq)
	}
	var daySelect = dayNum => {
		const idx = dayNum - 1
		$j('.dayBtn').removeClass('selected').eq(idx).addClass('selected')
		g_day = $j('#traveList tbody').hide().eq(idx).show()
	}
	
	var fetchClient = function(seq){
		fetch("/api/trave/manage/fetchClient.do?seq="+seq)
		.then(res=>res.json())
		.then(json=>{
			console.log(json.result)
			generateTable(JSON.parse(json.data))
			daySelect(1)
		})
		.catch(error=>console.error('Error :',error))
	}
	
	/* c= ClientVo json*/
	const generateTable= c=>{
		const traveDays = c['traveDays']
		const dayBtns = $j('#dayBtnContainer').empty()
		const dayBtnHtml = dayNo =>`<button class="dayBtn">`+dayNo+`</button>`
		let html = dayBtnHtml(1)
		for(let i=2; i<traveDays.length+1; i++){
			html+= ' | '+dayBtnHtml(i)
		}
		html=html.slice(0,-1)
		dayBtns.append(html)
		
		const formTable = $j('#traveList').children(':first')
		formTable.find('tbody').remove()
		for (let i = 0; i<traveDays.length; i++){
			const day = g_traveDayClone.clone().appendTo(formTable)
			const list = traveDays[i]
			for (let j=0; j<list.length; j++){
				day.append(generateTraveRow(list[j]))
			}
			if(day.children().length===0){
				day.append(generateTraveRow())
			}
		}
	}
	initPage()
	
})
</script>
<body>
	<table align="center" >
		<tbody>
			<tr>
				<td align="center">
					<table align="center" id ="clientTable" border="1">
						<thead>
							<tr>
								<th>고객명</th>
								<th>휴대폰번호</th>
								<th>여행지</th>
								<th>여행 기간</th>
								<th>이동수단</th>
								<th>예상 경비</th>
								<th>견적 경비</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="c" items="${clientList}">
								<tr class="clientRow" data-seq ="${c.seq }">
									<td>${c.userName }</td>
									<td>${c.userPhone }</td>
									<td>${c.traveCity}</td>
									<td>${c.period }</td>
									<td transport="${c.transport}">${c.transport eq 'R' ? '렌트' : (c.transport eq 'C' ? '자차' : '대중교통') }</td>
									<td>${c.expend }</td>
									<td class="estimated"></td>
								</tr>
							</c:forEach>						
						</tbody>
					</table>
			<tr>
				<td style="text-align:left;" id="dayBtnContainer" >
				</td>
			</tr>
			<tr>
				<td  style="text-align:left;" >
					<button id="addRowBtn">추가</button>
					|
					<button id="removeRowBtn" >삭제</button>
				</td>
			</tr>
			<tr>
				<td>
					<form id="traveList">
					<table  border="1" style="margin-left:5%; margin-right:5%;">
						<thead>
							<tr>
								<th></th>
								<th>시간</th>
								<th>지역</th>
								<th>장소명</th>
								<th>교통편</th>
								<th>예상이동시간</th>
								<th>예상이용시간</th>
								<th>이용요금(예상지출비용)</th>
								<th>계획상세</th>
								<th>교통비</th>
							</tr>
						</thead>
						<tbody>
							<tr class="traveRow">
								<td>
									<input type="checkbox"/>
								</td>
								<td>
									<input name="traveTime" data-val="오후:0:0"  type="text" value="오후 12:00 🕓" />
								<td><span>서울</span>
								<!-- 	<select name="traveCity" >
										<option value="서울">서울</option>
										<option value="제주도">제주도</option>
									</select> -->
									<select name="traveCounty">
	<!-- 								<option>
										강북
									</option>
									<option>
										강서
									</option>
									<option>
										강남
									</option>
									<option>
										강동
									</option> -->
									</select>
									
								</td>
								<td>
									<input name="traveLoc" type="text" />
								</td>
								<td>
									<select name="traveTrans">
<!-- 										<option value="W">도보</option> -->
<!-- 										<option value="B">버스</option> -->
<!-- 										<option value="S">지하철</option> -->
<!-- 										<option value="T">택시</option> -->
<!-- 										<option value="R">렌트</option> -->
									</select>
								</td>
								<td>
									<input name="transTime" type="text" />
								</td>
								<td>
									<input name="useTime" type="text" />
								</td>
								<td>
									<input name="useExpend" type="text" />
								</td>
								<td>
									<input name="traveDetail" type="text" />
								</td>
								<td><span></span>원</td>
							</tr>												
						</tbody>

					</table>
					</form>
					<tr>
						<td align="center">
							<button id="submitBtn" >저장</button>
						</td>
					</tr>
		</tbody>
	</table>
</body>
</html>