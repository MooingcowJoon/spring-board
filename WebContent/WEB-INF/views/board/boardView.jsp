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
	$j('#deleteLink').on('click',function(e){
		e.preventDefault()
		var deleteConfirm = confirm("정말로 삭제하시겠습니까?")
		
		if (deleteConfirm) {
			var urlPathVariables = location.pathname.split('/')
			var boardType = urlPathVariables[2]
			var boardNum = urlPathVariables[3]
			var creator = $j('#hiddenCreatorId').val()
			$j.get('/api/board/'+boardType+'/'+boardNum+'/delete.do')
					.done(res=>{
						if(res.result === 'error'){
						}else if(res.result === 'fail'){
						}
						else if(res.result === 'success'){
						}
						alert(res.msg)
						location.href="/board/boardList.do"
						return
					})
					.fail(e=>{
						alert("에러가 발생하였습니다. 페이지를 새로고침")
						location.reload()
					})
			}
	})
			
})
</script>
<body>
<input id="hiddenCreatorId" value="${board.creator}" type="hidden" />
<c:choose>
    <c:when test="${response eq 'error'}">
        <script>
            alert("존재하지 않는 게시물입니다.");
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
                	<c:if test="${not empty user && user.id == board.creator}">
	                    <a href="/board/${board.boardType}/${board.boardNum}/boardModify.do">Update</a>
	                    <a href="" id="deleteLink" >Delete</a>
                	</c:if>
                    <a href="/board/boardList.do">List</a>
                </td>
            </tr>
        </table>
    </c:otherwise>
</c:choose>	
</body>
</html>