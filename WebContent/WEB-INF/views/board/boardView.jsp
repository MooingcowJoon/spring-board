<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@include file="/WEB-INF/views/common/common.jsp"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>boardView</title>
</head>
<script>
$j(document).ready(() => {
	$j('#deleteBtn').on('click',(e)=>{
		var result = confirm("������ �����Ͻðڽ��ϱ�?");
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
	                    	alert("�Խù��� �����Ǿ����ϴ�.");
	                	}else if (res.resultCode == 'error'){
	                		alert('�Խù� ������ �����߽��ϴ�. ������� ���ư��ϴ�.')
	                	}
	                   	window.location.href="/board/boardList.do"
	                },
	                error: function(xhr, status, error) {
	                	alert('�Խù� ������ �����߽��ϴ�. ������� ���ư��ϴ�.')
	                	window.location.href="/board/boardList.do"
	                }
	            });
	        }
	})
})
</script>
<body>
<table align="center">
	<tr>
		<td>
			<table border ="1">
				<tr>
					<td width="120" align="center">
					Title
					</td>
					<td width="400">
					${board.boardTitle}
					</td>
				</tr>
				<tr>
					<td height="300" align="center">
					Comment
					</td>
					<td>
					${board.boardComment}
					</td>
				</tr>
				<tr>
					<td align="center">
					Writer
					</td>
					<td>
					</td>
				</tr>
			</table>
		</td>
	</tr>
	<tr>
		<td align="right">
			<a href="/board/${board.boardType}/${board.boardNum}/boardModify.do?pageNo=1">����</a>
			<input type="button" id="deleteBtn" value="����"></input>
			<a href="/board/boardList.do">List</a>
		</td>
	</tr>
</table>	
</body>
</html>