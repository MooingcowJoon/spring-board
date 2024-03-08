<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/common/common.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>MBTI 테스트</title>
   <style>
        .eachQuestion input[type="radio"] {
            display: inline-block;
    </style>
</head>
<body>
<script>
    $j().ready(()=>{
    	
    // 전역 변수 정의	
    	// ** 주의 사항 ** pageNo 는 0 인덱싱 (1번째 페이지의 pageNo 는 0)
    	

		// 유저 입력시 점수 반영할 정수 배열 객체 (양수, 음수로 타입 나누고 0일시 알파벳순서대로)
   			// ex ) SOCRE[0] > 0? 'E' (SOCRE[0] < 0 ? 'I' : 'E')
 				// --> 알파벳순서는 따로 아스키코드안쓰고 하드코딩함 
 				// --> 아스키코드로 계산 함
        var USER_INPUT = {
 				E : 0,
				I : 0,
				S : 0,
				N : 0,
				T : 0,
				F : 0,
				J : 0,
				P : 0
 				}

    	// "/mbti.do" 페이지 요청시 최초 한번 실행되는 함수
        var initPage = function(){
   			// 동적 생성 요소에 필요한 인자값(문항내용 등) 서버에 요청
            $j.get('/api/mbti.do?commonCodeType=mbti','json')
            .done(json => {  //json =  Map<String,List<String>> // 문항vo 
    	    	var questionMap=new Map();
    	        for (var key in json) {
    	            if (json.hasOwnProperty(key)) {
    	            	questionMap.set(key, json[key]);
    	            }
    	        }
    	        
    	        
//     	     pageTypesEnum = [['E','I','외향 VS 내향']
//     						,['S','N','감각 VS 직관']
//     						,['T','F','사고 VS 감정']
//     						,['J','P','판단 VS 인식']]

	    			// 각 페이지별 정적 요소 이넘
		    	var MBTI_TYPES =[
		    				//긍정타입, 부정타입, 페이지 타이틀
							['E','I','외향 VS 내향']
							,['I','E','외향 VS 내향']
							,['S','N','감각 VS 직관']
							,['N','S','감각 VS 직관']
							,['T','F','사고 VS 감정']
							,['F','T','사고 VS 감정']
							,['J','P','판단 VS 인식']
							,['P','J','판단 VS 인식']]
													
			    
    	        for (var i = 0; i < MBTI_TYPES.length; i+=2) {
    	        	
    	        	// i가 페이지번호를 뜻함
    	        	var pageNo = (i/2)
    	        	var positiveType = MBTI_TYPES[i][0]
    	        	var negativeType = MBTI_TYPES[i][1]	 
 	        		 // 'E' 에 해당하는 문항들
 	        		 
 	        		 // 'E' 문항이 들어갈 페이지
 	        		 var page = $j('#questionPage-'+pageNo)
 	        		 page.attr('pageTitle',MBTI_TYPES[i][2])
 	        		 page.attr('positiveType',positiveType)
 	        		 page.attr('negativeType',negativeType)
 	        		 
 	        	     var typeArr =  [positiveType, negativeType]		 
 	        			var indexCnt = 0
    	        	 for (var j=0; j<typeArr.length; j++){
    	        		 	questions= questionMap.get(typeArr[j])
    	        		 	
  	        		   		 questions.forEach(function(questionString,questionIndex){
	   	        		   		page.append(generateQuestions(positiveType
					 						,negativeType
					 						,questionString
					 						,++indexCnt
					 						,pageNo))
		   	        		 })
	    	        	 }
    	        	 }
    	        // 첫째페이지 디스플레이
    	       	pageShow(0)
    	    	
    	    })// 에러시 alert띄움
             .fail(json=>alert(json))
        }

        
        // 이전 버튼 눌렀을 때 이벤트 핸들러 함수 
        $j('#btn-prev').on('click',function(){
        	var pageNo = $j('.questionPage').index($j('.questionPage:visible'))
        	pageShow(parseInt(pageNo)-1)
        })
        
        // 다음 버튼 눌렀을 때 이벤트 핸들러 함수 
        $j('#btn-next').on('click',function(){
        	var pageNo = $j('.questionPage').index($j('.questionPage:visible'))
        	
        	var uncheckedInput= getUncheckedInputByPageNo(pageNo)

        	if(uncheckedInput.length > 0){
        		alertAndFocus(uncheckedInput[0])
        		return
        	}
        	
        	pageShow(parseInt(pageNo) +1 )
			
        })
        
		// 페이지 번호를 받아서 해당 페이지 보여주는 함수 (4개 페이지 중 하나)
        function pageShow(pageNo){
			// 일단 4개 페이지 모두 숨기기
        	$j('.questionPage').hide()
        	
        	// page
        	if(pageNo==4){
        		finalSubmit()
        		return
        	}
			var pageTitle = '단계 '+(pageNo+1)+$j('#questionPage-'+pageNo).attr('pageTitle')
        	$j('#pageTitle').text(pageTitle)
        	checkSum(pageNo)
        	
        	if(pageNo==0){
        	$j('#btn-prev').prop('disabled', true);
        	}else{
        		$j('#btn-prev').prop('disabled', false);
        	}
        	if(pageNo==2){
        	$j('#btn-next').val('다음')
        	}
        	
        	if(pageNo==3){
        	$j('#btn-next').val('완료')
        	}

        	$j('#questionPage-'+pageNo).show()
        	$j('html, body').animate({ scrollTop: 0 }, 'fast');
        }
        
        
        // 최종 응답 제출해서 결과창 생성하여 표시하는 함수 
        function finalSubmit(){
				// 입력값 참고용으로 출력        	
				console.log(JSON.stringify(USER_INPUT))   
				
				
        	   $j.ajax({
		        type: "POST",
		        url: '/api/mbti/submit.do',
		        data: JSON.stringify(USER_INPUT),
		        contentType: "application/json",
		        success: function(response) {
		        	$j('#pageTitle').text('결과 : '+response)
		        	$j('h4').remove()
		        	$j('input[type="button"]').remove() 
		        },
		        error: function(xhr, status, error) {
		         	alert(error)
		        }
  				});
   /*       	// 배열내 인덱스와 타입 매핑
        	var range = [['E','I']
         				,['S','N']
         				,['T','F']
         				,['J','P']]
       		
         	// SCORE 배열의 요소값이 0일 경우 기본값(알파벳 순서)
        	var MBTI = ['','','','']
         	
         	// SCORE 배열로 계산하여 MBTI 배열값 대입
        	for (var i = 0; i < SCORE.length; i++) {
		  		// SCORE[0] 이 0보다 크면 range[0][0] 인 'E' 대입        		
        	    if(SCORE[i]>0){
        	    	MBTI[i]=range[i][0]
        	    }else if(SCORE[i]<0){
        	    	MBTI[i]=range[i][1]
        	    }else if(SCORE[i] === 0){
        	    	var type1 = range[i][0]
        	    	var type2 = range[i][1]
        	    	MBTI[i]= type1.charCodeAt(0) < type2.charCodeAt(0) ? type1 : type2 
        	    }
        	}
         	
         	// 배열 join으로 스트링 만들어서 결과창에 표시 
        	$j('#pageTitle').text('결과 : '+MBTI.join(''))
        	
        	// 쓸데없는 요소들 삭제
        	$j('h4').remove()
        	$j('input[type="button"]').remove() */
        }


        
        // 라디오 요소 동적으로 생성하는 함수
        var generateQuestions = function(positiveType
        									,negativeType
        									,questionString
        									,questionIndex
        									,pageNo){
        	var questionId = "question-"+pageNo+'-'+(questionIndex)
        	var qustionText = questionString
        	
            var html = '<div class="eachQuestion" id='+questionId+' pageNo='+pageNo+'>';
                html += '<p class="question-title">문항 '+questionIndex+' ) '+qustionText+'</p>';
          	// 라디오 인풋 요소 생성에 쓰일 정적 요소 이넘
          	var answerArr =[
          		   '매우 동의',
          		   '동의',
          		    '약간 동의',
          		    '모르겠음',
          		    '약간 비동의',
          		    '비동의',
          		    '매우 비동의'
          		];
          	// 라디오버튼 생성 반복문 (1번부터 7번까지 생성)
           	for (var i = 0; i < answerArr.length; i++) {
            	
                var ansText = answerArr[i];
            	var radioId = questionId +'-radio-'+i
            	
            	
                html += '<input type="radio" positiveType='+positiveType+' negativeType='+negativeType+' id='+radioId+ ' name='+questionId+' value='+(i+1)+'>';
                html += '<label for='+ radioId +'>' +ansText+ '</label>';
            }
                html += '</div>';
            return html;
    		}
    	
 
    	// 동적으로 생성된 라디오 버튼 클릭시 발생하는 이벤트
    	// 이벤트핸들러 함수는 정적요소인 form div에 등록
      $j('#form').on('click', 'input[type="radio"]', function() {
	    
    	// 클릭이벤트 타겟인 라디오인풋 this의 클릭 점수 (제이쿼리통해 가져옴) in {-3,-2,..,3}
   	  	var selectedValue = $j(this).val();
	    
   	  	// 조상중 가장 가까운 eachQuestion 클래스 요소(라디오묶음)
	    var questionElement = $j(this).closest('.eachQuestion')
	    
	    // eachQuestion 요소의 속성으로부터 pageNo 획득 (좀더 조상요소에 놔도되는데 일단 여기다둠)
	    var pageNo = $j(this).closest('.eachQuestion').attr('pageNo');
		
   	  	// 유저선택결과 반영
	    checkSum(pageNo)
		});
  		
    	
    	// 특정 페이지의 라디오인풋 결과를 계산하고 이를 반영하는 함수
  		function checkSum(pageNo){
  			
    		// 제이쿼리 페이지 요소 
    		var page = $j('#questionPage-'+pageNo)
    		
  			// 체크된 라디오인풋 요소 배열
  			var radios = page.find('input[type="radio"]:checked')
  			
  			var p = page.attr('positiveType')
  			var n = page.attr('negativeType')
  			USER_INPUT[n]=0
  			USER_INPUT[p]=0
  			
  			// 라디오 인풋 배열 순회해서 sum에 합산
  			radios.each(function(){
  				var positiveType= $j(this).attr('positiveType')
  				var negativeType= $j(this).attr('negativeType')
  				
  				var val = $j(this).val() 
  				if(val < 4 ){
  					USER_INPUT[positiveType]+= 4-val 
  				}else if(val > 4){
  					USER_INPUT[negativeType]+= val-4
  				}
  			})
			

  			// sum 값 화면에 출력
  			$j('#currentScore').text(p+' = '+USER_INPUT[p]+', '+n+' = '+USER_INPUT[n])
  		}
  		
    	
    	// 체크하지 않은 라디오 요소 배열반환하는 함수
  		function getUncheckedInputByPageNo(pageNo){
  			var questions =  $j('#questionPage-'+pageNo).find('.eachQuestion')
  			var uncheckedQuestions = questions.filter(function() {
				  			    return $j(this).find('input[type="radio"]:checked').length === 0;
				  			})
  			return uncheckedQuestions
  		}
  		
  		
  		
  		
  	    // 경고를 표시하고 포커스를 이동시키는 함수
  	    // param : 특정 페이지 내 체크되지 않은 
  	    function alertAndFocus(uncheckedInput) {
  	    	uncheckedInput = $j(uncheckedInput)
  	    	var msg ='응답하지 않은 문항이 있습니다.'
  	        alert(msg);
  	    	uncheckedInput.focus();
  	        $j('html, body').animate({
  	            scrollTop: uncheckedInput.offset().top
  	        }, 100);
  	    }
  		
  	    // '비응답 문항 랜덤체크' 버튼 클릭시
  	    $j('#btn-randomComplete').on('click',function(){
  	    	//현재페이지
  	    	var pageNo = $j('.questionPage').index($j('.questionPage:visible'))
  			var uncheckedQuestions = $j(getUncheckedInputByPageNo(pageNo))
  			
  			// 응답안한 요소들의 랜덤번째 자식에 하나 체크
  			uncheckedQuestions.each(function(){
  					var randomBetween0And6 = Math.floor(Math.random() * 7);
  					
  					$j(this).find('input[type="radio"]')
  					.eq(randomBetween0And6)
  					.prop('checked',true)
  				})
  				
 			// 체크 결과 반영
 			checkSum(pageNo)
  	    	// '다음' 버튼으로 포커스
  	        $j('#btn-next').focus()
  	    })
  	    
  	    
  	    
  	    // '전체 문항 "모르겠음" 체크' 버튼 클릭시
	   	$j('#btn-checkAllNeutral').on('click',function(){
  	    	var pageNo = $j('.questionPage').index($j('.questionPage:visible'))
  	    	$j('#questionPage-'+pageNo)
  	    	.find('.eachQuestion')
  	    	.each(function(){
  	    			$j(this).find('input[type="radio"]').eq(3).prop('checked',true)
  	    	})
 			checkSum(pageNo)
  	        $j('#btn-next').focus()
  	    })
  	    
  	    
		// 페이지 초기화 함수 실행
        initPage()

    })

</script>
<h2> MBTI 테스트</h2>
<h3 id="pageTitle">단계: </h3>
<h4>현재점수테스트 : <span id="currentScore"></span></h4>
<div class="container">
<input id="btn-randomComplete" type="button" value="비응답 문항 랜덤체크"/>
<input id="btn-checkAllNeutral" type="button" value='전체 문항 "모르겠음" 체크'/>
<form id="form">
    <div id="questionPage-0" class="questionPage" style="display:none;"></div>
    <div id="questionPage-1" class="questionPage" style="display:none;"></div>
    <div id="questionPage-2" class="questionPage" style="display:none;"></div>
    <div id="questionPage-3" class="questionPage" style="display:none;"></div>
</form>
    <div >
        <input id="btn-prev" type="button" value="이전"/>
        <input id="btn-next" type="button" value="다음"/>
    </div>
</div>
</body>
</html>