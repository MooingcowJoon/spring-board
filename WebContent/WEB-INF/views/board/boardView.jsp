<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/common/common.jsp"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>boardView</title>
</head>
<script>
$j(document).ready(() => {
	$j('#deleteBtn').on('click',(e)=>{
		var result = confirm("정말로 삭제하시겠습니까?");
	      if (result) {
	    	 	var pathVariables = location.pathname.split('/');
			    var boardType = pathVariables[2];
			    var boardNum = pathVariables[3];
			    
			    param = "&boardType="+boardType+"&boardNum="+boardNum
	    	  
	            $j.ajax({
	                type: "POST",
	                url: "/board/boardDeleteAction.do",
	                dataType: "json",
	                data: param,
	                success: function(res,textStatus, jqXHR) {
	                	if(res.resultCode == 'success'){
	                    	alert("게시물이 삭제되었습니다.");
	                	}else if (res.resultCode == 'error'){
	                		alert('게시물 삭제에 실패했습니다. 목록으로 돌아갑니다.')
	                	}
	                   	window.location.href="/board/boardList.do"
	                },
	                error: function(xhr, status, error) {
	                	alert('게시물 삭제에 실패했습니다. 목록으로 돌아갑니다.')
	                	window.location.href="/board/boardList.do"
	                }
	            });
	        }
	})
})
</script>
<body>
<c:choose>
    <c:when test="${response eq 'error'}">
        <script>
            alert("삭제된 게시물입니다.");
            window.location.href = "/board/boardList.do";
        </script>
    </c:when>
    <c:otherwise>
        <table align="center">
            <tr>
                <td>
                    <table  border="1">
                        <tr>
                            <td width="120" align="center">Title</td>
                            <td width="400">${board.boardTitle}</td>
                        </tr>
                        <tr>
                            <td height="300" align="center">Comment</td>
                            <td>${board.boardComment}</td>
                        </tr>
                        <tr>
                            <td align="center">Writer</td>
                            <td>${board.creator}</td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td align="right">
                    <a href="/board/${board.boardType}/${board.boardNum}/boardModify.do?pageNo=1">수정</a>
                    <input type="button" id="deleteBtn" value="삭제">
                    <a href="/board/boardList.do">List</a>
                </td>
            </tr>
        </table>
    </c:otherwise>
</c:choose>	
</body>
</html>