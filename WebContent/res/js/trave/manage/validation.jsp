<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script>

$j(()=>{
	const daySelect_2 = dayNum => {
		const idx = dayNum - 1
		$j('.dayBtn').removeClass('selected').eq(idx).addClass('selected')
		g_day = $j('#traveList tbody').hide().eq(idx).show()
	} 
	
	const g_rules ={
			userName	:	new Rule('이름을','ko,KO',2,5,'[ 2~5자의 완성형 한글 ]'),
			userPhone	:	new Rule('휴대폰번호를','num',10,11,'[ 10~11자의 숫자 ]'),
			period		:	new Rule('여행기간을','num',1,2,'[ 1~2자리 숫자 ]'),
			expend		:	new Rule('여행경비를','num',5,9,'[ 10,000 ~ 100,000,000 사이의 숫자 ]')
	} 
	
	$j('#traveList').on({
		'focus':e=>{
			e.target.value=e.target.value.slice(0,-1)
		},
		'blur':e=>{
			if(e.target.value.length>0){
			e.target.value=e.target.value+"분"
			}
		}
	},'[name="transTime"],[name="useTime"]')
	$j('#submitBtn').click(e=>submit())
	const submit = ()=>{
		const rows = $j('.traveRow')
		const data = $j([])
		for(let i = 0; i<rows.length; i++){
			const result = nullCheck(rows[i])
			if(result.code<0){
				alert('입력해')
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
		console.log(data)
		data.each((i,el)=>{
			const o = {}
			$j(el).find('[name]').each((i,el)=>{
				o[el.name]=el.value
			})
			o.traveCity = traveCity
			traveList.push(o)
		})
		console.log(traveList)		
	}

	
	const nullCheck = row=>{
		const inputs = $j(row).find('input[type="text"]:not(:first)')
		let result = {code: 0, el:null}
		for(let i =0; i<inputs.length; i++){
			if(inputs[i].value.trim()===''){
				if(result.code ===1){
					return {code:-i,el:inputs[i]}
				}
			}else{
				result.code=1
			}
		}
		return result
	}
})

</script>
