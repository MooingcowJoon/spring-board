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
    	// ** 현재페이지 ** pageNo 는 0 인덱싱 (1번째 페이지의 pageNo 는 0)
    	var currentPage = 0 
    	// "/mbti.do" 페이지 요청시 최초 한번 실행되는 함수
        var initPage = function(){
   			// 동적 생성 요소에 필요한 인자값(문항내용 등) 서버에 요청
            $j.get('/api/mbti.do?commonCodeType=mbti','json')
            .done(res => {  //json =  Map<String,List<String>> // 문항vo
            	
            	if(res.result === "error"){
            		alert("에러가 발생했습니다.")
            	}else if(res.result === "success"){
            		var json = JSON.parse(res.data)
            		var pageSize = 4
    		    	var questionsPerPage = (json.length/pageSize)
    		    	console.log(json)
		    		for (var i = 0; i < pageSize; i++) {
 	        		var page = $j('#questionPage-'+i)
    	        	var firstLetter = json[i*questionsPerPage].boardTitle
    	        	for(var j= 0; j<questionsPerPage; j++){
    	        		
    	        		var qNo = i*questionsPerPage+j
    	        		var Q = json[qNo]
    	        		var questionText = Q.boardComment
    	        		
    	        		var bothTypesToCompare = Q.boardType
    	        		
    	        		
    	        		var isFirst = Q.boardTitle === firstLetter ? 0 : 1 
	 	        		var html = '<div class="eachQuestion">';
	 	        		html += '<p class="question-title">문항 '+(qNo+1)+' ) '+questionText+'</p>';
    	               
	 	             	var answerArr =[
	 	          		   '매우 동의',
	 	          		   '동의',
	 	          		    '약간 동의',
	 	          		    '모르겠음',
	 	          		    '약간 비동의',
	 	          		    '비동의',
	 	          		    '매우 비동의'
	 	          		]
	 	        		for (var k = 0; k < 7; k++) {
    	                	var radioId = i+'-'+j+'-'+k
    	                    html += '<input type="radio" types='+bothTypesToCompare+' id='+radioId+' name='+qNo+' value='+(k+1)+'>';
    	                    html += '<label for='+ radioId +'>' +answerArr[k]+ '</label>';
    	                }
    	                    html += '</div>';
    	                    page.append(html)
	    	       	}
		    	   }
           		}	
            	pageShow(0)
    	    	
    	    })// 에러시 alert띄움
             .fail(json=>alert(json))
        }

        
        // 이전 버튼 눌렀을 때 이벤트 핸들러 함수 
        $j('#btn-prev').on('click',function(){
        	pageShow(currentPage-1)
        })
        
        // 다음 버튼 눌렀을 때 이벤트 핸들러 함수 
        $j('#btn-next').on('click',function(){
        	var uncheckedInput= getUncheckedInputByPageNo(currentPage)

        	if(uncheckedInput.length > 0){
        		alertAndFocus(uncheckedInput[0])
        		return
        	}
        	
        	pageShow( (currentPage + 1) )
			
        })
        
		// 페이지 번호를 받아서 해당 페이지 보여주는 함수 (4개 페이지 중 하나)
        function pageShow(pageNo){
        	
        	//현재페이지 변수에 인자로받은 pageNo 대입
        	currentPage=pageNo
			// 일단 4개 페이지 모두 숨기기
        	$j('.questionPage').hide()
				        	
        	// pageNo가 4면 최종제출
        	if(pageNo==4){
        		finalSubmit()
        		return
        	}
        	
        	//페이지에 나타낼 타이틀 배열
        	var titleArr = ['외향 VS 내향','감각 VS 직관','사고 VS 감정','판단 VS 인식']
        	
			var pageTitle = '단계 '+(pageNo+1)+': '+titleArr[pageNo]
        	$j('#pageTitle').text(pageTitle)
        	
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
        		
        	// 리퀘스트 바디에 담을 자바스크립트 배열(객체) 선언
        		var params = []
        		
        		// 각 질문 div객체에서 major타입, minor타입, 그리고 컨트롤러에서 활용할 typeIndex 데이터
        		// 자바스크립트 객체에 딕셔너리 형태로 담아서 params에 삽입 
        		$j('input[type="radio"]:checked').each(function(){
        			
        			params.push({
        					checkedRadioValue : $j(this).val(),
        					types : $j(this).attr('types')
        				})
        			})
        			
        	/* 		var checkedRadioValue = $j(this).find('input[type="radio"]:checked').val()
					var major = $j(this).attr('major')
					var minor = $j(this).attr('minor')
					var typeIndex = $j(this).attr('typeIndex')
					params.push({
						checkedRadioValue : checkedRadioValue,
						major : major,
						minor : minor,
						typeIndex : typeIndex
					}) */
					
					
				console.log('JSONparam(in RequestBody) = ' + JSON.stringify(params))
        	   $j.ajax({
		        type: "POST",
		        url: '/api/mbti/submit/java.do',
		        data: JSON.stringify(params),
		        contentType: "application/json",
		        success: function(response) {
					var result = response.result
					
					if(result === 'success'){
												
						var mbti= response.data
						$j('#pageTitle').text('결과 : '+mbti)
			        	$j('h4').remove()
			        	$j('input[type="button"]').remove() 
					}else if(result === 'error'){
			        	$j('#pageTitle').text('에러가 발생했습니다.')
			        	console.log(result.errorMessage)
			        	$j('h4').remove()
			        	$j('input[type="button"]').remove()
					}
		        },
		        error: function(xhr, status, error) {
		         	alert(error)
		        }
  				});

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
  	    	var pageNo = currentPage
  			var uncheckedQuestions = $j(getUncheckedInputByPageNo(pageNo))
  			
  			// 응답안한 요소들의 랜덤번째 자식에 하나 체크
  			uncheckedQuestions.each(function(){
  					var randomBetween0And6 = Math.floor(Math.random() * 7);
  					
  					$j(this).find('input[type="radio"]')
  					.eq(randomBetween0And6)
  					.prop('checked',true)
  				})
  	    	// '다음' 버튼으로 포커스
  	        $j('#btn-next').focus()
  	    })
  	    
  	    
  	    
  	    // '전체 문항 "모르겠음" 체크' 버튼 클릭시
	   	$j('#btn-checkAllNeutral').on('click',function(){
  	    	var pageNo = currentPage
  	    	$j('#questionPage-'+pageNo)
  	    	.find('.eachQuestion')
  	    	.each(function(){
  	    			$j(this).find('input[type="radio"]').eq(3).prop('checked',true)
  	    	})
  	        $j('#btn-next').focus()
  	    })
  	    
  	    
		// 페이지 초기화 함수 실행
        initPage()

    })

</script>
<h2> MBTI 테스트</h2>
<h3 id="pageTitle">단계: </h3>
<!-- <h4>현재점수테스트 : <span id="currentScore"></span></h4> -->
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