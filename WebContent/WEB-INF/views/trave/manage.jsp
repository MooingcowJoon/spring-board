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
input[type="text"]{
width:100px;
}
.fareTd,.fareTh {
    white-space: nowrap; /* 텍스트 줄 바꿈 방지 */
}

.fare {
    display: inline; /* 한 줄에 표시 */
}
td.estimated.over-price{
	   color: red; 
    font-weight: bold; 
}

</style>
<title>여행 일정 관리</title>
</head>
<%@include file="/res/js/trave/manage/time_input_10min.jsp"%>
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
	$j('sortTraveList').click()

	
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
		calculateFare(clone)
		}
		return clone
	}
	const calculateFare = traveRow=>{
		const r = $j(traveRow)
		const type = r.find('[name="traveTrans"]').val()
		let fare
		const fareEl= r.find('.fare')
		let spent = r.find('[name="transTime"]').val().split(':')
		spent = parseInt(spent[0]*60)+parseInt(spent[1])
		if(spent===0){
			fareEl.text('0')
		}
		switch(type){
			case 'W':
				fare=0
				break;
			case 'B':
				fare=1400+Math.floor(spent/20)*200
				break;
			case 'S':
				fare=1450+Math.floor(spent/20)*200
				break;
			case 'T':
				const traveTime = r.find('[name="traveTime"]').val().split(' ')
				const tmp = traveTime[1].split(':')
				let h = parseInt(tmp[0])+(traveTime[0]==='오전' ? 0 : 12)
				let m = parseInt(tmp[1])
					fare = 3800
					fare *= h >=22 && h<24 ?  1.2 :(h>=0 && h<4 ? 1.4 : 1)
					console.log('기본요금 = '+fare)
				while(spent>0){
					let spentMins
					const extra = h >=22 && h<24 ?  1.2 :(h>=0 && h<4 ? 1.4 : 1)
					const H = h
					if (m+spent>60){
						h=(h+1)%24
						spentMins = 60-m
						m=0
					}else{
						spentMins = spent
					}
					spent-=spentMins
					fare+=5000*Math.floor(spentMins/10)*extra
					console.log(H+'시 구간 이동시간 = '+spentMins+'분,\n할증 = '+Math.round((extra-1)*100)+'%\n구간요금합계='+5000*Math.floor(spentMins/10)*extra)
				}
				break;
			case 'C':
				fare= Math.floor(spent/10)*500
				break;
			case 'R':
				fare= Math.floor(spent/10)*500
				break;
		}
		fareEl.text(fare)
	}
	$j(document).on(
			{	
				'mousedown':e=>g_time=new Time(e.target)
				,'focus':e=>{
					if(g_time===null){
						g_time=new Time(e.target)
						g_time.state.focus()
					}
					return
				}
				,'click':e => {
					g_time.click(e)
					e.preventDefault()
				}
				,'keydown': e => {
				const allowed = ['F5','Ctrl','c','v','F12']
				!allowed.includes(e.key) && e.preventDefault()
				g_isShiftDown = e.shiftKey? true : false
				g_time.keydown(e.key)	
				}
				,'doubleclick':e=>e.preventDefault()
				,'keyup':e=>{
					if(e.key==='Shift'){
						g_isShiftDown =false
					}
				}
				,'blur':e=>{
					if(g_time&& e.target === g_time.el){
						g_time=null
					}
				}
				,'paste': e=>{
					const pastedText = e.originalEvent.clipboardData.getData('text');
					const reg = /^(12|(0?[1-9])|1[0-1]):[0-5][0-9].*$/
					if(reg.test(pastedText)){
						const val = pastedText.split(':')
						g_time.h = parseInt(hm[0]%12)
						g_time.m = parseInt(hm[1])
						g_time.execute(2)
					}
					e.preventDefault()
				}, 
				'input':e=>{
					if(e.target.value !== g_time.textVal){
						g_stateIndex = g_time.stateIndex
						e.target.value = g_time.textVal
						alert('방향키, 숫자, 백스페이스 및 마우스 휠과 탭키로 조정해주세요.\n(쉬프트키 입력시 10분 단위 조정)')
					}
				}
			},'[name="transTime"],[name="useTime"]'
		)
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
									<td class="expend">${c.expend }</td>
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
					|
					<button id="sortTraveList" >시간순 정렬</button>
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
								<th class="fareTh">교통비</th>
							</tr>
						</thead>
						<tbody>
							<tr class="traveRow">
								<td>
									<input type="checkbox"/>
								</td>
								<td>
									<input name="traveTime" type="text" value="오전 07:00 🕓" />
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
								<td class="fareTd"><span class="fare">0</span>원</td>
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