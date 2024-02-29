<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/common/common.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>list</title>
</head>
<script type="text/javascript">

	$j(document).ready(function(){
		/* 글쓰기 버튼 클릭시, 페이지 이동 요청에 perPage 전달 */
		$j('#boardWriteLink').click((e)=>{
			e.preventDefault();
			// pageSize 셀렉트요소로부터 pageSize 가져올때, 제이쿼리 api 에 따라 val() 함수로 값 가져옴 
			var pageSize = $j('#pageSize').val();
			
			var pageNo = $j('#pageNo').val();
/* 			var param = $j({
					"pageNo" : pageNo
					,"pageSize" : pageSize
			}) */
			
			var redirectURL = "/board/boardWrite.do?pageNo="+pageNo+"&pageSize="+pageSize;
			
			// dom window의 url에 값 할당해서 브라우저가 페이지 이동하게함
			window.location.href = redirectURL;
		})
	});
	
</script>
<body>
<div class="container">
<!-- pageNo 임시로 담아놓을 히든필드 -->
<input type="hidden" id="pageNo" name="pageNo" value="${pageNo}">
	<div class="centered-div">
	<label for="pageSize" >페이지당 게시물 수</label>
		<select name="pageSize" id="pageSize" >
		  <option value="5"  >5개</option>
		  <option value="10">10개</option>
		  <option value="20">20개</option>
		</select>
		<table  align="center">
			<tr>
				<td align="right">
					total : ${totalCnt}
				</td>
			</tr>
			<tr>
				<td>
					<table id="boardTable" border = "1">
						<tr>
							<td width="80" align="center">
								Type
							</td>
							<td width="40" align="center">
								No
							</td>
							<td width="300" align="center">
								Title
							</td>
							<td width="120" align="center">
								Create Time
							</td>
							<td width="120" align="center">
								Modified Time
							</td>
						</tr>
						<c:forEach items="${boardList}" var="list">
							<tr>
								<td align="center">
									${list.boardType}
								</td>
								<td>
									${list.boardNum}
								</td>
								<td>
									<a href = "/board/${list.boardType}/${list.boardNum}/boardView.do?pageNo=${pageNo}">${list.boardTitle}</a>
								</td>
								<td>
									${list.createTime}
								</td>
								<td>
									${list.modifiedTime}
								</td>
							</tr>	
					</c:forEach>
									</table>
								</td>
							</tr>
							<tr>
								<td align="right">
									<button id="boardWriteLink" >글쓰기</button>
									
								</td>
							</tr>
				</table>
	</div>

</div>

	
</body>
</html>