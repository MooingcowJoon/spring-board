<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script>
$j(()=>{

	$j('#toListBtn').click(e=>location.href="list.do")
	$j('#boardList').on('click','.css-k59gj9',e=>{
		location.href="view.do"
		
	})
	
	$j('#main').on('click','.css-xjq7p7,.css-9ns22y',e=>$j('#main').children(':first').remove())
	
	$j('#navTab').children().click(e=>location.href='/sparta/board/'+$j(e.target).data('link')+'/list.do')
	
	$j('#main').on('click','#categoryBtn',e=>{
		const el = $j('#categoryList')
		el.toggle()
		
	})
	$j('#main').on('click','#categoryList li',e=>{
		const text = $j(e.target).removeClass().addClass('css-16uk8or').text()
			$j(e.target).siblings().removeClass().addClass('css-nyb6vk')
			.parent().toggle().parent().children(':first').html(text+`<img src="/res/img/arrow_down.svg" class="css-1bhrqo4">`).attr('class','css-1w5123m')
		
	})
	
	$j('#writeFree').click(e=>$j('#main').prepend(`
			<div id="writePopup" class="css-wonqq0"><div class="css-agejl7"><div class="css-r8q25b">자유게시판 작성하기</div><div class="css-1iyoj2o"><div class="css-1odc90o">
			<div class="css-1t5srfe">
			<button id="categoryBtn" class="css-pfhqzm">카테고리 선택
			<img src="/res/img/arrow_down.svg" class="css-1bhrqo4"></button>
			<ul id="categoryList" style="display:none" class="css-l2t941"><li data-expired="false" class="css-nyb6vk">수강 인증</li><li data-expired="false" class="css-nyb6vk">사는 이야기</li><li data-expired="false" class="css-nyb6vk">같이 해요</li><li data-expired="false" class="css-nyb6vk">궁금해요</li></ul>
			</div>
	
	<div class="css-1iqxhyo"><textarea rows="1" placeholder="제목을 입력해주세요" class="css-16kqrm" style="overflow: hidden; resize: none;"></textarea></div></div></div><div class="css-17wj0zk"><div class=""><div class="quill "><div class="ql-container ql-snow"><div class="ql-editor ql-blank" data-gramm="false" contenteditable="true" data-placeholder="내용을 입력하세요.
				
			 • 게시판 특성에 맞지 않는 내용 작성을 자제해주세요! (홍보성, 정치적, 분란성 글 및 댓글)
			 • 위반 시 별도의 통보 없이 활동 정지, 글 이동 및 삭제될 수 있습니다."><p><br></p></div><div class="ql-clipboard" contenteditable="true" tabindex="-1"></div><div class="ql-tooltip ql-hidden"><a class="ql-preview" rel="noopener noreferrer" target="_blank" href="about:blank"></a><input type="text" data-formula="e=mc^2" data-link="https://quilljs.com" data-video="Embed URL"><a class="ql-action"></a><a class="ql-remove"></a></div></div></div></div><div id="toolbar" class="ql-toolbar ql-snow"><span class="ql-formats"><button content="코드 블록" class="ql-code-block css-1qhzcav" type="button"><svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 20 20" fill="none">
			    <path d="M4.381 13.95a.875.875 0 1 0 1.238-1.237L4.38 13.951zM1.667 10l-.62-.619a.875.875 0 0 0 .001 1.237L1.667 10zm3.952-2.715A.875.875 0 1 0 4.38 6.047L5.62 7.284zm0 5.43L2.285 9.38l-1.237 1.237 3.333 3.334 1.238-1.238zm-3.334-2.097L5.62 7.284 4.38 6.047 1.048 9.38l1.237 1.237zM15.619 6.05a.875.875 0 1 0-1.238 1.237l1.238-1.238zM18.333 10l.62.619a.875.875 0 0 0 0-1.237l-.62.618zm-3.952 2.715a.875.875 0 0 0 1.238 1.237l-1.238-1.237zm0-5.43 3.334 3.334 1.237-1.237-3.333-3.334-1.238 1.238zm3.334 2.097-3.334 3.333 1.238 1.237 3.333-3.333-1.237-1.237z" fill="#505254"></path>
			    <path d="m12.5 4.168-5 11.667" stroke="#505254" stroke-width="1.75" stroke-linecap="round"></path>
			</svg></button></span><span class="ql-formats"><button content="이미지 첨부" class="ql-image css-1qhzcav" type="button"><svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 20 20" fill="none">
			    <rect x="3.336" y="3.332" width="13.333" height="13.333" rx="1.667" stroke="#505254" stroke-width="1.75" stroke-linejoin="round"></rect>
			    <path d="m16.664 12.499-5-4.167-7.5 7.5" stroke="#505254" stroke-width="1.75" stroke-linecap="round" stroke-linejoin="round"></path>
			    <rect x="5.836" y="5.832" width="2.5" height="2.5" rx="1.25" fill="#505254"></rect>
			</svg></button></span><span class="ql-formats"><button content="파일 첨부" class="attachments css-1qhzcav"><svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 20 20" fill="none"><path d="M5 9.478v3.02a5 5 0 0 0 5 5v0a5 5 0 0 0 5-5V5.833" stroke="#505254" stroke-width="1.75" stroke-linecap="round" stroke-linejoin="round"></path><path d="M11.667 7.5V5.833A3.333 3.333 0 0 0 8.333 2.5v0A3.333 3.333 0 0 0 5 5.833V12.5" stroke="#505254" stroke-width="1.75" stroke-linecap="round"></path><path d="M8.336 5.832v6.667c0 .92.746 1.666 1.667 1.666v0c.92 0 1.666-.746 1.666-1.666v-5" stroke="#505254" stroke-width="1.75" stroke-linecap="round"></path></svg></button></span></div></div><input id="input_file" type="file" class="css-38lglc"><div class="css-1yfg4fi"><div class="css-1vitttd"></div><input placeholder="#태그를 입력해주세요. (최대 3개)" class="css-9y3tf9" value=""></div><div class="css-lycl0a"><button class="css-9ns22y">취소</button><button class="css-1c8gn7d">등록하기</button></div></div></div>
			`))
	
	$j('#writeQna').click(e=>$j('#main').prepend(`
			<div class="css-isvaxh"><div class="css-6ngl5"><div class="css-f24dyb"><div class="css-8h1dq1">질문 작성하기</div></div><div class="css-jqjv3a"><div class="css-s9cn2z"><svg xmlns="http://www.w3.org/2000/svg" width="20" height="21" viewBox="0 0 20 21" fill="none"><circle cx="10" cy="10.5" r="7.5" stroke="#3A3E41" stroke-width="1.75"></circle><rect x="9.16675" y="13.2083" width="1.66667" height="1.66667" rx="0.833333" fill="#3A3E41"></rect><path d="M10 6.91602V11.6327" stroke="#3A3E41" stroke-width="1.5" stroke-linecap="round"></path></svg><div class="css-1t07n7l">좋은 질문이 좋은 답변을 만들어요!</div></div><div class="css-pfp54q">· 가이드에 맞게 자세히 작성할 수록 빠른 해결이 가능해요.</div><div class="css-pfp54q">· 제목은 한눈에 문제를 파악할 수 있게 구체적으로 작성해 주세요.</div><div class="css-pfp54q">· 상대방을 배려한 정중한 표현을 사용해 주세요.</div></div><div class="css-1iyoj2o"><div class="css-t6qvh1"><div class="css-1hwzr7l"><button class="css-pfhqzm">수업 선택<img src="/assets/icons/Q_Qeditor-select-arrow-down.svg" class="css-1bhrqo4"></button></div><div disabled="" class="css-1kavg23"><button disabled="" class="css-pfhqzm">주차 선택<img src="/assets/icons/Q_Qeditor-select-arrow-down.svg" class="css-1bhrqo4"></button></div></div><input placeholder="제목을 입력해주세요" class="css-7v9zy6" value=""></div><div class="css-17wj0zk"><div class=""><div class="quill "><div class="ql-container ql-snow"><div class="ql-editor" data-gramm="false" contenteditable="true" data-placeholder="빠르고 정확한 답변을 위한 질문 작성 TIP
			 
			 • 질문에는 코드 전체와 에러 메시지를 함께 작성해주세요.
			 • 어떤 작업을 수행하다가 에러가 발생했는지 구체적으로 작성해 주세요.
			 • 코드는 화면 캡쳐보다 </> 버튼을 클릭하여 코드블럭 안에 붙여넣어 주세요."><p><span class="ql-size-small" style="color: rgb(180, 191, 198);">* 겪고 있는 문제 상황을 최대한 자세하게 작성해주세요.</span></p><p><span class="ql-size-small" style="color: rgb(180, 191, 198);">* 문제 해결을 위해 어떤 시도를 해보았는지 구체적으로 함께 알려주세요.</span></p><p><br></p><p><strong>질문 내용</strong></p><p><br></p><p><br></p><p><br></p><p><strong>전체 화면 캡처</strong></p><p><span class="ql-size-small" style="color: rgb(180, 191, 198);">보고 계신 화면 전체를 캡처해 주시면, 튜터님들이 빠르게 상황을 이해할 수 있어요.</span></p><p><br></p><p><br></p><p><br></p><p><strong>작성한 코드 및 에러 메세지</strong></p><p><span class="ql-size-small" style="color: rgb(180, 191, 198);">오류 발생 시, 작성한 코드 전체와 에러 메시지를 첨부해 주세요.</span></p><p><span class="ql-size-small" style="color: rgb(180, 191, 198);">Tip 1) &lt;/&gt; 아이콘을 눌러 코드박스를 만들어 보세요.</span></p><p><span class="ql-size-small" style="color: rgb(180, 191, 198);">Tip 2) Ctrl+A(맥의 경우 Command+A) 단축키로 코드를 한 번에 선택할 수 있어요!</span></p><p><br></p><p><br></p><p><br></p></div><div class="ql-clipboard" contenteditable="true" tabindex="-1"></div><div class="ql-tooltip ql-hidden"><a class="ql-preview" rel="noopener noreferrer" target="_blank" href="about:blank"></a><input type="text" data-formula="e=mc^2" data-link="https://quilljs.com" data-video="Embed URL"><a class="ql-action"></a><a class="ql-remove"></a></div></div></div></div><div id="toolbar" class="ql-toolbar ql-snow"><span class="ql-formats"><button content="코드 블록" class="ql-code-block css-1qhzcav" type="button"><svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 20 20" fill="none">
			    <path d="M4.381 13.95a.875.875 0 1 0 1.238-1.237L4.38 13.951zM1.667 10l-.62-.619a.875.875 0 0 0 .001 1.237L1.667 10zm3.952-2.715A.875.875 0 1 0 4.38 6.047L5.62 7.284zm0 5.43L2.285 9.38l-1.237 1.237 3.333 3.334 1.238-1.238zm-3.334-2.097L5.62 7.284 4.38 6.047 1.048 9.38l1.237 1.237zM15.619 6.05a.875.875 0 1 0-1.238 1.237l1.238-1.238zM18.333 10l.62.619a.875.875 0 0 0 0-1.237l-.62.618zm-3.952 2.715a.875.875 0 0 0 1.238 1.237l-1.238-1.237zm0-5.43 3.334 3.334 1.237-1.237-3.333-3.334-1.238 1.238zm3.334 2.097-3.334 3.333 1.238 1.237 3.333-3.333-1.237-1.237z" fill="#505254"></path>
			    <path d="m12.5 4.168-5 11.667" stroke="#505254" stroke-width="1.75" stroke-linecap="round"></path>
			</svg></button></span><span class="ql-formats"><button content="이미지 첨부" class="ql-image css-1qhzcav" type="button"><svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 20 20" fill="none">
			    <rect x="3.336" y="3.332" width="13.333" height="13.333" rx="1.667" stroke="#505254" stroke-width="1.75" stroke-linejoin="round"></rect>
			    <path d="m16.664 12.499-5-4.167-7.5 7.5" stroke="#505254" stroke-width="1.75" stroke-linecap="round" stroke-linejoin="round"></path>
			    <rect x="5.836" y="5.832" width="2.5" height="2.5" rx="1.25" fill="#505254"></rect>
			</svg></button></span><span class="ql-formats"><button content="파일 첨부" class="attachments css-1qhzcav"><svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 20 20" fill="none"><path d="M5 9.478v3.02a5 5 0 0 0 5 5v0a5 5 0 0 0 5-5V5.833" stroke="#505254" stroke-width="1.75" stroke-linecap="round" stroke-linejoin="round"></path><path d="M11.667 7.5V5.833A3.333 3.333 0 0 0 8.333 2.5v0A3.333 3.333 0 0 0 5 5.833V12.5" stroke="#505254" stroke-width="1.75" stroke-linecap="round"></path><path d="M8.336 5.832v6.667c0 .92.746 1.666 1.667 1.666v0c.92 0 1.666-.746 1.666-1.666v-5" stroke="#505254" stroke-width="1.75" stroke-linecap="round"></path></svg></button></span></div></div><input id="input_file" type="file" class="css-38lglc"><div class="css-1vh3f40"><button class="css-xjq7p7">취소</button><button class="css-5qzbzv">등록하기</button></div></div></div>
			`))
})
	
	
</script>