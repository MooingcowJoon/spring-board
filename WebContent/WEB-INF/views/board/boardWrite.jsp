<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/common/common.jsp"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>boardWrite</title>
<style>
.checked{
background-color:skyblue;
}
</style>
</head>
<script type="text/javascript">


$j(document).ready(function(){
	class BoardVo {
	    constructor(boardType, boardNum, boardTitle, boardComment, creator, modifier, totalCnt, createTime, modifiedTime) {
	        this.boardType = boardType;
	        this.boardNum = boardNum;
	        this.boardTitle = boardTitle;
	        this.boardComment = boardComment;
	        this.creator = creator;
	        this.modifier = modifier;
	        this.totalCnt = totalCnt;
	        this.createTime = createTime;
	        this.modifiedTime = modifiedTime;
	    }
	}
	
	
	// boardVo js 객체 배열 가져오는 함수
	function getForms(){
		var forms = [];
		$j('.inputRow').each(function(index,el){
			el=$j(el)
			var boardType = el.find('select').val()
			var title = el.find('input[type="text"]').val()
			var comment = el.find('textarea').val()
			forms.push(new BoardVo(boardType,0,title,comment,$j('#creatorId').text(),'',0,'',''))
		})
		return forms
		
	}	
	
	    // 행 추가 버튼 클릭 이벤트
	$j('#rowAppend').on('click', () => {
		var inputRows = $j('.inputRow')
	    if (inputRows.length == 5 ) {
	        alert("더 이상 행을 추가할 수 없습니다.");
	        return;
	    }
	
	    $j('#creatorRow').before(generateRow());
	});

    // 행 삭제 버튼 클릭 이벤트
   $j('#rowRemove').on('click', () => {
       var rows = $j('.inputRow');
    	var chkRows = $j('.inputRow').has('input[type="checkbox"]:checked')
	   if(rows.length === 1){
       	alert("더 이상 삭제하실 수 없습니다.");
       	return;
       }
	   
    	var targetRows=$j([])	   
   			   
	   if(chkRows.length>0){
		   targetRows=chkRows
	   }else{
		   targetRows.push(rows.last())
	   }
	   if(targetRows.length >= rows.length){
		   alert("더 이상 삭제하실 수 없습니다.");
		   return
	   }
        var isWriting = false;
        targetRows.each(function(){
    		var titleInputField = $j(this).find('input[type="text"]')
    		var commentInputField = $j(this).find("textarea")
    		if (titleInputField.val().trim() !== '' ||  commentInputField.val().trim() !== '' ){
    			isWriting = true;
    		}
        })
        
        var deleteConfirm= true
        
        if(isWriting){
        	deleteConfirm = confirm("작성중인 글이 있습니다. 선택하신 폼을 정말 삭제하시겠습니까?")? true : false
        }
        
        deleteConfirm && targetRows.each((i,el)=>el.remove())
        
    });


 // 새로운 행을 생성하는 함수
    function generateRow() {
	 	optionsHTML=$j('.inputRow').eq(0).find('.typeSelect').html()
		html =`<tr class="inputRow">
	    	<td ><input type="checkbox" value="check"></input></td>
	        <td >
	        	<table>
	        		<tr>
	        		<td><label for="boardType">분류: </label>  <select name="boardType" class="typeSelect">`
	        		
	        		
	    html+=optionsHTML
	    
	    html += `</select></td></tr>
    		<tr>
    		<td>
    		                                        <label for="boardTitle">제목: </label>
                <input name="boardTitle" type="text" size="50" >
    		</td>
    		</tr>
    		<tr>
    		<td>
    		 <label for="boardComment" style="vertical-align: top;">내용: </label>
                <textarea name="boardComment" rows="20" cols="50"></textarea>
    		</td>
    		</tr>	
    	</table>
    </td>
</tr>`
        return html
    }

    // 작성버튼 누를시 
    $j('#submit').on('click', function() {
    	
    	// 널인풋첵 함수 호출해서 널인풋 있는 필드 요소 반환받음
        var nullInputField = nullInputCheck();
        
    	// 널인풋 필드 요소 널아니면 안내문과 포커스 함수 실행
        if (nullInputField !== null) {
            alertAndFocus(nullInputField);
            return;
        }

		// 다중 폼 BoardVo 객체 배열로 반환하는 함수
        var forms = getForms()
        
        // BoardVo 클래스의 boardList 멤버변수(List<BoardVo>) 를 담을 키:값 형태로 담을 오브젝트 params(맵도됨)
        var params = {
        		boardList : forms
        }
        console.log("===================================")
        console.log("'작성' 버튼 클릭시 ajax요청바디 (JSON) : ")
        console.log(JSON.stringify(params))
        console.log("===================================")
        // ajax로 json으로 객체배열 바디에 담아 포스트요청보냄
        $j.ajax({
            url: "/board/boardWriteAction.do",
            data: JSON.stringify(params),
            contentType: "application/json",
            dataType: "json",
            type: "POST",
            success: function(data, textStatus, jqXHRt) {
                if (data.result === "success") {
         		    alert("작성완료");
                }else{
                	alert("에러 발생")
                }
                    var pageNo = $j('#pageNo').val();
                    var pageSize = $j('#pageSize').val();
                    var url = "/board/boardList.do"
                    location.href = url;
            },
            error: function(jqXHR, textStatus, errorThrown) {
                alert("실패");
            }
        });
    })

    // 입력 필드가 비어 있는지 확인하는 함수
    function nullInputCheck() {
    	var nullInputField = null
    	$j('.inputRow').each(function(index, row){
    		row = $j(row)
    		var titleInputField = row.find('input[type="text"]')
    		var commentInputField = row.find('textarea')

    		if (titleInputField.val().trim() === ''){
    			nullInputField = titleInputField
    		}
    		if( commentInputField.val().trim() === '' ){
    			nullInputField =  commentInputField
    		}
    		
    	})
    	return nullInputField
    }

    // 경고를 표시하고 포커스를 이동시키는 함수
    function alertAndFocus(nullInputField) {
        var msg = '';
        if (nullInputField.is('input')) {
            msg = '제목을 입력하셔야 합니다.';
        } else {
            msg = '내용을 입력하셔야 합니다.';
        }
        alert(msg);
        nullInputField.focus();
    }

    $j('#toList').on('click',()=>{
        var url = "/board/boardList.do"
        location.href = url;
    })
    
    
        // 인풋로우 클릭시 발생이벤트
	$j('#formContainer').on('click', '.inputRow', function(e) {
			var target= $j(e.target)
			if(target.is('input[type="text"]')|| target.is('textarea') || target.is('select')){
				return
			}
			
			checkRow(this,!$j(this).hasClass('checked'))
		});
    
    
    function checkRow(row, isChecked){
    	row = $j(row)
    	 var checkbox = row.find('input[type="checkbox"]');
 		 checkbox.prop('checked', isChecked);
 		 row.toggleClass('checked',isChecked)
    }
    
    function isAllChecked(){
    	var isAllChk = true
    	$j('.inputRow').each(function(){
    		if(!$j(this).hasClass('checked')){
    			isAllChk =  false
    		}
    	})
    	return isAllChk
    }
    
    $j('#checkAll').on('click',()=>{
   		var check = !isAllChecked()
 	    $j('.inputRow').each(function(index,row){
	    	checkRow(row,check)
    	})
    })    
});



