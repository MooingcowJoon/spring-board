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
		##* 표시는 필수값
			id*  		=>	inputId 		: 2 ~ 15 자의 영문 소문자/숫자,
			pw*  		=> 	inputPw 		: 6 ~ 12 자의 영문 대소문자/숫자,
			name* 		=>	inputName		: 2 ~ 5 자의 한글,
			phone* 		=> 	inputPhone1		: 셀렉트요소로 'COM_CODE' 테이블 내, 
											'CODE_ID = "phone"'인 CODE_NAME 국번 선택,
						=>	inputPhone2,3	: 각각 4 자의 숫자,
			postNo		=>	inputPostNo		: '000-000' 형태의 숫자/'-',
			address		=>	inputAddress	: 1 ~ 30 자의 한글/영문 대소문자/'-',
			company		=> 	inputCompany	: 1 ~ 20 자의 한글/영문 대소문자/숫자/'-'
			}
	*/
	
	// 각 input필드별로 유효성 검증에 필요한 데이터를 모아놓을 클래스
	class RULE {
	    constructor(isEssential, name, min, max, patternInfo, inputPattern,validPattern) {
	        this.isEssential = isEssential;
	        this.name = name;
	        this.min = min;
	        this.max = max;
	        this.patternInfo = patternInfo;
	        this.inputPattern = inputPattern;
	        this.validPattern = validPattern;
	    }
	}
	
////////////////////////////////	
// 전역 변수 	
	// RULE 클래스 객체들을 input필드요소의 id로 매핑한 객체 초기화 
	var INPUT_RESTRICTION = {
	    inputId: new RULE(true, '아이디는 ', 2, 15, '2자 이상 15자 이하의\n영문 소문자/숫자 형식', /[^a-z0-9]/g, /[a-z0-9]{2,15}$/),
	    inputPw: new RULE(true, '비밀번호는 ', 6, 15, '6자 이상 15자 이하의\n영문 대소문자/숫자 형식', /[^a-zA-Z0-9]/g, /[a-zA-Z0-9]{6,15}$/ ),
	    inputPwCheck: new RULE(true, '비밀번호 확인은 ', 6, 15, '6자 이상 15자 이하의\n영문 대소문자/숫자 형식', /[^a-zA-Z0-9]/g, /[a-zA-Z0-9]{6,15}$/),
	    inputName: new RULE(true, '이름은 ', 2, 5, '2자 이상 5자 이하의\n한글 형식', /[^ㄱ-ㅎㅏ-ㅣ가-힣]/g,/[가-힣]{2,5}$/),
	    inputPhone2: new RULE(true, '핸드폰번호는 ', 4, 4, '4자리의 숫자 형식', /[^0-9]/g, /[0-9]{4}$/),
	    inputPhone3: new RULE(true, '핸드폰번호는 ', 4, 4, '4자리의 숫자 형식', /[^0-9]/g, /[0-9]{4}$/),
	    inputPostNo: new RULE(false, '우편번호는 ', 7, 7, '000-000 형식', /[^0-9-]/g, /\d{3}-\d{3}$/),
	    inputAddress: new RULE(false, '주소는 ', 1, 30, '1자 이상 30자 이하의\n한글, 영문 대소문자, 숫자, "-" 형식', /[^0-9a-zA-Zㄱ-ㅎㅏ-ㅣ가-힣\s-]/g,/[0-9a-zA-Z가-힣\s-]{1,30}$/),
	    inputCompany: new RULE(false, '회사명은 ', 1, 20, '1자 이상 30자 이하의\n한글, 영문 대소문자, 숫자, "-" 형식', /[^0-9a-zA-Zㄱ-ㅎㅏ-ㅣ가-힣\s-]/g, /[0-9a-zA-Z가-힣\s-]{1,30}$/)
	};

	// 중복확인이 완료된 아이디 ('' 이면 중복확인 안됨 )
	var CHECKED_ID =''
	// 자주사용하는 요소선택함수
	var idFind = (elementId)=>document.getElementById(elementId)
	// 유효성검사해야되는 타겟 인풋 필드들
	var targetInputs = document.querySelectorAll('input[type="text"], input[type="password"]')
/////////////
	// 전역변수 끝//
