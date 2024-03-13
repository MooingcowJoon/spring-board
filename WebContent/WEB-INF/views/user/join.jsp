<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/common/common.jsp"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
span{
font-size: 0.7em; /* 조금 작게 만들기 */
}
span.fail {
    color: red; /* 빨간색 텍스트 */
}
span.pass {
    color: green; /* 초록색 텍스트 */
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입 페이지</title>
</head>
<script>
$j().ready(() => {
	/*
		폼 내 인풋요소 = }
			id  		=>	inputId 		: 2 ~ 15 자의 영문 소문자/숫자,
			pw  		=> 	inputPw 		: 6 ~ 12 자의 영문 대소문자/숫자,
			name 		=>	inputName		: 2 ~ 5 자의 한글,
			phone 		=> 	inputPhone1		: 셀렉트로 국번 선택,
							inputPhone2,3	: 각각 4 자의 숫자,
			postNo		=>	inputPostNo		: '000-000' 형태의 숫자/'-',
			address		=>	inputAddress	: 1 ~ 30 자의 한글/영문 대소문자/'-',
			company		=> 	inputCompany	: 1 ~ 20 자의 한글/영문 대소문자/숫자/'-'
			}
	*/
	$j('#formTable').on('input','input[type="text"], input[type="password"]', function(){
		isInputValid(this)
    });
	
	function isInputValid(input){
		var isValid
		input = $j(input)
		var val = input.val()
		// 각 인풋 요소들의 아이디에 맞는 정규표현식 이넘 초기화
		var regExpEnum = {
			inputId			:	/^[a-z0-9]{2,15}$/, 	
			inputPw 		:	/^[a-zA-Z0-9]{6,12}$/,
			inputPwCheck 	:	/^[a-zA-Z0-9]{6,12}$/,
			inputName		:	/^[가-힣]{2,5}$/,
			inputPhone2		:	/^[0-9]{4}$/,
			inputPhone3		: 	/^[0-9]{4}$/,
			inputPostNo		:	/^[0-9]{3}\-[0-9]{3}$/,
			inputAddress	:	/^(?=.*\S)[0-9a-zA-Z가-힣\s-]{1,30}$/,
			inputCompany	:	/^(?=.*\S)[0-9a-zA-Z가-힣\s-]{1,20}$/
		}
		// 인풋요소의 id 
		var inputElementId = input.attr('id')
		// 인풋요소의 아이디를 키로 이넘값 참조하여 regExp 변수에 할당
		var regExp = regExpEnum[inputElementId]
		
		// 정규식 테스트 결과에 따른 반영
		if(regExp.test(val)){
			isValid = true
		}else if(!regExp.test(val)){
			isValid = false
		}
		
		// 유효여부에 따라 색변경할 스팬요소
		var CheckAlertSpan = $j('#'+inputElementId+'Span')
		// id === inputPhone2Span ? inputPhoneSpan : id+Span
		if(inputElementId === 'inputPhone2' || inputElementId === 'inputPhone3'){
			var CheckAlertSpan = $j('#'+inputElementId.slice(0,-1)+'Span')
		}
		
		if(isValid){
			CheckAlertSpan.removeClass('fail').addClass('pass')
		}else{
			CheckAlertSpan.removeClass('pass').addClass('fail')
		}
		
		if(inputElementId === 'inputPw' || inputElementId === 'inputPwCheck'){
			if($j('#inputPwCheck').val() !==''
					&&
				$j('#inputPw').val() !== $j('#inputPwCheck').val()){
				$j('#inputPwCheckSpan').removeClass('pass').addClass('fail')
				if(inputElementId === 'inputPwCheck'){
					isValid = false
				}
			}
		}
		if(val===''){
			CheckAlertSpan.removeClass('fail')
		}
		return isValid
	};
	
	
	$j('#duplicateCheck').on('click', function(){
		var inputIdElement = $j('#inputId')
		if(!isInputValid(inputIdElement)){
			alert("아이디를 올바르게 입력해 주십시오.")
			inputIdElement.focus()
			return
		}
/* 		$j.get('api/user/join/duplicateCheck.do') */

    });
	
	
	    
	$j('#submit').on('click',function(event){
	    event.preventDefault(); // 폼 제출 중지
		
	    
	    var inValidInputId = ''
	    
	    $j('#formTable').find('input[type="text"]').each((index,input)=>{
	    	if(!isInputValid(input)){
	    		inValidInputId = input.id
	    	}
	    })

	    if(inValidInputId !== ''){	
	    	alert("입력값을 확인해주십시오")
			// 유효여부에 따라 색변경할 스팬요소
			var CheckAlertSpan = $j('#'+inValidInputId+'Span')
			// id === inputPhone2Span ? inputPhoneSpan : id+Span
			if(inValidInputId === 'inputPhone2' || inValidInputId === 'inputPhone3'){
				var CheckAlertSpan = $j('#'+inValidInputId.slice(0,-1)+'Span')
			}
	    	CheckAlertSpan.addClass('fail').removeClass('pass')
	    	$j('#'+inValidInputId).focus()
	    	
	    	return
	    }
	    
   	   	var formData = {}
	    $j('#joinForm').serializeArray().forEach((input)=>{
	   		formData[input.name]=input.value	
   	   	})
   	   	
		console.log("==================================")
		console.log("ajax 요청 : 폼 입력 키:값 JSON형태로 요청바디에 담아서 전송: ")
		console.log(JSON.stringify(formData))
		console.log("==================================")
 		$j.ajax({
			type		: "POST",
			url			: "/api/user/join/submit.do",
			data		: JSON.stringify(formData),
			contentType	: "application/json",
			success 	: function(res){
				if(res.result === 'success'){
					alert("회원가입 성공. 게시판 목록으로 돌아갑니다.")
					location.href="/board/boardList.do"
				}else if(res.result === 'error'){
					alert('에러가 발생하였습니다.')
				}
			},
			error		: function(xhr, status, error) {
	         	alert(error)
	        }
		})
	}) 
})
</script>
<body>
	<form  id="joinForm">
		<table align="center" >
			<tbody>
				<tr>
					<td >
						<a href="/board/boardList.do">list</a>
					</td>
				</tr>
				<tr>
					<td>
						<table id="formTable" border="1">
							<tr >
								<td align="center" width="120" rowspan="2">
									id
								</td >
								<td>
									<input class="inputId" name="id" value="" id="inputId" type="text" maxlength="15"  style="height: 22px;"/>
									<input type="button" id="duplicateCheck" value="중복확인" /> 
								</td>
							</tr>
							<tr>
								<td style="border:none;" align="center">
									<span id="inputIdSpan">
										<b>
										2 ~ 15</b> 자의 
										<b>
										영문 소문자/숫자 
										</b>
										및 
									</span>
									<span id="duplicateSpan">
										<b>중복 확인</b>
									</span>
								</td>
							</tr>
							<tr >
								<td align="center"  rowspan="2">
									pw
								</td >
	
								<td >
									<input  id="inputPw" name="pw" type="password"  autocomplete="off" style="height: 22px;"/>
								</td>
							</tr>
							<tr>
								<td style="border:none;" align="center">
									<span id="inputPwSpan">
										<b>
										6 ~ 12
										</b>자의 
										<b>
										영문 대소문자/숫자
										</b>
									</span>
								</td>
							</tr>
							<tr >
								<td align="center"  rowspan="2">
									pw check
								</td >
								<td >
									<input id="inputPwCheck"  autocomplete="off" type="password"  style="height: 22px;"/>
								</td>
							</tr>
							<tr>
								<td style="border:none;" align="center">
									<span id="inputPwCheckSpan">
										<b>동일한 비밀번호</b>
									</span>
								</td>
							</tr>
							<tr >
								<td align="center"  rowspan="2">
									name
								</td >
								<td >
									<input id="inputName" name="name" type="text"  style="height: 22px;"/>
								</td>
							</tr>
							<tr>
								<td style="border:none;" align="center">
									<span id="inputNameSpan">
										<b>
										2 ~ 5
										</b>자의 
										<b>
										한글
										</b>
									</span>
								</td>
							</tr>
							<tr>
								<td align="center"  rowspan="2">
									phone
								</td >
								<td>
									<select id="inputPhone1" name="phone1" style="height: 30px;">
										<option>
											010
										</option>
										<option>
											011
										</option>
									</select>
									-
									<input id="inputPhone2" name="phone2" type="text" size="4" style="height: 22px; " maxlength="4" />
									-
									<input id="inputPhone3" name="phone3" type="text" size="4" style="height: 22px; " maxlength="4" />
								</td>
							</tr>
							<tr>
								<td style="border:none;" align="center">
									<span id="inputPhoneSpan">
										<b>
										각각 4
										</b>자의 
										<b>
										숫자
										</b>
									</span>
								</td>
							</tr>
							<tr >
								<td  align="center"  rowspan="2">
									postNo
								</td >
								<td >
									<input id="inputPostNo" name="addr1" type="text"  style="height: 22px;"/>
								</td>
							</tr>
							<tr>
								<td style="border:none;" align="center"> 
									<span id="inputPostNoSpan">
										<b>
										'000-000'
										</b>형태의
										<b>
										숫자/'-'
										</b>
									</span>
								</td>
							</tr>
							<tr >
								<td align="center"  rowspan="2">
									address
								</td >
								<td >
									<input id="inputAddress" name="addr2" type="text"  style="height: 22px;"/>
								</td>
							</tr>
							<tr>
								<td style="border:none;" align="center">
									<span id="inputAddressSpan">
										<b>
										빈 문자열이 아닌 1 ~ 30 
										</b>자의 
										<b>
										한글/영문 대소문자/'-'/' '
										</b>
									</span>
								</td>
							</tr>
							<tr >
								<td  align="center"  rowspan="2">
									company
								</td >
								<td >
									<input id="inputCompany" name="company" type="text"  style="height: 22px;"/>
								</td>
							</tr>
							<tr>
								<td style="border:none;" align="center">
									<span id="inputCompanySpan">
										<b>
										빈 문자열이 아닌 1 ~ 20 
										</b>자의 
										<b>
										한글/영문 대소문자/숫자/'-'/' '
										</b>
									</span>
								</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td align="right">
						<input id="submit" type="button" value="테스트"/>
					</td>
				</tr>
			</tbody>
		</table>
	</form>
</body>
</html>