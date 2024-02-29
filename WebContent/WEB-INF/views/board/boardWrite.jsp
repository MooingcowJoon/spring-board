<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/common/common.jsp"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>boardWrite</title>
</head>
<script type="text/javascript">

	$j(document).ready(function(){
		
		
/* 		class BoardVo {
			  constructor(boardType, boardTitle, boardComment) {
			    this.boardType = boardType;
			    this.boardNum = 0;
			    this.boardTitle = boardTitle;
			    this.boardComment = boardComment;
			    this.creator = '';
			    this.modifier = '';
			    this.totalCnt = 0;
			    this.createTime = '';
			    this.modifiedTime = '';
			  }
			} */
		
	

		
/* 		var redirectToList = function(){
			var pageNo = $j('#pageNo').val()
			var pageSize = $j('#pageSize').val()
			
			var url = "/board/boardList.do?pageNo="+pageNo+"&pageSize="+pageSize;
			console.log("리다이렉트함수 호출 => "+url)
			//나중에 url패스 변수 분리해서 인자로 받는걸로 분리해야함
			location.href = url
		}  */
		$j('#toList').on('click',()=>{
			var pageNo = $j('#pageNo').val()
			var pageSize = $j('#pageSize').val()
			var url = "/board/boardList.do?pageNo="+pageNo+"&pageSize="+pageSize;
			console.log(url)
			window.location.href = url
		})
		
		
		
		$j("#rowAppend").on('click',()=>{
			var table = $j('#form').children()
			
			var lastIndex = table.children().length -1
			
			var tableLength= lastIndex /2 
			if(tableLength >= 5){
				alert("더 이상 행을 추가하실 수 없습니다")
				return
			}
			
			var writerRow = table.children().eq(lastIndex)
			writerRow.before(generateRow())
		})
		
		function generateRow(){
			return `<tr>
				<td width="120" align="center">
				Title
				</td>
				<td width="400">
				<input name="boardTitle" type="text" size="50" value=""> 
				</td>
			</tr>
			<tr>
				<td height="300" align="center">
				Comment
				</td>
				<td valign="top">
				<textarea name="boardComment"  rows="20" cols="55"></textarea>
				</td>
			</tr>`
		}
		
		$j("#rowRemove").on('click',()=>{
			var table = $j('#form').children()
			var lastIndex = table.children().length -1
			var tableLength= lastIndex /2 
			if(tableLength == 1){
				alert("더 이상 행을 삭제하실 수 없습니다.")
				return
			}
			var writerRow = table.children().eq(lastIndex)
			
			writerRow.prev().remove()
			writerRow.prev().remove()
		})
		
		
		
		
		
		$j("#submit").on("click",function(){
			submitCheck()
			return
		});
		
		
		
		
		
		

		
		function submitCheck(){
			
			// 널입력필드 있으면 반환하는함수
			var nullInputField = nullInputCheck()
			
			
			if(nullInputField != null){
				//널인풋필드 있으면 얼러트 띄우고 널인풋필드 쪽으로 포커스이동
				alertAndFocus(nullInputField)
				return
			}			
			
			// 유저입력 스트링배열로전달
			var param =[]
			
			// <tr> 요소들
			var rows = $j('#form').children().children(':not(:last-child)')
			// 작성자는 작성자 태그에 아이디달아서 가져옴
			var writer = $j('#writerId').text()
			
			// 보드타입인데 일단 1로 설정
			param.push("1")
			
			// 
			rows.each(function(index, row){
				var isTitle= index%2==0
					row= $j(row)
				if(isTitle){
					var title = row.children().find('input').val()
					/* boardVo = new BoardVo(1, title,'') */
					param.push(title)
				}else{
					var content = row.children().find('textarea').val()
					/* boardVo.boardComment = content
					formDataList.push(boardVo) */
					param.push(content)
				}
			})
			
			
			$j.ajax({
			    url: "/board/boardWriteAction.do",
			    data: JSON.stringify(param), // 데이터를 JSON 형식으로 변환하여 전송합니다.
			    contentType: "application/json; charset=utf-8", // UTF-8로 인코딩된 JSON 데이터를 전송합니다.
			    dataType: "json",
			    type: "POST",
			    success: function(data, textStatus, jqXHRt)
			    {
					alert("작성완료");
					alert("메세지:"+data.result);
					
					if(data.result=="success"){
						
					var pageNo = $j('#pageNo').val()
					var pageSize = $j('#pageSize').val()
								
					var url = "/board/boardList.do?pageNo="+pageNo+"&pageSize="+pageSize;
					location.href = url
					
					}
			    },
			    error: function (jqXHR, textStatus, errorThrown)
			    {
			    	alert("실패");
			    }
				});
			}
		
		
		
		function nullInputCheck(){
			var rows = $j('#form').children().children(':not(:last-child)')
			var nullInputField = null
			

			rows.each(function(index, row){
				var isTitle= index%2==0
				row= $j(row)
				if(isTitle){
					var inputField = row.children().find('input')
					var title= inputField.val()
					userInput= title.trim()
					console.log("제목 : "+userInput)
					if(userInput === ''){
						nullInputField = inputField
					}
				}else{
					var inputField = row.children().find('textarea')
					content = inputField.val()
					userInput = content.trim()
					console.log("내용 : "+userInput)
					if(userInput === ''){
						nullInputField = inputField
					}
				}
			})
			
			return nullInputField
		}
		
		
		
		
		function alertAndFocus(nullInputField){
			console.log(nullInputField)
			var index = nullInputField.index()
			var msg =''
			if(nullInputField.is('input')){
				msg='제목을 입력하셔야 합니다.'
			}else msg = '내용을 입력하셔야 합니다.'
			
			alert(msg)
			nullInputField.focus()
		}
		
	});
	

</script>
<body>
<form class="boardWrite">
	<table align="center">
			<input type="hidden" id="pageNo" name="pageNo" value="${pageNo}">
			<input type="hidden" id="pageSize" name="pageSize" value="${pageSize}">
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
				<table border ="1" id="form" data-size="1">
					
					<tr>
						<td width="20">체크</td>
						<td width="120" align="center">
						Title
						</td>
						<td width="400">
						<input name="boardTitle" type="text" size="50" value="${board.boardTitle}"> 
						</td>
					</tr>
					<tr>
						<td></td>
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
						<td id="writerId">SYSTEM</td>
					</tr>
				</table>
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