//////////////////////////////////////////////////////////////
	
	// 타겟 필드 입력들어올 시 형식 안맞는 입력값들 삭제 함수 
	var inputRestrict = function(e){
			var input = e.target
		   var regExp = INPUT_RESTRICTION[input.id].inputPattern
		    if (regExp.test(input.value)) {
		    	input.value = input.value.replace(regExp, '');
		    }
			if(input.id === 'inputPwCheck' || input.id === 'inputPw'){
				var pw = idFind('inputPw')
				var pwChk = idFind('inputPwCheck')
				
				if(pw.value === '' || pwChk.value === ''){
					$j('#pwCheckSpan').removeClass().text('')
				}else{
					if(pw.value === pwChk.value){
						$j('#pwCheckSpan').removeClass().addClass('pass').html('비밀번호 <b>일치</b>')
					}else{
						$j('#pwCheckSpan').removeClass().addClass('fail').html('비밀번호 <b>불일치</b>')
					}					
				}
			}
		}
	// 각 타겟 필드들에 inputRestrict 이벤트 핸들러 함수 등록
	targetInputs.forEach(input =>input.addEventListener('input',inputRestrict))
	
	// 'join' 링크 클릭시 이벤트 핸들러 함수 등록
	$j('#submitLink').on('click',function(e){
		e.preventDefault()
		
		for(var i=0; i<targetInputs.length; i++){
			var failMsg = inputChecker(targetInputs[i])
			if(failMsg){
				alert(failMsg)
				targetInputs[i].focus()
				return
				}
			}
		
		var inputId = idFind('inputId')
		if(CHECKED_ID === '' || CHECKED_ID !== inputId.value){
				alert('아이디 중복확인이 필요합니다.')
				idFind('idCheckBtn').focus()
				return
			}
		
   	   	var formData = {}
	    $j('#joinForm').serializeArray().forEach((input)=>{
	   		formData[input.name]=input.value.trim()	
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
					if(res.errorCode === 'duplicateId'){
						CHECKED_ID=''
						alert('중복된 아이디입니다. 아이디를 다시 확인해주세요.')
						inputId.focus()
						return
						}
					alert('에러가 발생하였습니다.')
					}
				},
			error		: function(xhr, status, error) {
	         	alert(error)
	        	}
			})
		})

		

	// 인풋 요소를 인자로 받아 조건에 맞춰 에러메시지를 반환하는 함수
	// 요소 하나당 순차적으로 아래 내용 검증하는 퍼널형 구조
	// 1. 공백값 체크및 허용여부 --> 2. 입력조건 준수여부(글자수, 패턴) --> 3. 비밀번호 요소일시 비번체크여부
	// 반환값이 '' 이면 통과
	var inputChecker = function(input){
		var rule = INPUT_RESTRICTION[input.id]
		
		// 입력값 미입력 여부 체크
		if(input.value.trim() === ''){
			if(rule.isEssential){
				return rule.name + '필수 입력값입니다.'
				}
			return ''
		}
		
		if(isInvalid(input)){
			return rule.name + rule.patternInfo + '으로 입력하셔야 합니다.'
			}
		
		if(input.id === 'inputPwCheck' && input.value !== idFind('inputPw').value){
			return '동일한 비밀번호를 입력하셔야 합니다.'	
			}
		}
	
	// inputChecker 함수가 
	//2. 입력조건 준수여부(글자수, 패턴) 검사시 호출하는 콜백함수 (true or false 반환)
	var isInvalid = function(input){
		var rule = INPUT_RESTRICTION[input.id]
		var val = input.value
		
		return !rule.validPattern.test(val)
		}
	


	
	// '중복확인' 버튼 클릭시 중복여부 확인하여 확인하는 함수
	// 전역변수 CHECKED_ID에 값 할당하는함수
	$j('#idCheckBtn').on('click', function(){
		var input = idFind('inputId')
		var failMsg = inputChecker(input)
		if(failMsg){
			alert(failMsg)
			input.focus()
			return
		}
		
		CHECKED_ID = ''
 		$j.get('/api/user/join/duplicateCheck.do?userId='+input.value)
 		.done(res=>{
 			if(res.result === "success"){
 				if(res.isDuplicate === "true"){
 					alert("이미 사용중인 아이디입니다.")
 					input.focus()
 				}else if(res.isDuplicate === "false"){
 					alert("사용 가능한 아이디입니다.")
 					CHECKED_ID = input.value
 					for (var i=0; i<targetInputs.length; i++){
 						if(inputChecker(targetInputs[i])){
 							targetInputs[i].focus()
 							return
 						}
 					}
 					findId('submitLink').focus()
 				}	
 			}else{
 					alert('에러가 발생하였습니다.')
 			}
 		})
 		.fail(res=>alert('에러가 발생하였습니다.'))
    });
	

	
	
})
</script>
<body>
	<form id="joinForm">
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
								<td align="center" width="120" >
									id*
								</td >
								<td width="260">
									<input class="userInput" name="id" value="" id="inputId" type="text" maxlength="15"  style="height: 22px;"/>
									<input type="button" id="idCheckBtn" value="중복확인" /> 
								</td>
							</tr>
							<tr >
								<td align="center"  >
									pw*
								</td >
								<td >
									<input class="userInput"  id="inputPw" name="pw" type="password" maxlength="12" autocomplete="off" style="height: 22px;"/>
								</td>
							</tr>
							<tr>
							<tr >
								<td align="center"  >
									pw check*
								</td >
								<td >
									<input class="userInput" id="inputPwCheck"  autocomplete="off" type="password"  maxlength="12" style="height: 22px;"/>
									<span id="pwCheckSpan" ></span>
								</td>
							</tr>
							<tr >
								<td align="center"  >
									name*
								</td >
								<td >
									<input class="userInput"  id="inputName" name="name" type="text" maxlength="5" style="height: 22px;"/>
								</td>
							</tr>
							<tr>
								<td align="center"  >
									phone*
								</td >
								<td>
									<select  class="userInput"  id="inputPhone1" name="phone1" style="height: 30px;">
										<c:forEach items="${phoneNos}" var="phoneNo">
											<option>
												${phoneNo}
											</option>
										</c:forEach>
									</select>
									-
									<input class="userInput"  id="inputPhone2" name="phone2" type="text" size="4" style="height: 22px; " maxlength="4" />
									-
									<input class="userInput"  id="inputPhone3" name="phone3" type="text" size="4" style="height: 22px; " maxlength="4" />
								</td>
							</tr>
							<tr >
								<td  align="center" >
									postNo
								</td >
								<td >
									<input class="userInput"  id="inputPostNo" maxlength="7" name="addr1" type="text"  style="height: 22px;"/>
								</td>
							</tr>
							<tr >
								<td align="center" >
									address
								</td >
								<td >
									<input  class="userInput"  id="inputAddress"  maxlength="30" name="addr2" type="text"  style="height: 22px;"/>
								</td>
							</tr>
							<tr >
								<td  align="center"  >
									company
								</td >
								<td >
									<input class="userInput"  id="inputCompany" maxlength="20" name="company" type="text"  style="height: 22px;"/>
								</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td align="right">
						<a href="" id="submitLink" >join</a>
					</td>
				</tr>
			</tbody>
		</table>
	</form>
</body>
</html>