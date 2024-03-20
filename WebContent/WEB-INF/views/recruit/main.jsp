<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/common/common.jsp"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
th {
  text-align: center; /* 헤더 텍스트를 가운데 정렬 */
}

</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>입사지원서 작성 페이지</title>
</head>
<script>
$j().ready(() => {
	var submit = function(){
		var form= $j('.inputRow').first().find('form')
		form=seriForm(form)		
		var educationForms = []
		var careerForms = []
		var certificateForms = []
		
		var edu = $j('#educationRow').find('.inputRow').each(function(index, row){
			var form = seriForm($j(this).find('form'))
			form["eduSeq"]=index
			educationForms.push(form)
		})
		var career = $j('#careerRow').find('.inputRow').each(function(index, row){
			var form = seriForm($j(this).find('form'))
			form["carSeq"]=index
			careerForms.push(form)
		})
		var certi = $j('#certificateRow').find('.inputRow').each(function(index,row){
			var form = seriForm($j(this).find('form'))
			form["certSeq"]=index
			certificateForms.push(form)
		})
		
		form['educationList']=educationForms
		form['careerList']=careerForms
		form['certificateList']=certificateForms
// 		form.push(	{	name:	"educationList",		value:	educationForms}
// 					,{	name:	"careerList",			value:	careerForms}
// 					,{	name:	"certificateList", 		value:	certificateForms})
					
		console.log(JSON.stringify(form))
		
		$j.ajax({
			type			: 	"POST",
			url				: 	"/api/recruit/main/submit.do",
			data			:	JSON.stringify(form),
			contentType		:	"application/json",
			success			:	function(res){
				console.log(res.msg)
			},
			error			:	function(res){
				console.log(res)
			}
		})
		
	}
	
	
	//제출 버튼 눌렀을시
	$j('#submitBtn').on('click',function(e){
		e.preventDefault()
		submit()
		
	})
	
	// 행추가 버튼 눌렀을 시
	$j('.addRow').on('click',function(e){
		var rowClone = $j(this).closest('tr').next().clone()
		
		// 입력 필드 초기화
		rowClone.find('input[type="text"]').val('');
    	rowClone.removeClass().addClass('inputRow')
	    // 셀렉트 박스 초기 상태로 되돌리기
	    rowClone.find('select').prop('selectedIndex', 0);
	    rowClone.find('input[type="checkbox"]').prop('checked',false)
		$j(this).closest('tbody').append(rowClone)
	})
	
	// 행삭제 버튼 눌렀을시
	$j('.removeRow').on('click',function(e){
		var sectionTitle = $j(this).closest('tbody').find('h3').text()
		// 체크된 행 배열
		var totalRows = $j(this).closest('tbody').children('.inputRow')
		
		// 전체 행 배열
		var checkedRows = totalRows.filter('.checked')
		// 체크된 행이 없을시
		if(checkedRows.length === 0){
			alert('선택된 '+sectionTitle+' 정보가 없습니다.')
			return
		}
		
		// 체크된 행 개수가 전체 행 개수와 같을 경우 삭제 안됨
		if(checkedRows.length === totalRows.length){
			alert('더 이상 삭제하실 수 없습니다.')
			return
		}
		
		var writingInput = findWritingInput(checkedRows)
		
		if(writingInput === null){
			checkedRows.remove()
			return
		}
		
		if(writingInput !== null){
			var deleteConfirm = confirm('작성중인 '+sectionTitle+' 정보가 있습니다.\n정말 삭제하시겠습니까?')
			
			if(deleteConfirm){
				checkedRows.remove()
				return
			}
		}
	})
	
	// 하위요소 중에 공백값을 지닌 텍스트인풋 요소가 있으면 그 요소를 반환하고, 없으면 널을 반환하는 함수
	var findBlankInput = function(trArr){
		return findInput(trArr,isBlank=true)
	}
	
	
	// 하위 요소중 작성중인 텍스트인풋 요소를 반환하는 함수
	var findWritingInput = function(trArr){
		return findInput(trArr,isBlank=false)
	}
	
	var findInput = function(trArr,isBlank){
		trArr = $j(trArr)
		
		var targetInput = null
		
		trArr.each(function(){
			var textInputs = $j(this).find('input[type="text"]')
			
			textInputs.each(function(){
				
				if(isBlank && $j(this).val().trim() === ''){
					targetInput = this
					return false;
				}
				
				if(!isBlank && $j(this).val().trim() !== ''){
					targetInput = this
					return false;
				}
			})
			if(targetInput !== null){
				return false;
			}
		})
		
		return targetInput
	}
	
	// dom 루트에 모든 하위 체크박스 요소 클릭시 해당 테이블에 checked 속성 토글하는 함수	
	$j(document).on('click','input[type="checkbox"]',function(e){
		var checked = $j(this).prop('checked')
		var tr = $j(this).closest('table').closest('tr')
		
		if(checked){
			tr.addClass('checked')
		}
		if(!checked){
			tr.removeClass('checked')
		}
		return		
	})
})

