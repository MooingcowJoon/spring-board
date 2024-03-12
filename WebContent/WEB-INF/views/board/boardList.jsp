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
			window.location.href = '/board/boardWrite.do'
		})
		

		$j('#checkAll').on('click',function(){
			var boxes = $j(this).siblings('input[type="checkbox"]')
			
			var checkCount= boxes.filter(':checked').length
			
			var checkOrNot = checkCount < boxes.length
			
			boxes.push(this)
			
			boxes.each(function(){
				$j(this).prop('checked',checkOrNot)	
			})
		})
		
		$j('#btn-load').on('click',function(){
			var boardTypeList = $j('.checkbox-boardType:checked').map(function(){return this.id}).get()
	       	   $j.ajax({
			        type: "POST",
			        url: '/api/board/list.do',
			        data: JSON.stringify(boardTypeList),
			        contentType: "application/json",
			        success: function(response) {
						var result = response.result
						
						if(result === 'success'){
							var table= $j('#boardTable')						
							$j('.dataRow').remove()
							var boardList = JSON.parse(response.data)
							console.log(boardList)
							boardList.forEach(function(board){
								html='<tr class="dataRow"><td align="center">'+board.boardTypeName+
									'</td><td>'+board.boardNum+'</td><td>'
								html+='<a href = "/board/'+board.boardType+'/'+board.boardNum+'/boardView.do">'+board.boardTitle+'</a>'
								table.append(html)
							})
						}else if(result === 'error'){
							alert("에러가 발생했습니다.")
							
						}
			        },
			        error: function(xhr, status, error) {
			         	alert(error)
			        }
	  				});
		})
		
	}) 
		
	
</script>
<body>
<div class="container">
	<div class="centered-div">
		<table  align="center">
			<tr>
				<td>
					<a href="">login</a>
					<a href="">join</a>
				</td>
				<td>
					<span align="right">total : ${totalCnt}</span>
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
<!-- 							<td width="120" align="center">
								Create Time
							</td>
							<td width="120" align="center">
								Modified Time
							</td> -->
						</tr>
						<c:forEach items="${boardList}" var="list">
							<tr class="dataRow">
								<td align="center">
									${list.boardTypeName}
								</td>
								<td>
									${list.boardNum}
								</td>
								<td>
									<a href = "/board/${list.boardType}/${list.boardNum}/boardView.do">${list.boardTitle}</a>
								</td>
<%-- 								<td>
									${list.createTime}
								</td>
								<td>
									${list.modifiedTime}
								</td> --%>
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
							<tr>
								<td>
									<input type="checkbox" id="checkAll"/>
									<label for="checkAll">전체</label>
								<c:forEach items="${commonCodeList}" var="code">
										<input class="checkbox-boardType" type="checkbox" id="${code.codeId}" codeType="${code.codeType}"  codeName="${code.codeName}"/>
										<label for="${code.codeId}">${code.codeName}</label>
								</c:forEach>
								<input type="button" id="btn-load" value="조회"/>
								</td>
							</tr>
				</table>
	</div>

</div>

	
</body>
</html>