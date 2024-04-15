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
button.dateBtn:hover,
button.dateBtn.selected,
tr.traveRow.checked{
background-color:skyblue;
}

button.dateBtn,
table#clientTable{
cursor:pointer;
}

</style>
<title>여행 일정 관리</title>
</head>
<script>
$j(()=>{
	var g_selectedRow
	var g_selectedDate
	let g_isShiftDown=false
	// *State* : 상태들의 공통 기능을 정의하는 추상 클래스.
	// 00:00~ 12:59 까지 입력가능.
	// 시간부분에 12를 입력하면 오후일때는 정오, 오전일때는 자정(0시) 로 변환
	class State{
		constructor(time,stateIndex,s,e){
			this.time= time
			this.stateIndex = stateIndex
			this.selection=[s,e]
			this.cursorIndex = 0
		}
		formatVal(){
			const time=this.time
			const isAm = time.ap==='오전'
			let h = time.h
			if(h===12 || h===0){
				h= isAm ? 0 : 12
			}
			const H = h <10 ? '0'+h : h
			const M = time.m <10 ? '0'+time.m : time.m
			const textVal = time.ap+' '+H+':'+M+' 🕓'
			time.el.value = textVal
			time.textVal = textVal
			time.el.dataset.val=time.ap+':'+H+':'+M
		}
		focus(){
			this.time.el.setSelectionRange(0,0)
			this.time.el.setSelectionRange(this.selection[0],this.selection[1])
			return this.stateIndex
		}
		next = ()=>this.stateIndex+1
		prev = ()=>this.stateIndex-1
		erase(){}
	}
	
	// *Concrete State* : 각 구체 상태들의 모든 기능을 구현하는 클래스 
	class AmpmState extends State{
		type(val){
			const time = this.time
			switch(val){
				case 1:
					time.ap='오전'
					break
				case 2:
					time.ap='오후'
					break
			}
			return this.stateIndex
		}
		
		updown(isUp){
			const target = isUp ? '오후' : '오전'
			if(this.time.ap !==target){
				this.time.ap= target
				return this.stateIndex
			}
		}

	}
	class HourState extends State{
		type(val){
			const next = this.next()
			const cur = this.stateIndex
			const time = this.time
			let nextIndex = next
			let nextCursor = 0
			if(this.cursorIndex === 0){
				time.h = val
				if(val<2) {
					nextCursor=1
					nextIndex=cur
				}
			}else if(this.cursorIndex === 1){
				const h = time.h * 10 + val
				console.log('h = '+h)
				const isAm = time.ap==='오전'
				if(h>12){
					time.h = 0
					nextIndex = cur
				}else if(h<=12){
					time.h= h
				}
			}
			this.cursorIndex=nextCursor
			console.log(nextCursor+" => "+this.cursorIndex)
			return nextIndex 
		}
		updown(isUp){
			const add = isUp? 1 : -1
			const time = this.time
			const h = time.h + add
			time.h = h
			if(h >= 12 || h<0){
				const isUp = time.ap==='오전'
				time.h = h>= 12? 0 : 11
				time.states[this.prev()].updown(isUp)
			}
			return this.stateIndex
		}
		erase(){
			this.cursorIndex=0
			this.time.h = this.time.ap === '오전' ? 0 : 12
			return this.stateIndex
		}
	}
	class MinState extends State{
		type(val){
			const time = this.time
			if(this.cursorIndex === 0){
				time.m = val
				this.cursorIndex=1
			}else if(this.cursorIndex === 1){
				const m = time.m * 10 + val
				if(m>59){
					time.m = 0
				}else if(m<=59){
					time.m = m
				}
				this.cursorIndex=0
			}
			return this.stateIndex 
		}
		updown(isUp){
			const time = this.time
			let m = time.m
			if(g_isShiftDown){
				m+= isUp? 10-m%10 : (m%10 === 0 ? -10 : -m%10)
			}else{
				m+=isUp? 1 : -1
			}
			time.m=m
			if(m >= 60 ||m<0){
				const isUp = m === 60
				time.m= isUp? 0 : (g_isShiftDown? 50 : 59)
				time.states[this.prev()].updown(isUp)
			}
			return this.stateIndex
		}
		erase(){
			this.cursorIndex=0
			if(this.time.m === 0){
				return this.prev()
			}
			this.time.m = 0
			return this.stateIndex
		}
	}
	
	//*Context* : 시간 입력 요소 동작 제어 클래스
	class Time{
		constructor(el){
			this.el = el
			const v = el.dataset.val.split(':')
			this.textVal = el.value
			this.ap = v[0]
			this.h = parseInt(v[1])
			this.m = parseInt(v[2])
			this.states = [new AmpmState(this,0,0,2),new HourState(this,1,3,5),new MinState(this,2,6,8)]
			this.stateIndex= g_stateIndex 
			g_stateIndex = 0
			this.state= this.states[this.stateIndex]
		}
		setState(stateIndex){
			this.state=states[stateIndex]
		}
		execute = nextStateIndex => {
			if(nextStateIndex=== undefined){
				return
			}
			this.stateIndex= nextStateIndex
			this.state=this.states[nextStateIndex]
			this.state.formatVal()
			this.state.focus()
		}
		click(e){
			const cursor = e.target.selectionStart
			let nextStateIndex = 0
			if(cursor>9){
				nextStateIndex = 0
			}else if (cursor >5){
				nextStateIndex = 2
			}else if (cursor >1){
				nextStateIndex = 1
			}
			this.execute(nextStateIndex)
		}
		
		keydown(val){
			const states = this.states
			const state = this.state
			const execute = this.execute
			const intVal = parseInt(val)
			if(!isNaN(intVal)){
				switch(intVal){
					case 100:
						execute(state.updown(true))
						break
					case -100:
						execute(state.updown(false))
						break
					default:
						execute(state.type(intVal))
				}
				return
			}
			switch(val){
				case 'Shift':
					g_isShiftDown=true
					break
				case 'ArrowUp':
					execute(state.updown(true))
					break
				case 'ArrowDown':
					execute(state.updown(false))
					break
				case 'Tab':
					const tabIndex = g_isShiftDown? state.prev() : state.next()
					if(tabIndex <0 || tabIndex >=states.length){
						return
					}
					execute(tabIndex)
					break
				case 'ArrowRight':
					state.next()<=2 && execute(state.next())
					break
				case 'ArrowLeft':
					state.prev()>=0 && execute(state.prev())
					break
				case 'Backspace':
					execute(state.erase())
					break
				}
		}
	}
	let g_time=null
	let g_stateIndex = 0
	
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
			var allowed = ['Shift','F5','Ctrl','c','v','F12']
			!allowed.includes(e.key) && e.preventDefault()
			g_time.keydown(e.key)	
			}
			,'doubleclick':e=>e.preventDefault()
			,'keyup': e => {
			if(e.key === 'Shift')g_isShiftDown=false
			}
			,'blur':e=>{
				if(g_time&& e.target === g_time.el){
					g_time=null
				}
			}
			,'paste': e=>{
				const pastedText = e.originalEvent.clipboardData.getData('text');
				const reg = /^(오전|오후) (12|(0?[1-9])|1[0-1]):[0-5][0-9].*$/
				if(reg.test(pastedText)){
					const val = pastedText.split(' ')
					g_time.ap = val[0]
					hm = val[1].split(':')
					g_time.h = parseInt(hm[0])
					g_time.m = parseInt(hm[1])
					g_time.execute(2)
				}
				e.preventDefault()
			}, 
			'input':e=>{
				if(e.target.value !== g_time.textVal){
					g_stateIndex = g_time.stateIndex
					e.target.value = g_time.textVal
					console.log(g_stateIndex)
					alert('방향키, 숫자, 백스페이스 및 마우스 휠과 탭키로 조정해주세요.\n(쉬프트 클릭시 10분 단위 조정)')
				}
			}
		},'input[name="traveTime"]'
	)
	document.addEventListener('wheel',function(e){
	if(g_time !== null){
		e.preventDefault()
		g_time.keydown(e.deltaY<0 ? 'ArrowUp' : 'ArrowDown')
		return
	}},{passive: false })
	
	
	
	
	
	
	var removeRow = ()=>{
		
	}
	
	$j('#traveList').on('click','input[type="checkbox"]',e=>$j(e.target).closest('tr').toggleClass('checked'))
	
	$j('#addRowBtn').click(e=>cloneRow(g_selectedDate.index()))

	var cloneRow = (index,trave)=>{
		var clone = $j('.traveRow:first').clone().appendTo($j('#traveList tbody').eq(index))
		clone.find('input').val('')
		clone.find('input[type="checkbox"]').prop('checked',false)
		clone.find('input:eq(1)').val("오후 12:00 🕓")
								.attr('data-val','오후:12:00')
	} 
	
	var initPage = ()=>selectRow($j('.clientRow:first'))
	$j('.clientRow').click(e=>selectRow($j(e.target).parent()))
	$j('#dateBtnTd').on('click','button',e=>selectDate($j(e.target)))
	var selectRow = $row => {
		g_selectedRow && g_selectedRow.toggleClass('selected')
		var seq = (g_selectedRow= $row.toggleClass('selected')).attr('id')
		fetchClient(seq)
		selectDate($j('.dateBtn:first'))
	}
	var selectDate = $btn => {
		g_selectedDate && g_selectedDate.toggleClass('selected')
		var index = (g_selectedDate = $btn.toggleClass('selected')).index()
		$j('#traveList').find('tbody').hide().eq(index).show()
	}
	
	var fetchClient = function(seq){
		fetch("/api/trave/manage/fetchClient.do?seq="+seq)
		.then(res=>res.json())
		.then(json=>{
			console.log(json.result)
			updateTable(json.data)
		})
		.catch(error=>console.error('Error :',error))
	}
	
	
	var updateTable= function(data){
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
								<tr class="clientRow" id =${c.seq }>
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
				<td style="text-align:left;" id="dateBtnTd" >
					<button class="dateBtn">1</button>
					|
					<button class="dateBtn">2</button>
				</td>
			</tr>
			<tr>
				<td style="text-align:left;" >
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
									<input name="traveTime" data-val="오후:12:00"  type="text" value="오후 12:00 🕓" />
								<td><span>서울</span>
								<!-- 	<select name="traveCity" >
										<option value="서울">서울</option>
										<option value="제주도">제주도</option>
									</select> -->
									<select name="traveCounty">
									<option>
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
									</option>
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
						<tbody>
							<tr class="traveRow">
								<td>
									<input type="checkbox"/>
								</td>
								<td>
									<input name="traveTime" data-val="오후:12:00"  type="text" value="오후 12:00 🕓"/>
								<td><span>서울2</span>
								<!-- 	<select name="traveCity" >
										<option value="서울">서울</option>
										<option value="제주도">제주도</option>
									</select> -->
									<select name="traveCounty">
									<option>
										강북
									</option>
									<option>
										강북
									</option>
									<option>
										강북
									</option>
									<option>
										강북
									</option>
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
					</form>
		</tbody>
	</table>
</body>
</html>