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
/* 		$j('#boardWriteLink').click((e)=>{
			e.preventDefault();
			window.location.href = '/board/boardWrite.do'
		}) */
		
		// 체크박스 클릭 이벤트를 결과를 '전체' 체크박스에 적용
		function checkAllResult(){
			var checkOrNot = countUncheckedTypeCheckBox() === 0
			$j('#checkAll').prop('checked',checkOrNot)
		}
		
		// '보드타입' 체크박스중 체크안된 박스 갯수 반환
		function countUncheckedTypeCheckBox(){
			var totalCount = $j('.checkbox-boardType').length
			var checkedCount =  $j('.checkbox-boardType:checked').length
			
			return totalCount - checkedCount
		}
		// 체크박스 인풋요소 부모인 td요소에 클릭시 발생이벤트 핸들러 함수 등록
		$j('#checkBoxArea').on('click','input[type="checkbox"]',function(){
			// 클릭 이벤트 타겟이 '전체' 체크박스일경우 분기처리 
			if($j(this).attr('id') ==='checkAll'){
				// 체크안된 타입 체크박스 수가 0이상이면 전체체크, 아니면 전체체크해제
				var checkOrNot = countUncheckedTypeCheckBox() > 0
				$j('.checkbox-boardType').each(function(){
					$j(this).prop('checked',checkOrNot)	
				})
			}
			// 체크박스 클릭 이벤트를 결과를 '전체' 체크박스에 적용
			checkAllResult()
		})
		
		// '조회' 버튼 클릭 이벤트 발생 시 콜백될 이벤트 핸들러 함수 등록 
		$j('#btn-load').on('click',function(){
			var boardTypeList = $j('.checkbox-boardType:checked').map(function(){return this.id}).get()
			console.log("==================================")
			console.log("ajax 요청 : '조회'버튼 클릭시 ajax 요청바디 (JSON): ")
			console.log(JSON.stringify(boardTypeList))	 
			console.log("==================================")
			
	       	   $j.ajax({
			        type: "POST",
			        url: '/api/board/list.do',
			        data: JSON.stringify(boardTypeList),
			        contentType: "application/json",
			        success: function(response) {
			        	// json 응답 결과
						var result = response.result
						
						if(result === 'success'){
							/// 체크된 타입 게시물 수 적용						
							var boardCnt = response.boardCnt
							$j('#boardCnt').text(boardCnt)	

							var table= $j('#boardTable')
							// 기존 행 제거
							$j('.dataRow').remove()
							
							var boardList = JSON.parse(response.data)
							
							console.log("==================================")
							console.log("ajax 응답 : '조회'버튼 클릭 ajax 응답 바디 (JSON): ")
							console.log(boardList)
							console.log("==================================")
							// 행 추가
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
	           		<c:choose>
	           			<c:when test="${empty user}">
			           		<a href="/user/login.do">login</a>
							<a href="/user/join.do">join</a>
	           			</c:when>
	           			<c:otherwise>
	           				${user.getName()}
	           			</c:otherwise>
	           		</c:choose>
	           </td>
            	<td style="text-align: right;">
            		total : <span id="boardCnt">${totalCnt}</span>
            	</td>
			</tr>
			<tr>
				<td colspan="2">
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
								<td align="right" colspan="2">
									<!-- <button id="boardWriteLink" >글쓰기</button> -->
									<a href="/board/boardWrite.do">글쓰기</a>
								</td>
							</tr>
							<tr>
								<td colspan="2" id='checkBoxArea'>
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