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
	var g_time=null
	var g_isShiftDown=false
	var g_r=-1
	class Time{
		constructor(el){
			if(el===null){
				this.arr=['오후',1,2,0,0]
				this.el=el
				this.i=0
				this.val=""
			}else{
			var text = el.value
			this.arr=[text.slice(0,2),parseInt(text[3]),parseInt(text[4]),parseInt(text[6]),parseInt(text[7])]
			this.el=el
			this.i=parseInt($j(el).attr('r'))
			this.val=text
			}
		}
		setI(c){
			var tmp = [0,0,0,1,1,1,3,3,3,0,0,0,0]
			this.i=tmp[c]
			$j(this.el).attr('r',this.i)
			return
		}
		setRange(step=0){
			var el = this.el
			el.setSelectionRange(0,0)
			var range = [[0,2],[3,5],[6,8]]
			if(g_r >= 0){
				el.setSelectionRange(range[g_r][0],range[g_r][1])
				this.i=Math.max(g_r*2-1,0)
				$j(el).attr('r',g_r)
				g_r=-1
				return
			}
			var i = this.i
			var tmp = [0,1,1,2,2]
			var r =tmp[i]+step
			if(r<0){
				$j(el).parent().prev().children(':last').focus()
				$j(el).attr('r',0)
				return
			}
			if(r>2 || i>4){
				this.i= 0
				$j(el).attr('r',0)
				$j(el).parent().next().children('[name]:first').focus()
				return
			}
			if (step !== 0 ){
				var tmp = [0,1,3]
				this.i = tmp[r]
			}
			$j(el).attr('r',r)
			el.setSelectionRange(range[r][0],range[r][1])
		}
		insertVal(val,step=1){
			val=parseInt(val)
			var i = this.i
			var el = this.el
			var arr = this.arr
			if(i===0){
				val = val === 1? '오전' : '오후'
				if(val === arr[0]){
					return
				}
				arr[0]=val
				this.formatVal()
				return
			}
			if(i === 1){
				if(val>1){
					arr[1]=0
					arr[2]=val
					this.i=3
				}else{
				arr[2]=val
				arr[1]=0
				this.i=2
				}
				this.formatVal()
				return
			}
			if(i===2){
				if(arr[2]===1 && val > 2){
					return
				}
				arr[1]=arr[2]
			}
			if(i===3){
				arr[3]=0
				arr[4]=val
				this.i=4
				this.formatVal()
				return
			}
			if(i===4){
				if(arr[4]>5){
					arr[4]=0
				}else if(arr[4]<=5){
					arr[3]=arr[4]
					arr[4]=val
				}
					this.i=3
				this.formatVal()
				return
				
			}
			arr[i]=val
			i=i+step
			if(i>4){
				i=3
			}
			if(step==-1 && i === 0){
				i=1
			}
			this.i=i
			this.formatVal()
		}
		formatVal(){
			var el = this.el
			var arr= this.arr
			var i = this.i
			
			var x = arr[i]*10+arr[i+1]
			if(i===3){
				x= x<0 ? 59 : (x>59 ? 0 : x)
			}else if(i===1){
				var top= 12
				var toggle = '오전'
				if(arr[0]==='오전'){
					top=11
					toggle='오후'
				}
				if(x>top || x<0){
					arr[0]=toggle
					x=x>top? 0 : top
				}
			}		
				arr[i]=Math.floor(x/10)
				arr[i+1]=x%10
					
					
			el.value = arr[0]+" "+arr[1]+arr[2]+":"+arr[3]+arr[4]+' 🕓'
			this.val=el.value
			this.setRange()
			console.log(arr)
		}
		typeValue(e){
			if(this.el===null || !e.key){
				return
			}
			var val = e.key
			var i = this.i
			var el = this.el
			var arr = this.arr
			if(val === 'Tab' ){
				this.setRange(e.shiftKey ? -1 : 1)
				return
			}
			else if(val=== 'ArrowRight' || val === 'ArrowLeft'){
				var val = val === 'ArrowRight' ? 1 : -1
				if( (i===0 && val<0) || (i>=3 && val>0)){
					return
				}
				this.setRange(val)
				return
			}
			else if(val === 'ArrowUp' || val==='ArrowDown'){
				this.updown(val=== 'ArrowUp' ? 1 : -1)
			}
			else if(val==='Backspace'){
				if(i===0){
					return
				}
				if(i<=2){
					if(arr[1]===0 && arr[2]===0){
						this.i=0
						this.setRange()
						return
					}
					arr[1]=0
					arr[2]=0
					this.i=1
				}else{
				if(arr[3]===0 && arr[4]===0){
					this.i=1
					this.setRange()
					return
				}
				arr[3]=0
				arr[4]=0
				this.i=3
				}
				this.formatVal()
				return
			}
			if(e.keyCode >=48 && e.keyCode <=57){
			this.insertVal(val)
			}
		}
		updown(val){
			var arr = this.arr
			var i = this.i
			if(i===0){
				var val = val === -1 ? '오전' : '오후'
				if(val===arr[0])return
				if(val==='오전'){
				}
				arr[0]=val
				this.formatVal()
				return
			}
			this.i= i<=2 ? 1 : 3
			i=this.i
			if(g_isShiftDown && i ===3){
				if(val>0){
					arr[4]=0
					arr[3]=(arr[3]+1)%6
				}else if(arr[4]>0){
					arr[4]=0
				}else if(arr[4]===0){
					arr[3]=arr[3]>0? arr[3]-1 : 5
				}
				this.formatVal()
				return
			}
			arr[i+1]+=val
			this.formatVal()
		}
	}
	
	
	
	
	
	
	var removeRow = ()=>{
		
	}
	
	$j('#traveList').on('click','input[type="checkbox"]',e=>$j(e.target).closest('tr').toggleClass('checked'))
	
	$j('#addRowBtn').click(e=>cloneRow(g_selectedDate.index()))
	
	$j(document).on({
		'mouseenter':e=>e.target.mouseenter=true,
		'mouseleave':e=>e.target.mouseenter=false,
		'mousedown':e=>{
 			g_time= new Time(e.target)
		},
 		'focus':e=>{
 			if(g_time===null ){
 				g_time = new Time(e.target)
 				g_time.setRange()
 				return
 			}
		},
		'click': e=>{
			g_time.setI(e.target.selectionStart)
			g_time.setRange()
		}
		,'keydown':e=>{
			var f = ['F5','F12']
		if(!f.includes(e.key)){
		e.preventDefault()
		}
		if(e.key==='Shift'){
			g_isShiftDown=true
			return
		}
	    var allowedKeys = [
	        "ArrowUp", "ArrowDown", "ArrowLeft", "ArrowRight",
	        "Tab", "Shift", "Enter","Backspace",
	        "0", "1", "2", "3", "4", "5", "6", "7", "8", "9" 
	    ]
	    allowedKeys.includes(e.key) && g_time.typeValue(e)
	    return
		}
		,'keyup':e=>{
			if(e.key==='Shift'){
				g_isShiftDown=false
			}
			}
		,'blur':e=>{
			if(g_time&& e.target === g_time.el){
			$j(e.target).attr('r',0)
			g_time=null
			}
		}
		,'input':e=>{
			if(e.target.value !== g_time.val){
				alert('방향키, 숫자, 백스페이스 및 마우스 휠과 탭키로 조정해주세요.\n(쉬프트 클릭시 10분 단위 조정)')
				g_time.formatVal()
				g_r=parseInt($j(e.target).attr('r'))
			}
		}
	
	}
	,'input[name="traveTime"]')
	document.addEventListener('wheel',function(e){
		if(g_time !== null){
			e.preventDefault()
			g_time.updown(e.deltaY<0 ? 1 : -1)
			return
		}
	},{passive: false })
	var cloneRow = (index,trave)=>{
		var clone = $j('.traveRow:first').clone().appendTo($j('#traveList tbody').eq(index))
		clone.find('input').val('')
		clone.find('input[type="checkbox"]').prop('checked',false)
		clone.find('input:eq(1)').val("오후 12:00 🕓")
		clone.find('input:eq(1)').attr('r','0')
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
									<input name="traveTime" type="text" value="오후 12:00 🕓" r='0'/>
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
									<input name="traveTime" type="text" value="오후 12:00 🕓"/>
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