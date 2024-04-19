<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script>

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
			if(isAm && h>3 && h<7){
				g_stateIndex=this.stateIndex
				g_isShiftDown=false
				alert('오전 4시부터 7시까지는 일정을 등록할 수 없습니다.')
				return 
			}
			if(h===12 || h===0){
				h= isAm ? 0 : 12
			}
			const H = h <10 ? '0'+h : h
			const M = time.m <10 ? '0'+time.m : time.m
			const textVal = time.ap+' '+H+':'+M+' 🕓'
			time.el.value = textVal
			time.textVal = textVal
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
				const isAm = time.ap==='오전'
				if(h>12){
					time.h = 0
					nextIndex = cur
				}else if(h<12){
					time.h= h
				}else if (h===12){
					time.h= 0
					time.ap = isAm ? '오후' : '오전'
				}
			}
			this.cursorIndex=nextCursor
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
			this.time.h = 0
			return this.stateIndex
		}
	}
	class MinState extends State{
		type(val){
			const time = this.time
			if(this.cursorIndex === 0){
				if(val>5){
					time.m=0
				}else{
				time.m = val*10
				}
				this.cursorIndex=0
			}else if(this.cursorIndex === 1){
				const m = (time.m+Math.round(val/10))*10
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
				m+=isUp? 10 : -10
			}
			time.m=m
			if(m >= 60 ||m<0){
				const isUp = m === 60
				time.m= isUp? 0 : 50
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
			this.el=el
			this.stateIndex=g_stateIndex
			g_stateIndex=0
			let v
			let t
			switch(el.name){
				case 'traveTime':
					v = el.value.split(' ')
					this.textVal = el.value
					this.ap = v[0]
					t=  v[1].split(':')
					this.h = parseInt(t[0])
					this.m = parseInt(t[1])
					this.states = [new AmpmState(this,0,0,2),new HourState(this,1,3,5),new MinState(this,2,6,8)]
					break;
				default:
					v = el.value.split(':')
					this.textVal = el.value
					this.h = parseInt(v[0])
					this.m = parseInt(v[1])
					this.states = [new AmountHourState(this,0,0,2),new AmountMinState(this,1,3,6)]
					this.stateIndex=1
					break;
			}
					this.state=this.states[this.stateIndex]
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
			for (const state of this.states){
				if(cursor >= state.selection[0]){
					nextStateIndex = state.stateIndex
					if(state.stateIndex===this.states.length-1 && cursor>state.selection[1]){
						nextStateIndex =0
					}
				}
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
			state.cursorIndex=0
			switch(val){
				case 'ArrowUp':
					execute(state.updown(true))
					break
				case 'ArrowDown':
					execute(state.updown(false))
					break
				case 'Tab':
					const tabIndex = g_isShiftDown? state.prev() : state.next()
					if(tabIndex <0 ){
						$j(this.el).blur()
						$j(this.el).parent().prev().children(":first").focus()
						return
					}
					if(tabIndex>=states.length){
						$j(this.el).blur()
						$j(this.el).parent().next().children(":first").focus()
						return
					}
					execute(tabIndex)
					break
				case 'ArrowRight':
					state.next()<states.length && execute(state.next())
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
			const allowed = ['F5','Ctrl','c','v','F12']
			!allowed.includes(e.key) && e.preventDefault()
			if(e.shiftKey){
				g_isShiftDown=true
			}else{
				g_isShiftDown=false
			}
			g_time.keydown(e.key)	
			}
			,'doubleclick':e=>e.preventDefault()
			,'blur':e=>{
				if(g_time&& e.target === g_time.el){
					g_time=null
				}
			}
			,'keyup':e=>{
				if(e.key==='Shift'){
					g_isShiftDown=false
				}
			}
			,'paste': e=>{
				const pastedText = e.originalEvent.clipboardData.getData('text');
				const reg = /^(오전|오후) (12|(0?[1-9])|1[0-1]):[0-5][0-9].*$/
				if(reg.test(pastedText)){
					const val = pastedText.split(' ')
					g_time.ap = val[0]
					hm = val[1].split(':')
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
		},'input[name="traveTime"]'
	)
	document.addEventListener('wheel',e=>{
	if(g_time !== null){
		e.preventDefault()
		g_time.keydown(e.deltaY<0 ? 'ArrowUp' : 'ArrowDown')
		return
	}},{passive: false })
	
	class AmountState extends State{
		constructor(time,stateIndex,s,e){
			super()
			this.time= time
			this.stateIndex = stateIndex
			this.selection=[s,e]
			this.cursorIndex = 0
		}
		formatVal(){
			const time=this.time
			let h = time.h
			const H = h <10 ? '0'+h : h
			const M = time.m <10 ? '0'+time.m : time.m
			const textVal = H+':'+M
			time.el.value = textVal
			time.textVal = textVal 
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
	
	class AmountHourState extends AmountState{
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
				const isAm = time.ap==='오전'
				if(h>12){
					time.h = 0
					nextIndex = cur
				}else if(h<12){
					time.h= h
				}else if (h===12){
					time.h= 0
				}
			}
			this.cursorIndex=nextCursor
			return nextIndex 
		}
		updown(isUp){
			const add = isUp? 1 : -1
			const time = this.time
			const h = time.h + add
			time.h = h
			if(!isUp && h===0){
				return this.next()
			}
			if(h >= 12 || h<0){
				time.h = 0
			}
			return this.stateIndex
		}
		erase(){
			this.cursorIndex=0
			this.time.h = 0
			return this.stateIndex
		}
	}
	class AmountMinState extends AmountState{
		type(val){
			const time = this.time
			if(this.cursorIndex === 0){
				if(val>5){
					time.m=0
				}else{
				time.m = val*10
				}
				
				this.cursorIndex=0
			}else if(this.cursorIndex === 1){
				const m = (time.m+Math.round(val/10))*10
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
				m+=isUp? 10 : -10
			}
			time.m=m
			if(m >= 60 ||m<0){
				const isUp = m === 60
				if(m<0 && time.h===0){
					time.m=0
				}else{
				time.m= isUp? 0 : 50
				time.states[this.prev()].updown(isUp)
				}
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
	


</script>
