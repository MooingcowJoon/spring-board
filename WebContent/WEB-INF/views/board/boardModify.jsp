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
		$j("#submit").on("click",function(e){
			e.preventDefault()
			var inputTitle = $j('#inputTitle')
			var inputComment = $j('#inputComment')
			
			var boardTitle = inputTitle.val()
			var boardComment = inputComment.val()
			
			if(boardTitle.trim() === ''){
				alert('공백이 아닌 제목을 입력하셔야 합니다.')
				inputTitle.focus()
				return
			}
			if(boardComment.trim() === ''){
				alert('공백이 아닌 내용을 입력하셔야 합니다.')
				inputComment.focus()
				return
			}
			
		    var pathVariables = location.pathname.split('/');
		    var boardType = pathVariables[2];
		    var boardNum = pathVariables[3];
		    var creator = $j('#creatorId').val()
			var formData = {
				boardType 		: 	boardType,
				boardNum 		:	boardNum,
				boardTitle		:	boardTitle,
				boardComment	:	boardComment,
				creator			:	creator
			}
			console.log("==================================")
			console.log("ajax 요청 : 'update' 버튼 클릭시 ajax 요청바디 (JSON): ")
			console.log(JSON.stringify(formData))	 
			console.log("==================================")
			$j.ajax({
			    url : '/api/board/'+boardType+'/'+boardNum+'/modify.do',
			    type: "POST",
			    contentType	: "application/json",
			    data : JSON.stringify(formData),
			    success: function(res)
			    {
					alert(res.msg)
					location.href='/board/boardList.do'
			    },
			    error: function (jqXHR, textStatus, errorThrown)
			    {
			    	alert("수정에 실패하였습니다. 목록으로 돌아갑니다.")
			    	location.href='/board/boardList.do'
			    }
				})
			})	
		$j('#toList').on('click',(e)=>{
			e.preventDefault()
			toList()
		})
		$j('#toListBtn').on('click',()=>{
			toList()
		})
			
		function toList(){
			var url = '/board/boardList.do'
			window.location.href = url
		}
	});

</script>
<body>
	<form >
		<table align="center">
			<c:choose>
				<c:when test="${result eq 'fail'}">
				<tr>
					<td>
					<c:choose>
						<c:when test="${errorCode eq 'sessionExpired'}">
							<h3>로그인 세션이 만료되었습니다. 다시 로그인해주세요.</h3>
							<input type="button" id="toListBtn" value="목록으로 돌아가기"/>
						</c:when>
						<c:when test="${errorCode eq 'boardNotFound'}">
							<h3>게시물을 찾을 수 없습니다.</h3>
							<input type="button" id="toListBtn" value="목록으로 돌아가기"/>
						</c:when>
						<c:when test="${errorCode eq 'wrongUser'}">
							<h3>잘못된 사용자입니다.</h3>
							<input type="button" id="toListBtn" value="목록으로 돌아가기"/>
						</c:when>
					</c:choose>
					</td>
				</tr>
				</c:when>
				<c:when test="${result eq 'error'}">
					<tr>
						<td>
							<h3>에러가 발생했습니다.</h3>
							<input type="button" id="toListBtn" value="목록으로 돌아가기"/>
						</td>
					</tr>
				</c:when>
				<c:when test="${result eq 'success'}">
					<tr>
						<td>
							<input id="creatorId" type="hidden" value="${board.creator}"/>
							<table border ="1"> 
								<tr>
									<td width="120" align="center">
									Title
									</td>
									<td width="400">
									<input id="inputTitle" name="boardTitle" type="text" size="50" value="${board.boardTitle}"> 
									</td>
								</tr>
								<tr>
									<td height="300" align="center">
									Comment
									</td>
									<td valign="top">
									<textarea  id="inputComment" name="boardComment"  rows="20" cols="55">${board.boardComment}</textarea>
									</td>
								</tr>
								<tr>
									<td align="center">
									Writer
									</td>
									<td>
										${board.creator}
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td align="right">
						<a id="toList" href="">List</a>
						<a id="submit" href="" >Update</a>
						</td>
					</tr>
			</c:when>
		</c:choose>
		</table>
	</form>	
</body>
</html>