</script>
<body >
	<h2 align="center">입사 지원서</h2>
	<table align="center">
		<tbody>
			<tr>
				<td >
					<table id ="formTable" border="1" width="900">
						<tr class="inputRow">
							<td style="border:none;" align="center">
							<form>
								<table border="1" >
									<tr>
										<td>
											이름
										</td>
										<td>
											<input name="name" type="text" readonly value="${r.name}">
										</td>
										<td>
											생년월일
										</td>
										<td>
											<input name="birth" type="text"  value="">
										</td>
									</tr>
									<tr>
										<td>
											성별
										</td>
										<td>
											<select name="gender">
												<option value="남자">남자
												</option>
												<option value="여자">여자
												</option>
											</select>
										</td>
										<td>
											연락처
										</td>
										<td>
											<input name="phone" type="text" readonly value="${r.phone}">
										</td>
									</tr>
									<tr>
										<td>
											email
										</td>
										<td>
											<input name="email" type="text"  value="${r.email}">
										</td>
										<td>
											주소
										</td>
										<td>
											<input name="addr" type="text"  value="${r.addr}">
										</td>
									</tr>
									<tr>
										<td>
											희망근무지
										</td>
										<td>
											<select name="location">
												<option value="서울">서울
												</option>
												<option value="지방">지방
												</option>
											</select>
										</td>
										<td>
											근무형태
										</td>
										<td>
											<select name="workType">
												<option value="정규직">
													정규직
												</option>
												<option value="반정규직">
													반정규직
												</option>
											</select>
										</td>
									</tr>
								</table>
							</form>
							</td>
						</tr>
						<tr>
							<td align="center" style="border:none;">
								<table border="1" width="750">
									<thead>
										<tr>
											<th>
												학력사항
											</th>
											<th>
												경력사항
											</th>
											<th>
												희망연봉
											</th>
											<th>
												희망근무지/근무형태
											</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td align="center">
												대학교 재학
											</td>
											<td align="center">
												0년 2개월
											</td>
											<td align="center">
												회사내규에 따름
											</td>
											<td align="center">
												회사내규에 따름
											</td>
										</tr>
									</tbody>
								</table>
							</td>
						</tr>
						<tr id="educationRow">
							<td style="border:none;">
								<table width="100%">
									<tr>
										<td style="border:none;">
											<h3>학력</h3>
										</td>
									</tr>
									<tr>
										<td align="right" style="border:none;">
											<input class="addRow" id="btn-add-edu" type="button" value="추가">
											<input class="removeRow" type="button" value="삭제">
										</td>
									</tr>
									<tr class="inputRow">
										<td align="center" >
										<form>
											<table border="1"  width="780">
												<thead>
													<tr>
														<th>
														</th>
														<th>
															재학기간
														</th>
														<th>
															구분
														</th>
														<th>
															학교명(소재지)
														</th>
														<th>
															전공
														</th>
														<th>
															학점
														</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td align="center">
															<input type="checkbox"/>
														</td>
														<td align="center">
															<input name="startPeriod" type="text" value="${e.get(0).startPeriod}"/>
															<br/>
															~
															<input name="endPeriod" type="text"/>
														</td>
														<td align="center">
															<select name="division">
																<option>졸업</option>
																<option>중퇴</option>
															</select>
														</td>
														<td >
															<input name="schoolName" type="text"/>
															<select name="location">
																<option>서울</option>
																<option>지방</option>
															</select>
														</td>
														<td align="center">
															<input type="text" name="major"/>
														</td>
														<td align="center">
															<input type="text" name="grade"/>
														</td>
													</tr>
												</tbody>
											</table>
										</form>
										</td>
									</tr>
								</table>
							</td>
						</tr>
						<tr id="careerRow">
							<td style="border:none;">
								<table width="100%">
									<tr>
										<td style="border:none;">
											<h3>경력</h3>
										</td>
									</tr>
									<tr>
										<td align="right" style="border:none;">
											<input class="addRow" type="button" value="추가">
											<input class="removeRow"type="button" value="삭제">
										</td>
									</tr>
									<tr class="inputRow">
										<td align="center" >
											<form>
											<table  border="1" width="780">
												<thead>
													<tr>
														<th>
														</th>
														<th>
															근무기간
														</th>
														<th>
															회사명
														</th>
														<th>
															부서/직급/직책
														</th>
														<th>
															지역
														</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td >
															<input type="checkbox"/>
														</td>
														<td >
															<input name="startPeriod" type="text"/>
															<br/>
															~
															<br/>
															<input name="endPeriod" type="text"/>
														</td>
														<td >
															<input name="compName" type="text"/>
														</td>
														<td >
															<input name="task" type="text"/>
														</td>
														<td >
															<input name="location" type="text"/>
														</td>
													</tr>
												</tbody>
											</table>
											</form>
										</td>
									</tr>
								</table>
							</td>
						</tr>
						<tr id="certificateRow">
							<td style="border:none;">
								<table width="100%" >
									<tr>
										<td style="border:none;">
											<h3>자격증</h3>
										</td>
									</tr>
									<tr>
										<td align="right" style="border:none;">
											<input class="addRow" type="button" value="추가">
											<input class="removeRow"type="button" value="삭제">
										</td>
									</tr>
									<tr class="inputRow">
										<td align="center">
										<form>
											<table  width="780" border="1">
												<thead>
													<tr>
														<th>
														</th>
														<th>
															자격증명
														</th>
														<th>
															취득일
														</th>
														<th>
															발행지
														</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td >
															<input type="checkbox"/>
														</td>
														<td >
															<input name="qualifiName" type="text"/>
														</td>
														<td >
															<input name="acquDate" type="text"/>
														</td>
														<td >
															<input name="organizeName" type="text"/>
														</td>
													</tr>
												</tbody>
											</table>
										</form>
										</td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td align="center">
					<input id="saveBtn" type="button" value="저장"/>
					<input id="submitBtn" type="button" value="제출"/>
				</td>
			</tr>
		</tbody>
	</table>
</body>
</html>