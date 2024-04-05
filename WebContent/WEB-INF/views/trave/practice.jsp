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
button.dateBtn.selected{
background-color:skyblue;
}

button.dateBtn,
table#clientTable{
cursor:pointer;
}

</style>
<title>여행 일정 관리</title>
<script>

$j(()=>{
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
			const h = time.h <10 ? '0'+time.h : time.h
			const m = time.m <10 ? '0'+time.m : time.m
			time.el.value =time.ap+' '+h+':'+m+' 🕓'
		}
		focus(){
			this.time.el.setSelectionRange(0,0)
			this.cursorIndex = 0
			this.time.el.setSelectionRange(this.selection[0],this.selection[1])
			return this.stateIndex
		}
		next = ()=>this.stateIndex+1
		prev = ()=>this.stateIndex-1
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
				default:
					this.formatVal()
			}
			return this.stateIndex
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
				if(val===1) {
					nextCursor=1
					nextIndex=cur
				}
			}else if(this.cursorIndex === 1){
				const h = time.h * 10 + val
				console.log(h)
				const isAm = time.ap==='오전'
				if(h>12){
					time.h = 0
					nextIndex = cur
				}else if(h===12 || h === 0 ){
					time.h = isAm ? 0 : 12
				}else if (h>0 && h<12){
					time.h = h
				}
			}
			this.cursorIndex=nextCursor
			this.formatVal()
			return nextIndex 
		}
	}
	class MinState extends State{
	}
	
	//*Context* : 시간 입력 요소 동작 제어 클래스
	class Time{
		constructor(el){
			this.el = el
			const v = el.dataset.val.split(':')
			this.ap = v[0]
			this.h = parseInt(v[1])
			this.m = parseInt(v[2])
			this.states = [new AmpmState(this,0,0,2),new HourState(this,1,3,5),new MinState(this,2,6,8)]
			this.stateIndex= 0
			this.state= this.states[this.stateIndex]
		}
		setState(stateIndex){
			this.state=states[stateIndex]
		}
		execute = nextStateIndex => {
			this.state=this.states[nextStateIndex]
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
						execute(state.up())
						break
					case -100:
						execute(state.down())
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
					execute(state.up(val))
					break
				case 'ArrowDown':
					execute(state.down(val))
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
				}
		}
	}
	let g_time
	
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
			var allowed = ['Shift','F5']
			!allowed.includes(e.key) && e.preventDefault()
			g_time.keydown(e.key)	
			}
			,'doubleclick':e=>e.preventDefault()
			,'keyup': e => {
			if(e.key === 'Shift')g_isShiftDown=false
			}
			,'blur':e=>{
				if(g_time&& e.target === g_time.el){
					$j(e.target).attr('r',0)
					g_time=null
				}
			}
		},'input[name="traveTime"]'
	)
	
	
})

</script>
</head>
<body> 
<table align="center" >
<tr>
<td align="center">
<input id="el" name="traveTime" type="text" data-val="오후:12:00" value="오후 12:00 🕓"/>
</td>
</tr>
</table>
</body>
</html>