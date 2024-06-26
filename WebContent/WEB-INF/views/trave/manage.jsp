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
tr.traveRow.invalid{
background-color:red;
}
tr.traveRow td.modify.request{
background-color:lightGray;
color:red;
font-weight:bold;
}


button:hover{
cursor:pointer;
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
td.estExpend.over-price,
td.isRequested.requested{
	   color: red; 
    font-weight: bold; 
}

</style>
<title>여행 일정 관리</title>
</head>
<%@include file="/res/js/trave/manage/time_input_10min_js.jsp"%>
<%@include file="/res/js/trave/manage/validation_js.jsp"%>   
<script>
$j(()=>{
	let g_client
	let g_day
	const g_traveDayClone = $j('#traveList tbody:first').clone().empty()
	const g_traveRowClone = $j('.traveRow:first').clone()
	$j('#traveList tbody').remove()
	let g_traveRow = null
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
	$j(document).on('focus','.traveRow',e=>{
		g_traveRow = $j(e.target).closest('.traveRow')
	})
	$j('#traveList').on('click','input[type="checkbox"]',e=>$j(e.target).closest('tr').toggleClass('checked'))
	
	$j('#traveList').on('dragstart','input[name]',e=>e.preventDefault())
	
	const getEndTime = el =>{
		return getTimeNum(el,'traveTime')+getTimeNum(el,'transTime')+getTimeNum(el,'useTime')
	}
	
	const findInterval = dayNum => {
		const traves = $j('#traveList').find('tbody').eq(dayNum-1).find('.traveRow')
		traves.sort((t1,t2)=>{
			 getTimeNum(t1)- getTimeNum(t2)
		})
		let prevStart=0
		for(let i=0; i<traves.length-1; i++){
			const cur = traves[i]
			const curStart = getTimeNum(cur,'traveTime')
			const curTrans = getTimeNum(cur,'transTime')
			const curUse = getTimeNum(cur,'useTime')

			const next = traves[i+1]
			
			const curEnd = curStart+curTrans+curUse
			const nextStart = getTimeNum(next,'traveTime')
// 			const nextTrans = getTimeNum(next,'transTime')
// 			const nextUse = getTimeNum(next,'useTime')
// 			const nextEnd = nextStart+nextTrans+nextUse
			
			
			if(nextStart-curEnd >=60){
				return {el:cur,t:curEnd+60}
			}
			prevStart=curStart
		}
		const last = traves[traves.length-1]
		const lastStart = getTimeNum(last,'traveTime')
		const lastTrans = getTimeNum(last,'transTime')
		const lastUse = getTimeNum(last,'useTime')
		
		const lastEnd = lastStart+lastTrans+lastUse+60
		const dayEnd = 60*(24+4)
		
		if(lastEnd <= dayEnd){
			return {el:last,t:lastEnd}
		}
		return null
	}
	
	$j('#addRowBtn').click(e=>{
		const totalRows = g_day.children()
		const checkedRows = totalRows.filter((i,el)=>el.classList.contains('checked'))
		const clone = generateTraveRow()
// 		const row = g_traveRow? $j(g_traveRow) : (checkedRows.length===0 ? totalRows.last() : checkedRows.last())
		const dayNum = parseInt($j('.dayBtn.selected').text())
		const interval = findInterval(dayNum)
		
		if(interval===null){
			alert('스케쥴을 추가하시려면 최소 한시간의 여유시간이 필요합니다.')
			return
		}
		let row = $j(interval.el)
		let t= interval.t-60		
		if(t>=24*60+4*60){
			alert('더 이상 스케쥴을 추가하실 수 없습니다.')
			return
		}
		let h = Math.floor(t/60)
		h = h===0? '00' : h
		
		let m = t%60 === 0? '00' : t%60
		const AP = h >=12 && h<24 ? '오후' : '오전'
		let H = h%12
		if(H===0 && AP==='오후'){
			H=12
		}
		if(H <10){
			H='0'+H
		}
		clone.find('[name=traveTime]').val(AP+' '+H+':'+m+' 🕓')
		clone.find('[name="useTime"]').val('00:30')
		clone.find('[name="transTime"]').val('00:30')
		row.after(clone)
	})
	$j('#removeRowBtn').click(e=>removeRow())
	$j('sortTraveList').click()
	InputEventHandler('useExpend')
	$j(document).on('change','[name="traveTrans"]',e=>calculateFare($j(e.target).closest('tr')))
	$j(document).on('blur','.traveRow [name]',e=>calculateFare($j(e.target).closest('tr')))
	$j('#submitBtn').click(e=>submit())
	
	$j('#sortTraveRows').click(sortTraveRows)
	
	const getRentFee = row =>{
		if($j(row).find('[transport]').attr('transport') === 'R'){
			const d = parseInt($j(row).data('period'))
			let perDay
			if(d>=7){
				perDay = 70000
			}else if(d>= 5){
				perDay = 80000
			}else if(d>=3){
				perDay = 90000
			}else{
				perDay = 100000
			}
			return perDay*d
		}
		return 0
	}
	
	
	const initPage = ()=>{
		const cRows = $j('.clientRow')
		const paramSeq = parseInt($j('#paramSeq').val())
		cRows.each((i,e)=>isExpendOverPrice(e))
		const paramDayNum = parseInt($j('#paramDayNum').val())
		const row = cRows.filter((i,e)=>parseInt($j(e).data('seq'))===paramSeq).first()
		selectRow(row,paramDayNum)
	}
	$j('.clientRow').click(e=>selectRow($j(e.target).parent()))
	$j('#dayBtnContainer').on('click','button',e=>daySelect($j(e.target).index()+1))
	
	const selectRow = ($row,dayNum=1) => {
		g_client && g_client.toggleClass('selected')
		const seq = (g_client= $row.toggleClass('selected')).data('seq')
		fetchClient(seq,dayNum)
	}
	
	
	const daySelect = dayNum => {
		g_traveRow=null
		const idx = dayNum - 1
		$j('.dayBtn').removeClass('selected').eq(idx).addClass('selected')
		g_day = $j('#traveList tbody').hide().eq(idx).show()
	} 
	
	var fetchClient = function(seq,dayNum=1){
		fetch("/api/trave/manage/fetchClient.do?seq="+seq)
		.then(res=>res.json())
		.then(json=>{
			g_traveCities = JSON.parse(json.traveCities)
			generateTable(JSON.parse(json.client))
			
			daySelect(dayNum)
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
	const appendCounties = (el,traveCity) =>{
		el=$j(el).empty()
		let x =[]
		switch(traveCity){
		case '제주도':
			x=["제주시", "서귀포시", "한림읍", "애월읍", "성산읍", "조천읍"]
			break;
		case '서울시':
			x=["종로구", "강남구", "송파구", "서대문구", "영등포구", "마포구"]
			break;
		case '경주시':
			x=["중구", "서구", "남구", "북구", "동구"]
			break;
		case '부산시':
			x=["해운대구", "수영구", "부산진구", "동래구", "서구", "사하구"]
			break;
		case '강원시':
			x=["춘천시", "원주시", "강릉시", "속초시", "동해시", "태백시"]
			break;
		case '전주시':
			x=["완산구", "덕진구"]
			break;
	}
	x.forEach(city=>{
		el.append($j('<option>',{
			value:city,
			text:city
		}))
	})
		
	}
	$j('#traveList').on('change','select[name="traveCity"]',e=>{
		const el = $j(e.target)
		const v = el.val()
		if(v==='제주도'){
			return
		}
		const county = el.next().empty()
		appendCounties(county,v)
	})
	
	const generateTraveRow = trave=>{
		const clone = g_traveRowClone.clone().attr('day',g_day.index())
		const city = g_day.attr('traveCity')
		const countySelect = clone.find('[name="traveCounty"]')
		let traveCity = g_client.data('traveCity')
		
		let cities
		if(traveCity==='제주도'){
			cities=['제주도']
		}else{
			cities=['서울시','경주시','강원시','부산시','전주시']
		}
		const citySelect = clone.find('[name="traveCity"]')
		cities.forEach(city=>{
			citySelect.append($j('<option>',{
				value:city,
				text:city
			}))
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
 			$j(this).val(val).attr('oldVal',val)})
 			
		clone.attr('request',trave['request'])
		clone.find('.fare').text(getPriceFormat(trave.traveFare))
		if(trave['request']==='M'){
			clone.find('.modify').text('Y').addClass('request')
		}
		traveCity = trave.traveCity
		}
		appendCounties(clone.find('[name="traveCounty"]:first'),traveCity)
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
	$j('#toMain').click(e=>location.href='/trave/login.do')
})
</script>

<body>
	<table align="center" >
		<tbody>
			<tr>
				<td align="center">
				<input type="hidden" id="paramSeq" value="${paramSeq }"/>
				<input type="hidden" id="paramDayNum" value="${paramDayNum }"/>
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
								<th>수정요청여부</th>
								<th>확인페이지로</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="c" items="${clientList}">
								<tr class="clientRow" data-seq ="${c.seq }" data-rent="${c.rentExpend}" data-trave-city="${c.traveCity }">
									<td>${c.userName }</td>
									<td>${c.userPhone }</td>
									<td>${c.traveCity}</td>
									<td>${c.period }</td>
									<td transport="${c.transport}">${c.transport eq 'R' ? '렌트' : (c.transport eq 'C' ? '자차' : '대중교통') }</td>
									<td class="expend">${c.expend }</td>
									<td class="estExpend">${c.estExpend }</td>
									<td class="isRequested ${c.isRequested == 'Y' ? 'requested' : '' }">${c.isRequested }</td>
									<td><a href="/trave/inquiry.do?userName=${c.userName }&userPhone=${c.userPhone }">이동</a></td>
								</tr>
							</c:forEach>						
						</tbody>
					</table>
			<tr>
				<td align="left">
					<button id="toMain" >로그인 페이지로</button>
				</td>
			</tr>		
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
					<button id="sortTraveRows" >전체 일정 시간순 정렬</button>
				</td>
			</tr>
			<tr>
				<td>
					<form id="traveList">
					<table  border="1" style="margin-left:5%; margin-right:5%;">
						<thead>
							<tr>
								<th></th>
								<th style="white-space: nowrap;">수정요청</th>
								<th>시간</th>
								<th>지역</th>
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
								<td class="modify">
									N
								</td>
								<td>
									<input name="traveTime" type="text" value="오전 07:00 🕓" />
								<td style="white-space: nowrap; text-align:center;">
									<select name="traveCity">
									</select>
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