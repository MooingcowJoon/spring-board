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
			phone 		=> 	inputPhone-1	: 셀렉트로 국번 선택,
							inputPhone-1,2	: 각각 4 자의 숫자,
			postNo		=>	inputPostNo		: '000-000' 형태의 숫자/'-',
			address		=>	inputAddress	: 1 ~ 30 자의 한글/영문 대소문자/'-',
			company		=> 	inputCompany	: 1 ~ 20 자의 한글/영문 대소문자/숫자/'-'
			}
	*/
	function inputValidation(input){
		input = $j(input)
		
		var val = input.val()
		
		var minLen
		var maxLen
		var regExp
		
		var inputId = input.attr('id')
		
		if(inputId === 'inputId'){
			minLen = 2
			maxLen = 15
			regExp = /^[a-z0-9]+$/
		}else if(inputId === 'inputPw' || inputId === 'inputPwCheck'){
			minLen = 6
			maxLen = 12
			regExp = /^[a-zA-Z0-9]+$/
		}else if(inputId === 'inputName'){
			
		}
		
		if (val.trim() === ''){
			input.closest('tr').find('span').removeClass('pass').addClass('fail')
			return false
		}
		
		
		
	}
	
	$j('#form').on('input','input[type="text"], input[type="password"]', function() {
	    var text = $j(this).val();
	    if(text.length===0){
	    	return
	    }
	    // 각 인풋 요소들에 맞게 할당될 정규표현식 객체 선언
	    
	    
	   
	    
	    var inputType = $j(this).attr('class')
	    var regex
	    if(inputType === 'inputId'){
	    	regex = /^[a-z0-9]+$/
	    }else if( inputType === 'inputPw'){
	    	regex = /^[a-zA-Z0-9]+$/
	    }else if ( inputType === 'inputPhone'){
	    	regex = /^[0-9]+$/
	    }else if(inputType === 'inputPostNo'){
	    }
	    
	    if (!regex.test(text)) {
	        // 영문 소문자와 숫자가 아닌 경우
	        $j(this).closest('tr').next().find('span').removeClass('pass').addClass('fail')
	    }else{
	    	$j(this).closest('tr').next().find('span').removeClass('fail').addClass('pass')
	    }
	    console.log(text)
	});
	
})
</script>
<body>
	<table align="center" >
	<tbody>
		<tr>
			<td >
				<a href="/board/boardList.do">list</a>
			</td>
		</tr>
		<tr>
			<td>
				<table id="form" border="1">
						<tr >
							<td align="center" width="120" rowspan="2">
								id
							</td >
							<td>
								<input class="inputId"  id="inputId" type="text" maxlength="15"  style="height: 22px;"/>
								<input type="button"  value="중복확인" /> 
							</td>
						</tr>
						<tr>
							<td style="border:none;" align="center">
								<span>
									<b>
									2 ~ 15</b> 자의 
									<b>
									영문 소문자/숫자
									</b>
								</span>
							</td>
						</tr>
						<tr >
							<td align="center"  rowspan="2">
								pw
							</td >

							<td >
								<input  id="inputPw" type="password"  style="height: 22px;"/>
							</td>
						</tr>
						<tr>
							<td style="border:none;" align="center">
								<span>
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
								<input id="inputPwCheck" class="inputPw" id="inputPwCheck" type="password"  style="height: 22px;"/>
							</td>
						</tr>
						<tr>
							<td style="border:none;" align="center">
								<span>
									<b>동일한 비밀번호</b>
								</span>
							</td>
						</tr>
						<tr >
							<td align="center"  rowspan="2">
								name
							</td >
							<td >
								<input id="inputName" type="text"  style="height: 22px;"/>
							</td>
						</tr>
						<tr>
							<td style="border:none;" align="center">
								<span>
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
								<select id="inputPhone-1" name="phone-1" style="height: 30px;">
									<option>
										010
									</option>
									<option>
										011
									</option>
								</select>
								-
								<input id="inputPhone-1" class="inputPhone" type="text" size="4" style="height: 22px; " maxlength="4" />
								-
								<input id="inputPhone-2" class="inputPhone" type="text" size="4" style="height: 22px; " maxlength="4" />
							</td>
						</tr>
						<tr>
							<td style="border:none;" align="center">
								<span>
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
								<input id="inputPostNo" type="text"  style="height: 22px;"/>
							</td>
						</tr>
						<tr>
							<td style="border:none;" align="center"> 
								<span>
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
								<input id="inputAddress" type="text"  style="height: 22px;"/>
							</td>
						</tr>
						<tr>
							<td style="border:none;" align="center">
								<span>
									<b>
									1 ~ 30 
									</b>자의 
									<b>
									한글/영문 대소문자/'-'
									</b>
								</span>
							</td>
						</tr>
						<tr >
							<td  align="center"  rowspan="2">
								company
							</td >
							<td >
								<input id="inputCompany" type="text"  style="height: 22px;"/>
							</td>
						</tr>
						<tr>
							<td style="border:none;" align="center">
								<span>
									<b>
									1 ~ 20 
									</b>자의 
									<b>
									한글/영문 대소문자/숫자/'-'
									</b>
								</span>
							</td>
						</tr>
				</table>
			</td>
		</tr>
		<tr>
			<td align="right">
				<a href="">join</a>
			</td>
		</tr>
	</tbody>
	</table>
</body>
</html>