</script>
<body>
    <form class="boardWrite" id="formContainer">
        <input type="hidden" id="pageNo" name="pageNo" value="${pageNo}">
        <input type="hidden" id="pageSize" name="pageSize" value="${pageSize}">
        <table align="center">
            <tr align="right">
                <th>행 추가 및 삭제</th>
            </tr>
            <tr align="right">
                <td>
                	<input id="checkAll" type="button" value="전체선택/해제">
                    <input id="rowAppend" type="button" value="+">
                    <input id="rowRemove" type="button" value="-">
                </td>
            </tr>
            <tr>
                <td>
                    <table border="1">
                        <tr class="inputRow">
                        	<td ><input type="checkbox" value="checked"></input></td>
                            <td >
                            	<table>
                            		<tr>
                            		<td><label for="boardType">분류: </label>
                                        <select name="boardType" class="typeSelect">
										<c:forEach items="${commonCodeList}" var="code" >
											<option value="${code.codeId}">${code.codeName}</option>
										</c:forEach>
                                        </select></td>
                            		</tr>
                            		<tr>
                            		<td>
                 		              	<label for="boardTitle">제목: </label>
                                        <input name="boardTitle" type="text" size="50" value="${board.boardTitle}" >
                            		</td>
                            		</tr>
                            		<tr>
                            		<td>
                            		 <label for="boardComment" style="vertical-align: top;">내용: </label>
                                        <textarea name="boardComment" rows="20" cols="50">${board.boardComment}</textarea>
                            		</td>
                            		</tr>	
                            	</table>
                            </td>
                        </tr>
                        <tr id="creatorRow">
                            <td colspan="1">작성자 </td>
                            <td id="creatorId">${user.name}</td>
                        </tr>
                        <tr>
                            <td align="right" colspan="2">
                                <input id="submit" type="button" value="작성">
                                <input id="toList" type="button" value="목록">
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </form>
</body>

</html>