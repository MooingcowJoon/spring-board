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
				console.log(inputs[j])
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
		const clientVo = {
				seq:$j('.clientRow.selected:first').data('seq')
				,traveList:traveList
		}
		console.log(clientVo)
		$j.ajax({
			type			: "POST",
			url				: 	"/api/trave/manage/submit.do",
			data			:	JSON.stringify(clientVo),
			contentType		:	"application/json",
			success			:	function(res){
				console.log(res)
				return
				if(res.result === 'success'){
					alert('신청되었습니다.')
					location.href = res.redirectUrl
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
