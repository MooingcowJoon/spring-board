<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script>

$j(()=>{
	const daySelect_2 = dayNum => {
		const idx = dayNum - 1
		$j('.dayBtn').removeClass('selected').eq(idx).addClass('selected')
		g_day = $j('#traveList tbody').hide().eq(idx).show()
	} 
	const InputEventHandler = name =>{
		$j(document).on({
			'focus':e=>{
				const el = $j(e.target)
				el.val(el.val().replaceAll(',',''))
				el.prop({
						'selectionStart':0
						,'selectionEnd':el.val().length
					})
			
			},'click':e=>{
				const el = $j(e.target)
				if(!/[^0-9]/g.test(el.val())){
					el.attr('cursor',el.prop('selectionStart'))
				}
			}
			,'keyup':e=>{
				el = $j(e.target)
				if(!/[^0-9]/g.test(el.val())){
					el.attr('cursor',el.prop('selectionStart'))
				}
			},
			'input':e=>{
				el = $j(e.target)
				const val = el.val()
				const reg = /[^0-9]/g
				if(reg.test(val)){
					el.val(val.replace(reg,''))
					const c = el.attr('cursor')
					el.prop({
						'selectionStart':c
						,'selectionEnd':c
					})
				}else{
					
				}
			}
			,'blur':e=>{
				if(e.target.value.trim()===''){
					e.target.value='0'
				}
				e.target.value=(parseInt(e.target.value)+'').replace(/\B(?=(\d{3})+(?!\d))/g, ',')
			}
				
		},'[name='+name+']')
	}
	
	InputEventHandler('useExpend')
	
	const sortTrave = traveList=>{
		const dayNum = $j('#traveList').find('tbody').length
		const days = []
		
		traveList.each(function(){
			const n= $j(this).attr('day')-1
			if(!days[n]){
				days[n]=[]
			}
			days[n].push($j(this))
		}
		)
		const getTimeNum = (traveRow,name="traveTime")=>{
			let t
		 	let h = 0
		 	let m = 0
		 	
			if(name==='traveTime'){
			 	t = $j(traveRow).find('[name='+name+']').val().split(' ')
		 		const isPm= t[0]==='오후'
		 		t=t[1].split(':')
		 		h=parseInt(t[0])
		 		m=parseInt(t[1])
		 		if(isPm){
			 		h=12+h%12 
			 	}else{
			 		h= h<4 ? h+24 : h
			 	}
		 				
			}else{
				t=$j(traveRow).find('[name='+name+']').val()
				t =t.split(':')
			 	h += parseInt(t[0])
			 	m  = parseInt(t[1])
			}
			return h*12+m
		}
		for(let i =0; i<days.length; i++){
			if(!checkTime(days[i],getTimeNum)){
				return false
			}
		}
		return true
		
	}
	
	const checkTime = (traves,getTimeNum) =>{
		traves.sort((t1,t2)=> getTimeNum(t1)- getTimeNum(t2))
		
		for(let i=0; i<traves.length; i++){
			const cur = traves[i]
			const trans = getTimeNum(cur,'transTime')
			const use = getTimeNum(cur,'useTime')
			
			const dayNum = cur.parent().index()
			const errAlert = (name, msg)=>{
				alert('['+dayNum+'일차]\n'+msg)
				daySelect_2(dayNum)
				cur.find('[name='+name+']').focus()
			}
			
			if(trans===0){
				errAlert('transTime','이동시간을 입력해주세요')
				return false
			}
			if(use===0){
				errAlert('useTime','이용시간을 입력해주세요')
				return false
			}
			
			const dayStart = 60*7
			const dayEnd = 60*(24+4)
			
			const curStart = getTimeNum(cur)
			const curEnd = curStart+trans+use
			
			if(curEnd >= dayEnd){
				errAlert('traveTime','일정 종료시간은 오전 4시 이전이어야 합니다.')
				return false
			}
			if(i===traves.length-1){
				continue
			}
			const next = traves[i+1]
			const nextStart = getTimeNum(next)
			if(curEnd >= nextStart){
				errAlert(trans>use ? 'transTime' : 'useTime','일정이 중복됩니다. 시간대를 조정해주세요.')
				return false
			}
		}
		return true
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
	$j(document).on('change','[name="traveTrans"]',e=>calculateFare($j(e.target).closest('tr')))
	$j(document).on('blur','.traveRow [name]',e=>calculateFare($j(e.target).closest('tr')))
	
	$j('#submitBtn').click(e=>submit())
	const submit = ()=>{
		const rows = $j('.traveRow')
		const data = $j([])
		for(let i = 0; i<rows.length; i++){
			const result = nullCheck(rows[i])
			if(result.code<0){
				alert('필수 입력값입니다.')
				daySelect_2($j(rows[i]).closest('tbody').index())
				result.el.focus()
				return
			}
			if(result.code===1){
				data.push(rows[i])
			}
		}
		const traveCity = $j('[name="traveCity"]:first').text()
		const traveList = []
		for(let i =0; i<data.length; i++){
			const el = $j(data[i])
			const o = {}
			let request= el.attr('request')
			
			const dayNum = el.attr('day')
			o.traveCity = traveCity
			o.traveSeq = dayNum+el.index()
			o.traveDay = dayNum
			const inputs = el.find('[name]')
			for(let j=0; j<inputs.length; j++){
				let val = inputs[j].value.trim()
				if(request ==='M' && val===$j(inputs[j]).attr('oldVal')){
					alert('수정해야됨')
					daySelect_2(dayNum)
					inputs[j].focus()
					return
				}
				if(el.name==='useExpend'){
					val=val.replaceAll(',')
				}
				o[inputs[j].name]=val
			}
			o.request='C'
			traveList.push(o)
		}
	
		if(traveList.length===0){
			alert('하나 이상의 유효한 일정을 입력하셔야합니다.')
			return
		}
		if(!sortTrave(data)){
			return
		}
		
		const clientVo = {
				seq:$j('.clientRow.selected:first').data('seq')
				,traveList:traveList
		}
		console.log(JSON.stringify(clientVo))
		$j.ajax({
			type			: "POST",
			url				: 	"/api/trave/manage/submit.do",
			data			:	JSON.stringify(clientVo),
			contentType		:	"application/json",
			success			:	function(res){
				if(res.result === 'success'){
					alert('일정이 저장되었습니다.')
					let total=0
					data.each((i,el)=>{
						total+= parseInt($j(el).find('[name="useExpend"]').val().replaceAll(',',''))
								+parseInt($j(el).find('.fare').text())
					})
					const c = $j('.clientRow.selected:first')
					const est = c.find('.estimated')
					est.text(getPriceFormat(total))
					const expend = parseInt(c.find('.expend').text().replaceAll(',',''))
					console.log(expend)
					const isOverPrice = total > expend
					
					if(isOverPrice){
						est.addClass('over-price')
					}else{
						est.removeClass('over-price')
					}
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
	}
	
	
	const nullCheck = row=>{
		const inputs = $j(row).find('input[type="text"]:not([name$="Time"],[name="useExpend"])')
		let result = {code: 0, el:null}
		let nullIndex
		for(let i =0; i<inputs.length; i++){
			if(inputs[i].value.trim()===''){
				if(!nullIndex){
					nullIndex=i
				}
				if(result.code ===1){
					return {code:-i,el:inputs[nullIndex]}
				}
			}else{
				result.code=1
			}
		}
		return result
	}
})

</script>
