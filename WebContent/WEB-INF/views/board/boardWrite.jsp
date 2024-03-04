<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/common/common.jsp"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>boardWrite</title>
<link rel="stylesheet" type="text/css" href="/resources/css/board/board.css">
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
	function getForms(){
		var forms = [];
		$j('.formGroup').each(function(index,el){
			el=$j(el)
			var boardType = el.find('select').val()
			var title = el.find('input').val()
			var comment = el.find('textarea').val()
			forms.push(new BoardVo(boardType,0,title,comment,$j('#creatorId').text(),'',0,'',''))
			
		})
		return forms
		
	}	
	
    // 행 추가 버튼 클릭 이벤트
$j('#rowAppend').on('click', () => {
    var container = $j('#formContainer');
    var lastIndex = container.find('.formGroup').length;
    var maxRows = 5;

    if (lastIndex >= maxRows) {
        alert("더 이상 행을 추가할 수 없습니다.");
        return;
    }

    container.append(generateRow());
});

    // 행 삭제 버튼 클릭 이벤트
   $j('#rowRemove').on('click', () => {
            var forms = $j('.formGroup');
            if(forms.length === 1){
            	alert("더 이상 삭제하실 수 없습니다.");
            	return;
            }
            
        var checkedForms = $j('.formGroup.blueBackground');
		
        var deleteTargetForms = $j([])
        
        if (checkedForms.length > 0 && forms.length >checkedForms.length) {
        	deleteTargetForms.push(checkedForms)
//         	delecheckedForms.remove();
        } else if(forms.length <= checkedForms.length){
        	alert("더 이상 삭제하실 수 없습니다.")
        	return;

        }else{
        	deleteTargetForms.push(forms.last())
//         	forms.last().remove();
        }
        
        var isWriting = true;
        deleteTargetForms.each(function(index,form){
    		form = $j(form)
    		var titleInputField = form.find("input")
    		var commentInputField = form.find("textarea")

    		if (titleInputField.val().trim() !== '' ||  commentInputField.val().trim() !== '' ){
    			isWriting = false;
    		}
        })
        deleteConfirm = true
        if(!isWriting){
        	deleteConfirm = confirm("작성중인 글이 있습니다. 선택하신 폼을 정말 삭제하시겠습니까?")? true : false
        }
       deleteConfirm && deleteTargetForms.each((i,el)=>el.remove())
        
    });


    // 클릭한 필드셋에 하늘색 배경 토글
    $j('#formContainer').on('click',
    		'.formGroup', function(e) {
    	
    	var clickEl = $j(e.target)
    	if (!clickEl.is('input') && !clickEl.is('textarea') && !clickEl.is('select')){
    		
        $j(this).toggleClass('blueBackground');
    	}
    });
 // 새로운 행을 생성하는 함수
    function generateRow() {
        return `<fieldset class="formGroup">
                    <legend>게시글 작성</legend>
                    <div class="formField">
                        <label for="newField1">제목:</label>
                        <input name="newField1" type="text" size="50" value="">
                    </div>
                    <div class="formField">
                        <label for="newField2">내용:</label>
                        <textarea name="newField2" rows="20" cols="55"></textarea>
                    </div>
                </fieldset>`;
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
        
        // ajax로 json으로 객체배열 바디에 담아 포스트요청보냄
        $j.ajax({
            url: "/board/boardWriteAction.do",
            data: JSON.stringify(params),
            contentType: "application/json",
            dataType: "json",
            type: "POST",
            success: function(data, textStatus, jqXHRt) {
                alert("메세지:" + data.result);
                if (data.result === "success") {
         		    alert("작성완료");
                }else{
                	alert("에러 발생")
                }
                    var pageNo = $j('#pageNo').val();
                    var pageSize = $j('#pageSize').val();
                    var url = "/board/boardList.do?pageNo=" + pageNo + "&pageSize=" + pageSize;
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
    	$j('.formGroup').each(function(index, form){
    		form = $j(form)
    		var titleInputField = form.find("input")
    		var commentInputField = form.find("textarea")

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
        var pageNo = $j('#pageNo').val();
        var pageSize = $j('#pageSize').val();
        var url = "/board/boardList.do?pageNo=" + pageNo + "&pageSize=" + pageSize;
        location.href = url;
    })
});



</script>
<body>
<form class="boardWrite">
			<input type="hidden" id="pageNo" name="pageNo" value="${pageNo}">
			<input type="hidden" id="pageSize" name="pageSize" value="${pageSize}">
	<table align="center">
		<tr align="right">
			<th >
				행 추가 및 삭제
			</th>
		</tr>
		<tr align="right">
			<td >
				<input id="rowAppend" type="button" value="+"></input>
				<input id="rowRemove" type="button" value="-"></input>
			</td>
		</tr>
		<tr>
			<td>
				<table border ="1" >
                <div id="formContainer">
                    <fieldset class="formGroup">
                        <legend>게시글 작성</legend>
                        <div class="formField">
                            <label for="boardType">분류: </label>
                                <select id="boardType" name="boardType">
							        <option value="1">1</option>
							        <option value="2">2</option>
							        <option value="3">3</option>
							        <option value="4">4</option>
							        <option value="5">5</option>
							    </select>
                        </div>
                        <div class="formField">
                            <label for="boardTitle">제목: </label>
                            <input name="boardTitle" type="text" size="50" value="${board.boardTitle}">
                        </div>
                        <div class="formField">
                            <label for="boardComment">내용: </label>
                            <textarea name="boardComment" rows="20" cols="55">${board.boardComment}</textarea>
                        </div>
                    </fieldset>
                </div>
				</table>
			</td>
			</tr>
<tr>
    <td colspan="2" align="right">
        <div id="creatorSection">
            작성자: <span id="creatorId">SYSTEM</span>
        </div>
    </td>
</tr>
		<tr>
			<td align="right">
			<input id="submit" type="button" value="작성">
				<input id="toList" type="button" value="목록"></input>
			</td>
		</tr>
	</table>
</form>	
</body>
</html>