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
	class Form {
	    constructor(title, comment) {
	        this.title = title;
	        this.comment = comment;
	    }

	    // 제목 설정
	    setTitle(title) {
	        this.title = title;
	    }

	    // 코멘트 설정
	    setComment(comment) {
	        this.comment = comment;
	    }

	    // 제목 가져오기
	    getTitle() {
	        return this.title;
	    }

	    // 코멘트 가져오기
	    getComment() {
	        return this.comment;
	    }

	    // 폼 데이터 초기화
	    clear() {
	        this.title = '';
	        this.comment = '';
	    }

	    // 폼 데이터 출력 (테스트용)
print() {
    console.log('Title: ' + this.title + ', Comment: ' + this.comment);
}
	}
	function getForms(){
		var forms = [];
		$j('.formGroup').each(function(index,el){
			el=$j(el)
			var title = el.find('input').val()
			var comment = el.find('textarea').val()
			forms.push(new Form(title,comment))
			
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
		
        if (checkedForms.length > 0) {
        	checkedForms.remove();
        } else {
        	forms.last().remove();
        }
    });

    // 작성 버튼 클릭 이벤트
    $j('#submit').on('click', function() {
        submitCheck();
    });

    // 클릭한 필드셋에 하늘색 배경 토글
    $j('#formContainer').on('click',
    		'.formGroup', function(e) {
    	
    	if (!$j(e.target).is('input') && !$j(e.target).is('textarea')){
    		
        $j(this).toggleClass('blueBackground');
    	}
    });
 // 새로운 행을 생성하는 함수
    function generateRow() {
        return `<fieldset class="formGroup">
                    <legend>New Section</legend>
                    <div class="formField">
                        <label for="newField1">Field 1:</label>
                        <input name="newField1" type="text" size="50" value="">
                    </div>
                    <div class="formField">
                        <label for="newField2">Field 2:</label>
                        <textarea name="newField2" rows="20" cols="55"></textarea>
                    </div>
                </fieldset>`;
    }

    // 작성 확인 함수
    function submitCheck() {
        var nullInputField = nullInputCheck();
        if (nullInputField !== null) {
            alertAndFocus(nullInputField);
            return;
        }
        var param = [];
        var rows = $j('#form').children().children(':not(:last-child)');
        rows.each(function(index, row) {
            var isTitle = index % 2 === 0;
            row = $j(row);
            if (isTitle) {
                var title = row.children().find('input').val();
                param.push(title);
            } else {
                var content = row.children().find('textarea').val();
                param.push(content);
            }
        });
        $j.ajax({
            url: "/board/boardWriteAction.do",
            data: JSON.stringify(param),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            type: "POST",
            success: function(data, textStatus, jqXHRt) {
                alert("작성완료");
                alert("메세지:" + data.result);
                if (data.result === "success") {
                    var pageNo = $j('#pageNo').val();
                    var pageSize = $j('#pageSize').val();
                    var url = "/board/boardList.do?pageNo=" + pageNo + "&pageSize=" + pageSize;
                    location.href = url;
                }
            },
            error: function(jqXHR, textStatus, errorThrown) {
                alert("실패");
            }
        });
    }

    // 입력 필드가 비어 있는지 확인하는 함수
    function nullInputCheck() {
    	var forms = $j(getForms())
    	forms.each(function(index,form){
    		form.print()
    	})
    	return
        var rows = $j('#form').children().children(':not(:last-child)');
        var nullInputField = null;
        rows.each(function(index, row) {
            var isTitle = index % 2 === 0;
            row = $j(row);
            if (isTitle) {
                var inputField = row.children().find('input');
                var title = inputField.val();
                var userInput = title.trim();
                if (userInput === '') {
                    nullInputField = inputField;
                }
            } else {
                var inputField = row.children().find('textarea');
                var content = inputField.val();
                var userInput = content.trim();
                if (userInput === '') {
                    nullInputField = inputField;
                }
            }
        });
        return nullInputField;
    }

    // 경고를 표시하고 포커스를 이동시키는 함수
    function alertAndFocus(nullInputField) {
        var index = nullInputField.index();
        var msg = '';
        if (nullInputField.is('input')) {
            msg = '제목을 입력하셔야 합니다.';
        } else {
            msg = '내용을 입력하셔야 합니다.';
        }
        alert(msg);
        nullInputField.focus();
    }

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
                        <legend>Board Details</legend>
                        <div class="formField">
                            <label for="boardTitle">Title:</label>
                            <input name="boardTitle" type="text" size="50" value="${board.boardTitle}">
                        </div>
                        <div class="formField">
                            <label for="boardComment">Comment:</label>
                            <textarea name="boardComment" rows="20" cols="55">${board.boardComment}</textarea>
                        </div>
                    </fieldset>
                </div>
				</table>
			</td>
			</tr>
<tr>
    <td colspan="2" align="right">
        <div id="writerSection">
            작성자: <span id="writerId">SYSTEM</span>
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