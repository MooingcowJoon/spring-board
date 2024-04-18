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
<%@include file="/res/js/trave/manage/time_input.jsp"%>   

<script>
$j(()=>{
	let g_client
	let g_day
	const g_traveDayClone = $j('#traveList tbody:first').clone().empty()
	const g_traveRowClone = $j('.traveRow:first').clone()
	$j('#traveList tbody').remove()
	let g_traveCities = null
		
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
	

	
	const initPage = ()=>selectRow($j('.clientRow:first'))
	$j('.clientRow').click(e=>selectRow($j(e.target).parent()))
	$j('#dayBtnContainer').on('click','button',e=>daySelect($j(e.target).index()+1))
	const selectRow = $row => {
		g_client && g_client.toggleClass('selected')
		const seq = (g_client= $row.toggleClass('selected')).data('seq')
		fetchClient(seq)
	}
	const daySelect = dayNum => {
		const idx = dayNum - 1
		$j('.dayBtn').removeClass('selected').eq(idx).addClass('selected')
		g_day = $j('#traveList tbody').hide().eq(idx).show()
	} 
	
	var fetchClient = function(seq){
		fetch("/api/trave/manage/fetchClient.do?seq="+seq)
		.then(res=>res.json())
		.then(json=>{
			g_traveCities = JSON.parse(json.traveCities)
			generateTable(JSON.parse(json.client))
			console.log(JSON.parse(json.client))
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
		formTable.find('[name="traveCity"]').text(c.traveCity)
		formTable.find('tbody').remove()
		console.log(traveDays)
		for (let i = 0; i<traveDays.length; i++){
			g_day = g_traveDayClone.clone()
						.attr({
						'traveTrans':c.transport
						,'traveCity':c.traveCity
						})
						.appendTo(formTable)
			const list = traveDays[i]
			for (let j=0; j<list.length; j++){
				g_day.append(generateTraveRow(list[j]))
			}
			if(g_day.children().length===0){
				g_day.append(generateTraveRow())
			}
		}
	}
	const generateTraveRow = trave=>{
		const clone = g_traveRowClone.clone().attr({'day':g_day.index(),'request':'M'})
		const city = g_day.attr('traveCity')
		const countySelect = clone.find('[name="traveCounty"]')
		g_traveCities[city].forEach(county=>{
				countySelect.append($j('<option>', {
					        value: county,
					        text: county
					    }));
				})
		let transports
		switch (g_day.attr('traveTrans')){
			case 'R':
				transports = [['R','렌트']]
				break;
			case 'C':
				transports = [['C','자차']]
				break;
			case 'B':
				transports = [
					['W','도보'],
					['B','버스'],
					['S','지하철'],
					['T','택시']
					]
		}
		const traveTransSelect = clone.find('[name="traveTrans"]')
		transports.forEach(t=>{
			traveTransSelect.append($j('<option>', {
		        value: t[0],
		        text: t[1]
		    }));
		})
		if(trave){
		clone.find('[name]').each(function(){
			const val = trave[this.name]
 			$j(this).val(val).attr('oldVal',val)
		})
		clone.attr('request',trave['request'])
		}
		return clone
	} 
	initPage()
	
})
</script>
<%@include file="/res/js/trave/manage/validation.jsp"%>   
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
								<th>지역<br>(<span name="traveCity"></span>)</th>
								<th>장소명</th>
								<th>교통편</th>
								<th>예상이동시간</th>
								<th>예상이용시간</th>
								<th>이용요금<br>(예상지출비용)</th>
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
									<input name="traveTime" data-val="오전:7:0"  type="text" value="오전 07:00 🕓" />
								<td>
									<select name="traveCounty">
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
									<input name="transTime" type="text" value="00:00"/>
								</td>
								<td>
									<input name="useTime" type="text" value="00:00"/>
								</td>
								<td>
									<input name="useExpend" cursor="0" value="0" type="text" />
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