<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/common/common.jsp"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>boardModify</title>
</head>
<script type="text/javascript">

	$j(document).ready(function(){
		
/* 		var redirectToList = function(){
			var pageNo = $j('#pageNo').val()
			var pageSize = $j('#pageSize').val()
			
			var url = "/board/boardList.do?pageNo="+pageNo+"&pageSize="+pageSize;
			console.log("리다이렉트함수 호출 => "+url)
			//나중에 url패스 변수 분리해서 인자로 받는걸로 분리해야함
			location.href = url
		}  */
		
		
		$j("#submit").on("click",function(){
			var $frm = $j('.boardWrite :input');
			var param = $frm.serialize();
			
		    var pathVariables = location.pathname.split('/');
		    var boardType = pathVariables[2];
		    var boardNum = pathVariables[3];
		    
		    param+="&boardType="+boardType+"&boardNum="+boardNum
		    
			$j.ajax({
			    url : "/board/boardModifyAction.do",
			    dataType: "json",
			    type: "POST",
			    data : param,
			    success: function(data, textStatus, jqXHR)
			    {
					alert("작성완료");
					
					alert("메세지:"+data.success);
	
					var pageNo = $j('#pageNo').val()
					var pageSize = $j('#pageSize').val()
					
					var url = "/board/boardList.do?pageNo="+pageNo+"&pageSize="+pageSize;
					console.log("리다이렉트함수 호출 => "+url)
					//나중에 url패스 변수 분리해서 인자로 받는걸로 분리해야함
					location.href = url
					
			    },
			    error: function (jqXHR, textStatus, errorThrown)
			    {
			    	alert("실패");
			    }
				});
			});	
		$j('#toList').on('click',()=>{
			var pageNo = $j('#pageNo').val()
			var pageSize = $j('#pageSize').val()
			var url = "/board/boardList.do?pageNo="+pageNo+"&pageSize="+pageSize;
			console.log(url)
			window.location.href = url
		})
		
	});
	

</script>
<body>
<form class="boardWrite">
	<table align="center">
			<input type="hidden" id="pageNo" name="pageNo" value="${pageNo}">
			<input type="hidden" id="pageSize" name="pageSize" value="${pageSize}">

		<tr>
			<td>
				<table border ="1"> 
					<tr>
						<td width="120" align="center">
						Title
						</td>
						<td width="400">
						<input name="boardTitle" type="text" size="50" value="${board.boardTitle}"> 
						</td>
					</tr>
					<tr>
						<td height="300" align="center">
						Comment
						</td>
						<td valign="top">
						<textarea name="boardComment"  rows="20" cols="55">${board.boardComment}</textarea>
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
			<input id="submit" type="button" value="제출">
			<input id="toList" type="button" value="목록"></input>
			</td>
		</tr>
	</table>
</form>	
</body>
</html>