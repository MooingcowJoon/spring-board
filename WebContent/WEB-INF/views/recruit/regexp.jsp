<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/common/common.jsp"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<script>
	var validate = function(input, ){
			
	}
	var INPUT_RULE = 
	{
		recruitForm:
		{
			isEssential : true,
			birth	: 	{
					    	TYPE	: 'DATE',
					    	NAME	:	'생년월일을',
							INFO 	: '19000101 ~ 20991231',
							INPUT	:	/[^0-9]/g,
							SUBMIT	:	/^(19\d\d|20\d\d).(0[1-9]|1[0-2]).(0[1-9]|[12][0-9]|3[01])$/
						}, 
			email	: 	{
					    	TYPE	: 'EMAIL',
					    	NAME	:	'이메일주소를',
							INFO 	: 'aaa@aaa.aa',
							INPUT	:	/[^a-zA-Z0-9@.-]/g, 
							SUBMIT	:	/^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/
						}, 
			addr	: 	{
					    	TYPE	: 'TEXT',
					    	NAME	:	'주소를',
							INFO 	: '1 ~ 30자 이상의 문자 및 "-" 기호, 띄어쓰기',
							INPUT	:	/[^a-zA-Z0-9ㄱ-ㅎㅏ-ㅣ가-힣-\s-]/g,
							SUBMIT	:	/^[0-9a-zA-Z가-힣-\s-]{1,30}$/ 
						},
			
		},
		eduForm:
			{
			isEssential : true,
				startPeriod	:{
								TYPE	:	'DATE',
								NAME	:	'재학기간의 시작연월을',
								INFO	:	'190001 ~ 209912',
								INPUT	: 	/[^0-9]/g, 
								SUBMIT	:	/^(19\d\d|20\d\d).(0[1-9]|1[0-2])$/
							},
				endPeriod	:{
								TYPE	:	'DATE',
								NAME	:	'재학기간의 종료연월을',
								INFO	:	'190001 ~ 209912',
								INPUT	:	/[^0-9]/g, 
								SUBMIT	:	/^(19\d\d|20\d\d).(0[1-9]|1[0-2])$/
							},
				schoolName	:{
						    	TYPE	: 'TEXT',
						    	NAME	:	'학교명을',
								INFO 	: '1 ~ 30자 이상의 완성형 숫자, 문자 및 "-" 기호, 띄어쓰기',
								INPUT	:	/[^a-zA-Z0-9ㄱ-ㅎㅏ-ㅣ가-힣-\s-]/g, 
								SUBMIT	:	/^[0-9a-zA-Z가-힣-\s-]{1,30}$/ 
							},
				major		:{
								TYPE	: 'TEXT',
								NAME	:'전공명을',
								INFO 	: '1 ~ 30자 이상의 완성형 숫자, 문자 및 "-" 기호, 띄어쓰기',
								INPUT	:	/[^a-zA-Z0-9ㄱ-ㅎㅏ-ㅣ가-힣-\s-]/g, 
								SUBMIT	:	/^[0-9a-zA-Z가-힣-\s-]{1,30}$/ 
							},
				grade		:{
								TYPE	: 'GRADE',
								NAME	: '평균학점을',
								INFO 	: "'0.00' ~ '4.50' 등의",						
								INPUT	:	/[^0-9]/g,
								SUBMIT	:	/^([0-3]\.\d\d|4\.[0-4][0-9]|4\.50)$/
							}
			},
		carForm:
				{
			isEssential : false,
				startPeriod	:{
								TYPE	:	'DATE',
								NAME	:	'근무기간의 시작연월을',
								INFO	:	'190001 ~ 209912',
								INPUT	: 	/[^0-9]/g, 
								SUBMIT	:	/^(19\d\d|20\d\d).(0[1-9]|1[0-2])$/
				},
				endPeriod	:{
								TYPE	:	'DATE',
								NAME	:	'근무기간의 종료연월을',
								INFO	:	'190001 ~ 209912',
								INPUT	:	/[^0-9]/g, 
								SUBMIT	:	/^(19\d\d|20\d\d).(0[1-9]|1[0-2])$/
							},
				compName	:{
								TYPE	: 'TEXT',
								NAME	:	'회사명을',
								INFO 	: '1 ~ 30자 이상의 완성형 숫자, 문자 및 "-" 기호, 띄어쓰기',
								INPUT	:	/[^a-zA-Z0-9ㄱ-ㅎㅏ-ㅣ가-힣-\s-]/g, 
								SUBMIT	:	/^[0-9a-zA-Z가-힣-\s-]{1,30}$/ 
							},
 				task		:{
			 					TYPE	: 'TEXT',
			 					NAME	:	'부서/직급/직책을',
								INFO 	: 'ex) SI사업부/대리/중급개발자',
								INPUT	:	/[^a-zA-Z0-9ㄱ-ㅎㅏ-ㅣ가-힣-\s-_/]/g, 
								SUBMIT	:	/^[0-9a-zA-Z가-힣-\s-_]+\/[0-9a-zA-Z가-힣-\s-_]+\/[0-9a-zA-Z가-힣-\s-_]+$/ 
							},
				location	:{
								TYPE	: 'TEXT',
								NAME	:	'근무지의 지역을',
								INFO 	: '1 ~ 30자 이상의 완성형 숫자, 문자 및 "-" 기호, 띄어쓰기',
								INPUT	:	/[^a-zA-Z0-9ㄱ-ㅎㅏ-ㅣ가-힣-\s-]/g, 
								SUBMIT	:	/^[0-9a-zA-Z가-힣-\s-]{1,30}$/ 
							}
				},
 		certForm:
			{
 			isEssential : false,
				qualifiName	:{
								TYPE	: 'TEXT',
								NAME	:	'자격증명을',
								INFO 	: '1 ~ 30자 이상의 완성형 숫자, 문자 및 "-" 기호, 띄어쓰기',
								INPUT	:	/[^a-zA-Z0-9ㄱ-ㅎㅏ-ㅣ가-힣-\s-]/g, 
								SUBMIT	:	/^[0-9a-zA-Z가-힣-\s-]{1,30}$/ 
							},
				acquDate	:{
								TYPE	:	'DATE',
								NAME	:	'자격증 취득일을',
								INFO	:	'1900.01 ~ 2099.12',
								INPUT	:	/[^0-9]/g, 
								SUBMIT	:	/^(19\d\d|20\d\d).(0[1-9]|1[0-2])$/
							},
				organizeName	:{
								TYPE	: 'TEXT',
								NAME	:	'자격증 발행지를',
								INFO 	: '1 ~ 30자 이상의 완성형 숫자, 문자 및 "-" 기호, 띄어쓰기',
								INPUT	:	/[^a-zA-Z0-9ㄱ-ㅎㅏ-ㅣ가-힣-\s-]/g, 
								SUBMIT	:	/^[0-9a-zA-Z가-힣-\s-]{1,30}$/
							}
		}
	}

</script>
<body >
</body>
</html>