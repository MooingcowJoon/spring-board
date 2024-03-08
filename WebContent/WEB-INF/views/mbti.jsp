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
        }
    </style>
</head>
<body>
<script>
    $j().ready(()=>{
		
    	var answerEnum =[
    		   [1,'매우 동의',3],
    		   [2,'동의',2],
    		    [3,'약간 동의',1],
    		    [4,'모르겠음',0],
    		    [5,'약간 비동의',-1],
    		    [6,'비동의',-2],
    		    [7,'매우 비동의',-3]
    		];
    	var pageTypesEnum =[['EI','IE'],['SN','NS'],['TF','FT'],['JP','PJ']]
    		
    		
    		
    	// 페이지 No는 제로인덱싱 (첫번째 페이지 = 0)
        var pageNo = 0;
        var SCORE = [0,0,0,0]
		
        
		
        var initPage = function(){
            pageNo = 0;
            var pageNo = 0;
            var SCORE = [0,0,0,0]
            $j('.questionPage').empty()
            $j.get('/api/mbti.do?commonCodeType=mbti','json')
    	    .done(json => {
    	    	var questionMap=new Map();
    	        for (var key in json) {
    	            if (json.hasOwnProperty(key)) {
    	            	questionMap.set(key, json[key]);
    	            }
    	        }
    	        
    	        
    	        // in [['EI','IE'],['SN','NS'],['TF','FT'],['JP','PJ']]
    	        for (var i = 0; i < pageTypesEnum.length; i++) {
    	        	
    	        	// i가 페이지번호를 뜻함
    	        	var pageNo = i
    	        	var typesArr =pageTypesEnum[i]
    	        	
    	        	
    	        	// in ['EI','IE']
    	        	 for (var j = 0; j < typesArr.length; j++) {
    	        		 
    	        		 // mbtiType = 'EI'
    	        		 var mbtiType = typesArr[j]
    	        		 // 'EI' 에 해당하는 문항들
    	        		 questions= questionMap.get(mbtiType)
    	        		 // 'EI' 문항이 들어갈 페이지
    	        		 var page = $j('#questionPage-'+i)
    	        		 // 문항번호 가중치
    	        		 var weight= questions.length * j
    	        		 
    	        		 questions.forEach(function(q,qNo){
    	        			 page.append(generateQuestions(answerEnum,q,qNo,weight,pageNo))
    	        		 })
    	        	 }
    	        }
    	        // 첫째페이지 디스플레이
    	        $j('#questionPage-0').show()
    	    })
             .fail(json=>alert(json))
        }
		
        initPage()
    	
    	
        var generateQuestions = function(answerEnum,q,qNo,weight,pageNo){
        	var questionId = "question-"+q.boardType+'-'+qNo
        	var qustionText = q.boardComment
        	var questionType = q.boardType
        	// weight가 0보다 크면 합산 스코어 음수로 계산해야함
        	var isScoreNegative = weight > 0
        	
        	
            var html = '<div class="eachQuestion" id='+questionId+' pageNo='+pageNo+'>';
                html += '<p class="question-title">"'+questionType+'" 문항 '+(qNo+weight+1)+' ) '+qustionText+'</p>';
            for (var i = 0; i < answerEnum.length; i++) {
            	
                var ans = answerEnum[i];
            	var radioId = questionId +'-radio-'+i
            	
            	// 점수 {3,2,1,0,-1,-2,-3} 중하나
            	var ansScore = ans[2]
            	
            	// '매우 동의' 같은거
            	var ansText = ans[1]
            		
            	if( isScoreNegative){
            		ansScore = -ansScore
            	}
            	
                html += '<input type="radio" id='+radioId+ ' name='+questionId+' value='+ansScore+'>';
                html += '<label for='+ radioId +'>' +ansText+ '</label>';
            }
                html += '</div>';
            return html;
    		}
    	
 
//      	$j('#questionPage-1').append(generateQuestions(answerArr)).show()
     	
      $j('#form').on('click', 'input[type="radio"]', function() {
	    // 라디오 버튼이 클릭되었을 때 실행되는 코드 작성
	    var questionId = $j(this).attr('name');
	    var selectedValue = $j(this).val();
	    
	    var questionElement = $j(this).closest('.eachQuestion')
	    
	    var pageNo = $j(this).closest('.eachQuestion').attr('pageNo');
		
	    checkSum(pageNo)
		    // 선택된 값을 처리하는 로직을 추가하세요.
		});
  		
  		function checkSum(pageNo){
  			
  			var sum =0 
  			var qs = $j('#questionPage-'+pageNo).find('input[type="radio"]:checked')
  			console.log(qs)
  			
  			qs.each(function(){
  				sum+=parseInt($j(this).val())
  			})
  			SCORE[pageNo]=sum
  			$j('#currentScore').text(sum)
  		}
    })

</script>
<h2> MBTI 테스트</h2>
<h3 >문항 배치는 랜덤입니다.</h3>
<h4>현재점수테스트 : <span id="currentScore"></span></h4>
<div class="container">
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