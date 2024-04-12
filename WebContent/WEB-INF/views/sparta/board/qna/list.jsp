<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/sparta/common/header.jsp"%>
<style>
<%@include file="/res/css/sparta/board/qna/list.css"%>
</style>
<%@include file="/res/js/sparta/board/common_js.jsp"%>
<%@include file="/res/js/sparta/board/qna/list_js.jsp"%>
<div id="main">
	<div class="css-1hnxdb7">
		<div class="css-mbwamd">
			<div class="css-1b9to7p">
				<div class="css-vsssfb">
					<div class="css-110bgim">
						<div id="navTab" class="css-28nsux">
							<div data-link="free" class="css-nw8p9d">자유게시판</div>
							<div data-link="qna" class="css-19831hi">학습 질문</div>
							<div data-link="free" class="css-nw8p9d">개발일지</div>
							<div data-link="free" class="css-17ta9kq"></div>
							<div data-link="free" class="css-nw8p9d">나의 활동</div>
						</div>
					</div>
					<div class="css-16bft0y">
						<div id="writeQna" class="css-804v49">질문하기</div>
						<div class="css-19klq5c">내일배움카드에 관해 궁금한 점을 물어보세요!</div>
					</div>
				</div>
				<div class="css-33zep3">
					<div class="css-17t7asl">
						<div class="css-1jibmi3">
							<div class="css-1mpmq0i">
								<div class="css-18vdxik">학습 질문</div>
								<div class="css-sltocz">
									<img src="/res/img/ic_question.svg" alt="Question Icon"
										class="css-1ysoy1z">
									<div class="css-1vc0o0f">
										<div class="css-q3uxca">
											<div class="css-142c7er">학습 질문이란?</div>
											<div class="css-10s3ogg">강의를 듣다가 모르는 부분이 생기면 언제든 질문을 올려
												보세요! 담당 튜터가 친절하게 답변해 드릴게요.</div>
											<div class="css-oq2b56">* 구매한 강의의 수강/복습 기간 + 3개월까지 이용
												가능</div>
											<div class="css-1owra2t"></div>
											<div class="css-1vs8v05">
												<div content="답변 대기중" class="css-zz9url">답변 대기중</div>
												<div class="css-perlsz">튜터님의 답변을 기다리고 있는 질문이에요.</div>
											</div>
											<div class="css-1vs8v05">
												<div content="답변 완료" class="css-an4oaw">
													<img src="/assets/icons/ic_check_16.svg" class="css-hr47l6">답변
													완료
												</div>
												<div class="css-perlsz">
													<span class="css-v727ce">24시간 이내</span> 답변을 받은 질문이에요.
												</div>
											</div>
											<div class="css-1vs8v05">
												<div content="즉문즉답" class="css-frrbt7">
													<img src="/assets/icons/ic_fastqna.svg" class="css-hr47l6">즉문즉답
												</div>
												<div class="css-18l5714">
													<div class="css-perlsz">
														<span class="css-we4tef">10분 이내 답변</span> 받은 질문이에요.
													</div>
													<div class="css-oq2b56">* 즉문즉답 서비스는 일부 강의만 지원</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="css-1qzbd5x">강의를 듣다가 막히면 튜터님께 바로 질문해요</div>
						</div>
						<div class="css-badhgr">
							<div class="css-tkpa7w">
								<svg width="20" height="20" viewBox="0 0 20 20" fill="none"
									xmlns="http://www.w3.org/2000/svg">
									<circle cx="8.33329" cy="8.33335" r="5.79167" stroke="#e8344e"
										stroke-width="1.75"></circle>
									<path
										d="M13.1187 11.8813C12.777 11.5396 12.223 11.5396 11.8813 11.8813C11.5396 12.223 11.5396 12.777 11.8813 13.1187L13.1187 11.8813ZM16.8813 18.1187C17.223 18.4604 17.777 18.4604 18.1187 18.1187C18.4604 17.777 18.4604 17.223 18.1187 16.8813L16.8813 18.1187ZM11.8813 13.1187L16.8813 18.1187L18.1187 16.8813L13.1187 11.8813L11.8813 13.1187Z"
										fill="#e8344e"></path></svg>
								<input placeholder="" type="search" class="css-1n5z2jo" value="">
								<div class="css-1eeezbl">에러메시지를 복사해서 검색해 보세요.</div>
							</div>
						</div>
					</div>
					<div class="css-1rw3qt4">
						<div class="css-6cwwok">
							<div class="css-1hbxc4s">
								<div class="css-ogh6wd">
									<div class="css-1tttep5">
										<div class="css-1pbcmmt">
											<div class="css-5ala5m">
												<div class="css-nmdn6a">강의</div>
												<div class="css-bw1gsw">전체</div>
											</div>
											<svg width="16" height="16" viewBox="0 0 16 16" fill="none"
												xmlns="http://www.w3.org/2000/svg">
												<path
													d="M4.53033 6.13373C4.23744 5.84084 3.76256 5.84084 3.46967 6.13373C3.17678 6.42663 3.17678 6.9015 3.46967 7.19439L4.53033 6.13373ZM8 10.6641L7.46967 11.1944C7.76256 11.4873 8.23744 11.4873 8.53033 11.1944L8 10.6641ZM12.5303 7.19439C12.8232 6.9015 12.8232 6.42663 12.5303 6.13373C12.2374 5.84084 11.7626 5.84084 11.4697 6.13373L12.5303 7.19439ZM3.46967 7.19439L7.46967 11.1944L8.53033 10.1337L4.53033 6.13373L3.46967 7.19439ZM8.53033 11.1944L12.5303 7.19439L11.4697 6.13373L7.46967 10.1337L8.53033 11.1944Z"
													fill="#9DA7AE"></path></svg>
										</div>
									</div>
									<div class="css-1tttep5">
										<div class="css-1pbcmmt">
											<div class="css-1w1pqxe">주차 전체</div>
											<svg width="16" height="16" viewBox="0 0 16 16" fill="none"
												xmlns="http://www.w3.org/2000/svg">
												<path
													d="M4.53033 6.13373C4.23744 5.84084 3.76256 5.84084 3.46967 6.13373C3.17678 6.42663 3.17678 6.9015 3.46967 7.19439L4.53033 6.13373ZM8 10.6641L7.46967 11.1944C7.76256 11.4873 8.23744 11.4873 8.53033 11.1944L8 10.6641ZM12.5303 7.19439C12.8232 6.9015 12.8232 6.42663 12.5303 6.13373C12.2374 5.84084 11.7626 5.84084 11.4697 6.13373L12.5303 7.19439ZM3.46967 7.19439L7.46967 11.1944L8.53033 10.1337L4.53033 6.13373L3.46967 7.19439ZM8.53033 11.1944L12.5303 7.19439L11.4697 6.13373L7.46967 10.1337L8.53033 11.1944Z"
													fill="#d7e0e6"></path></svg>
										</div>
									</div>
									<div class="css-g70uuw"></div>
								</div>
							</div>
						</div>
						<div class="css-6ylcwl">
							<div class="css-f7kuwm">
								<div id="sortTab" class="css-1o94c7r">
									<div data-sort="date" class="css-1kb98ja">
										<svg width="4" height="4" viewBox="0 0 4 4" fill="none"
											xmlns="http://www.w3.org/2000/svg">
											<circle cx="2" cy="2" r="2" fill="#e8344e"></circle></svg>
										<div class="css-1619ajl">최신순</div>
									</div>
									<div data-sort="vote" class="css-bewb21">
										<svg width="4" height="4" viewBox="0 0 4 4" fill="none"
											xmlns="http://www.w3.org/2000/svg">
											<circle cx="2" cy="2" r="2" fill="#B4BFC6"></circle></svg>
										<div class="css-1j5hzn7">추천순</div>
									</div>
								</div>
							</div>
						</div>
						<div class="css-1u520vu">
							<div class="css-1oiw7n3">
								<div class="css-1uqhmue">
									<div class="css-14se270">
										<div class="css-10oh9nn">무료</div>
									</div>
									<div class="css-roi94s">🧑‍💻 코딩을 더 배워보고 싶다면? 스파르타 국비지원
										🌱</div>
								</div>
								<div class="css-ubyasm">23.04.06</div>
							</div>
							<div class="css-1oiw7n3">
								<div class="css-1uqhmue">
									<div class="css-14se270">
										<div class="css-10oh9nn">EVENT</div>
									</div>
									<div class="css-roi94s">🔥여러분들의 수강인증샷을 올려주세요~!🔥</div>
								</div>
								<div class="css-ubyasm">23.09.27</div>
							</div>
						</div>
						<div id="boardList" class="css-1csvk83">
							<div class="css-k59gj9">
								<div class="css-aw1sgr">
									<div class="css-w75lz4">
										<div class="css-1awc9y9">
											<svg width="16" height="16" viewBox="0 0 16 16" fill="none"
												xmlns="http://www.w3.org/2000/svg">
												<path
													d="M14 8C14 11.3137 11.3137 14 8 14C4.68629 14 2 11.3137 2 8C2 4.68629 4.68629 2 8 2"
													stroke="#E8344E" stroke-width="1.5" stroke-linecap="round"></path>
												<rect x="10.3037" y="2.104" width="1.4" height="1.4"
													rx="0.7" fill="#E8344E"></rect>
												<rect x="12.4961" y="4.30402" width="1.4" height="1.4"
													rx="0.7" fill="#E8344E"></rect>
												<path
													d="M9.5999 5.59998H6.3999V7.99998H8.7999C9.24173 7.99998 9.5999 8.35815 9.5999 8.79998V9.59998C9.5999 10.0418 9.24173 10.4 8.7999 10.4H6.3999"
													stroke="#E8344E" stroke-width="1.5" stroke-linecap="round"
													stroke-linejoin="round"></path></svg>
											<span class="css-1xxe9l9">즉문즉답</span>
											<div class="css-1y8k33r"></div>
											2분 만에 튜터 답변 완료
										</div>
									</div>
									<div class="css-kem115">
										<div class="css-1473tav">
											<div class="css-1jibmi3">
												<div class="css-cp47oo">빗물 구현중인데 디버그 메시지가 안뜹니다.</div>
												<div class="css-14bssip">강의를 보면서 알려주신 코드 그대로 따라 친 것
													같은데 디버그 메시지가 뜨지 않습니다.에러가 뜨는 건 아닌데 메시지만 출력되지 않아요.르탄이 코드에
													넣어놓은 디버그 메시지는 출력되는데 빗물이 충돌 시에 떠야하는 디버그 메시지만 출력이 되지 않습니다.</div>
											</div>
											<div class="css-12y9hd">
												<div class="css-cvph88">게임개발 종합반 v0</div>
												<div class="css-u70qqp">
													<svg width="12" height="12" viewBox="0 0 12 12" fill="none"
														xmlns="http://www.w3.org/2000/svg">
														<path fill-rule="evenodd" clip-rule="evenodd"
															d="M8.27738 5.70537C8.44009 5.86809 8.44009 6.13191 8.27738 6.29463L4.94404 9.62796C4.78132 9.79068 4.5175 9.79068 4.35479 9.62796C4.19207 9.46524 4.19207 9.20142 4.35479 9.03871L7.39349 6L4.35479 2.96129C4.19207 2.79858 4.19207 2.53476 4.35479 2.37204C4.5175 2.20932 4.78132 2.20932 4.94404 2.37204L8.27738 5.70537Z"
															fill="#9DA7AE"></path></svg>
												</div>
												<div class="css-1mmjn2r">1주차</div>
											</div>
										</div>
										<div class="css-bt1qy"></div>
										<img
											src="https://media-sparta.s3.ap-northeast-2.amazonaws.com/media/tempfiles/community/90f4f1bb-8c7a-41f6-aa9a-152de35146afNzUxMzMwLjA1OTg5MTMwODcxNzEyNDczNjQyODQ3.png"
											class="css-17s6wd5">
									</div>
									<div class="css-99cwur">
										<div class="css-1fhge30">
											<div class="css-aw18wm">
												<span
													style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
													sizes="100vw"
													srcset="/_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F24.png&amp;w=640&amp;q=75 640w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F24.png&amp;w=750&amp;q=75 750w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F24.png&amp;w=828&amp;q=75 828w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F24.png&amp;w=1080&amp;q=75 1080w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F24.png&amp;w=1200&amp;q=75 1200w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F24.png&amp;w=1920&amp;q=75 1920w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F24.png&amp;w=2048&amp;q=75 2048w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F24.png&amp;w=3840&amp;q=75 3840w"
													src="/_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F24.png&amp;w=3840&amp;q=75"
													decoding="async" data-nimg="fill"
													style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%;"></span>
											</div>
											<div class="css-5zcuov">
												<div class="css-1sika4i">홍*우</div>
												<div class="css-1tify6w">
													<svg width="2" height="2" viewBox="0 0 2 2" fill="none"
														xmlns="http://www.w3.org/2000/svg">
														<circle cx="1" cy="1" r="1" fill="#9DA7AE"></circle></svg>
												</div>
												<div class="css-1ry6usa">2024년 4월 7일 오후 4:09</div>
											</div>
										</div>
										<div class="css-o01lup">
											<div class="css-ts29it">
												<div class="css-1ry6usa">댓글</div>
												<div class="css-1ry6usa">1</div>
											</div>
											<div class="css-dbc8ke">・</div>
											<div class="css-ts29it">
												<div class="css-1ry6usa">추천</div>
												<div class="css-1ry6usa">0</div>
											</div>
											<div class="css-dbc8ke">・</div>
											<div class="css-ts29it">
												<div class="css-1ry6usa">조회수</div>
												<div class="css-1ry6usa">10</div>
											</div>
										</div>
										<div class="css-1vkj2s1">
											<div class="css-1ry6usa">조회수</div>
											<div class="css-1ry6usa">10</div>
										</div>
									</div>
									<div class="css-z2xt5y">
										<div class="css-1awc9y9">
											<svg width="16" height="16" viewBox="0 0 16 16" fill="none"
												xmlns="http://www.w3.org/2000/svg">
												<path
													d="M14 8C14 11.3137 11.3137 14 8 14C4.68629 14 2 11.3137 2 8C2 4.68629 4.68629 2 8 2"
													stroke="#E8344E" stroke-width="1.5" stroke-linecap="round"></path>
												<rect x="10.3037" y="2.104" width="1.4" height="1.4"
													rx="0.7" fill="#E8344E"></rect>
												<rect x="12.4961" y="4.30402" width="1.4" height="1.4"
													rx="0.7" fill="#E8344E"></rect>
												<path
													d="M9.5999 5.59998H6.3999V7.99998H8.7999C9.24173 7.99998 9.5999 8.35815 9.5999 8.79998V9.59998C9.5999 10.0418 9.24173 10.4 8.7999 10.4H6.3999"
													stroke="#E8344E" stroke-width="1.5" stroke-linecap="round"
													stroke-linejoin="round"></path></svg>
											<span class="css-1xxe9l9">즉문즉답</span>
											<div class="css-1y8k33r"></div>
											2분 만에 튜터 답변 완료
										</div>
									</div>
								</div>
								<div class="css-k9ergi">
									<div class="css-192oc4s">
										<div class="css-ts29it">
											<div class="css-hr47l6">
												<svg width="16" height="16" viewBox="0 0 16 16" fill="none"
													xmlns="http://www.w3.org/2000/svg">
													<path
														d="M8 13.999L7.364 14.3965C7.50106 14.6158 7.74141 14.749 8 14.749C8.25859 14.749 8.49895 14.6158 8.636 14.3965L8 13.999ZM9.47083 11.6457L8.83483 11.2482L9.47083 11.6457ZM3.33333 3.41565H12.6667V1.91565H3.33333V3.41565ZM13.25 3.99898V9.99898H14.75V3.99898H13.25ZM2.75 9.99898V3.99898H1.25V9.99898H2.75ZM8.636 13.6015L7.16517 11.2482L5.89317 12.0431L7.364 14.3965L8.636 13.6015ZM5.96384 10.5823H3.33333V12.0823H5.96384V10.5823ZM12.6667 10.5823H10.0362V12.0823H12.6667V10.5823ZM8.83483 11.2482L7.364 13.6015L8.636 14.3965L10.1068 12.0431L8.83483 11.2482ZM10.0362 10.5823C9.54771 10.5823 9.09371 10.8339 8.83483 11.2482L10.1068 12.0431C10.0916 12.0675 10.0649 12.0823 10.0362 12.0823V10.5823ZM1.25 9.99898C1.25 11.1496 2.18274 12.0823 3.33333 12.0823V10.5823C3.01117 10.5823 2.75 10.3211 2.75 9.99898H1.25ZM13.25 9.99898C13.25 10.3211 12.9888 10.5823 12.6667 10.5823V12.0823C13.8173 12.0823 14.75 11.1496 14.75 9.99898H13.25ZM12.6667 3.41565C12.9888 3.41565 13.25 3.67682 13.25 3.99898H14.75C14.75 2.84839 13.8173 1.91565 12.6667 1.91565V3.41565ZM7.16517 11.2482C6.90629 10.8339 6.45229 10.5823 5.96384 10.5823V12.0823C5.9351 12.0823 5.9084 12.0675 5.89317 12.0431L7.16517 11.2482ZM3.33333 1.91565C2.18274 1.91565 1.25 2.84839 1.25 3.99898H2.75C2.75 3.67682 3.01117 3.41565 3.33333 3.41565V1.91565Z"
														fill="#B4BFC6"></path>
													<rect x="4.58203" y="6.25" width="1.5" height="1.5"
														rx="0.75" fill="#B4BFC6"></rect>
													<rect x="7.25" y="6.25" width="1.5" height="1.5" rx="0.75"
														fill="#B4BFC6"></rect>
													<rect x="9.91797" y="6.25" width="1.5" height="1.5"
														rx="0.75" fill="#B4BFC6"></rect></svg>
											</div>
											<div class="css-i21m7n">1</div>
										</div>
									</div>
									<div class="css-192oc4s">
										<div class="css-ts29it">
											<div class="css-hr47l6">
												<svg width="16" height="16" viewBox="0 0 16 16" fill="none"
													xmlns="http://www.w3.org/2000/svg">
													<rect x="2" y="6.66565" width="1.33333" height="6"
														stroke="#B4BFC6" stroke-width="1.5"
														stroke-linejoin="round"></rect>
													<path
														d="M9.1972 2.16336L8.62103 1.68322L9.1972 2.16336ZM10.9725 11.9167H6.66667V13.4167H10.9725V11.9167ZM6.75 12V6.96547H5.25V12H6.75ZM13.25 6.66667V8.91304H14.75V6.66667H13.25ZM13.1446 9.24756L11.4503 11.6679L12.6792 12.528L14.3734 10.1078L13.1446 9.24756ZM11.3333 6.75H13.3333V5.25H11.3333V6.75ZM7.19424 5.73845L9.77336 2.6435L8.62103 1.68322L6.04191 4.77817L7.19424 5.73845ZM9.25 2.45402V4.66667H10.75V2.45402H9.25ZM9.54598 2.75C9.38252 2.75 9.25 2.61748 9.25 2.45402H10.75C10.75 1.78906 10.2109 1.25 9.54598 1.25V2.75ZM9.77336 2.6435C9.71713 2.71098 9.63382 2.75 9.54598 2.75V1.25C9.18866 1.25 8.84979 1.40872 8.62103 1.68322L9.77336 2.6435ZM11.3333 5.25C11.0112 5.25 10.75 4.98883 10.75 4.66667H9.25C9.25 5.81726 10.1827 6.75 11.3333 6.75V5.25ZM13.25 8.91304C13.25 9.03272 13.2132 9.14951 13.1446 9.24756L14.3734 10.1078C14.6185 9.75758 14.75 9.34048 14.75 8.91304H13.25ZM6.66667 11.9167C6.71269 11.9167 6.75 11.954 6.75 12H5.25C5.25 12.7824 5.88426 13.4167 6.66667 13.4167V11.9167ZM10.9725 13.4167C11.6523 13.4167 12.2893 13.085 12.6792 12.528L11.4503 11.6679C11.3412 11.8238 11.1628 11.9167 10.9725 11.9167V13.4167ZM14.75 6.66667C14.75 5.88426 14.1157 5.25 13.3333 5.25V6.75C13.2873 6.75 13.25 6.71269 13.25 6.66667H14.75ZM6.75 6.96547C6.75 6.51709 6.9072 6.0829 7.19424 5.73845L6.04191 4.77817C5.53022 5.3922 5.25 6.16618 5.25 6.96547H6.75Z"
														fill="#B4BFC6"></path></svg>
											</div>
											<div class="css-i21m7n">0</div>
										</div>
									</div>
									<div class="css-192oc4s">
										<div class="css-ts29it">
											<div class="css-hr47l6">
												<svg width="16" height="16" viewBox="0 0 16 16" fill="none"
													xmlns="http://www.w3.org/2000/svg">
													<path
														d="M12.6677 14L12.2621 14.6309C12.4929 14.7792 12.7863 14.7898 13.0271 14.6583C13.2679 14.5268 13.4177 14.2744 13.4177 14H12.6677ZM3.33435 14H2.58435C2.58435 14.2744 2.73415 14.5268 2.97496 14.6583C3.21576 14.7898 3.50914 14.7792 3.73992 14.6309L3.33435 14ZM8.00102 11L8.40659 10.3691C8.15953 10.2103 7.8425 10.2103 7.59545 10.3691L8.00102 11ZM4.66768 2.75H11.3344V1.25H4.66768V2.75ZM11.9177 3.33333V14H13.4177V3.33333H11.9177ZM4.08435 14V3.33333H2.58435V14H4.08435ZM13.0733 13.3691L8.40659 10.3691L7.59545 11.6309L12.2621 14.6309L13.0733 13.3691ZM7.59545 10.3691L2.92878 13.3691L3.73992 14.6309L8.40659 11.6309L7.59545 10.3691ZM11.3344 2.75C11.6565 2.75 11.9177 3.01117 11.9177 3.33333H13.4177C13.4177 2.18274 12.4849 1.25 11.3344 1.25V2.75ZM4.66768 1.25C3.51709 1.25 2.58435 2.18274 2.58435 3.33333H4.08435C4.08435 3.01117 4.34552 2.75 4.66768 2.75V1.25Z"
														fill="#B4BFC6"></path></svg>
											</div>
											<div class="css-i21m7n">0</div>
										</div>
									</div>
								</div>
							</div>
							<div class="css-k59gj9">
								<div class="css-aw1sgr">
									<div class="css-w75lz4">
										<div class="css-1awc9y9">
											<svg width="16" height="16" viewBox="0 0 16 16" fill="none"
												xmlns="http://www.w3.org/2000/svg">
												<path
													d="M14 8C14 11.3137 11.3137 14 8 14C4.68629 14 2 11.3137 2 8C2 4.68629 4.68629 2 8 2"
													stroke="#E8344E" stroke-width="1.5" stroke-linecap="round"></path>
												<rect x="10.3037" y="2.104" width="1.4" height="1.4"
													rx="0.7" fill="#E8344E"></rect>
												<rect x="12.4961" y="4.30402" width="1.4" height="1.4"
													rx="0.7" fill="#E8344E"></rect>
												<path
													d="M9.5999 5.59998H6.3999V7.99998H8.7999C9.24173 7.99998 9.5999 8.35815 9.5999 8.79998V9.59998C9.5999 10.0418 9.24173 10.4 8.7999 10.4H6.3999"
													stroke="#E8344E" stroke-width="1.5" stroke-linecap="round"
													stroke-linejoin="round"></path></svg>
											<span class="css-1xxe9l9">즉문즉답</span>
											<div class="css-1y8k33r"></div>
											3분 만에 튜터 답변 완료
										</div>
									</div>
									<div class="css-kem115">
										<div class="css-1473tav">
											<div class="css-1jibmi3">
												<div class="css-cp47oo">let temp_html =
													'&lt;li&gt;${gu_name} : ${gu_mise}&lt;/li&gt;'; 코딩 오류</div>
												<div class="css-14bssip">강사님이 치신 let temp_html =
													'&amp;lt;li&amp;gt;${gu_name} :
													${gu_mise}&amp;lt;/li&amp;gt;'; 코드에서는 $표시 뒤에 색상이 푸른색으로 활성화
													되는데,제가 친 코드에서는 코드 색상이 변하지 않고 활성화가 되지 않은듯이 나와서 이부분이 어떤 오류인지
													궁금합니다.</div>
											</div>
											<div class="css-12y9hd">
												<div class="css-cvph88">[왕초보] 코딩이 처음이어도 쉽게 배우는 웹개발 A
													to Z v0</div>
												<div class="css-u70qqp">
													<svg width="12" height="12" viewBox="0 0 12 12" fill="none"
														xmlns="http://www.w3.org/2000/svg">
														<path fill-rule="evenodd" clip-rule="evenodd"
															d="M8.27738 5.70537C8.44009 5.86809 8.44009 6.13191 8.27738 6.29463L4.94404 9.62796C4.78132 9.79068 4.5175 9.79068 4.35479 9.62796C4.19207 9.46524 4.19207 9.20142 4.35479 9.03871L7.39349 6L4.35479 2.96129C4.19207 2.79858 4.19207 2.53476 4.35479 2.37204C4.5175 2.20932 4.78132 2.20932 4.94404 2.37204L8.27738 5.70537Z"
															fill="#9DA7AE"></path></svg>
												</div>
												<div class="css-1mmjn2r">3주차</div>
											</div>
										</div>
										<div class="css-bt1qy"></div>
										<img
											src="https://media-sparta.s3.ap-northeast-2.amazonaws.com/media/tempfiles/community/5de4e267-dd38-418d-817f-f699053173f520240407_122254.png"
											class="css-17s6wd5">
									</div>
									<div class="css-99cwur">
										<div class="css-1fhge30">
											<div class="css-aw18wm">
												<span
													style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
													sizes="100vw"
													srcset="/_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F22.png&amp;w=640&amp;q=75 640w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F22.png&amp;w=750&amp;q=75 750w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F22.png&amp;w=828&amp;q=75 828w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F22.png&amp;w=1080&amp;q=75 1080w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F22.png&amp;w=1200&amp;q=75 1200w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F22.png&amp;w=1920&amp;q=75 1920w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F22.png&amp;w=2048&amp;q=75 2048w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F22.png&amp;w=3840&amp;q=75 3840w"
													src="/_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F22.png&amp;w=3840&amp;q=75"
													decoding="async" data-nimg="fill"
													style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%;"></span>
											</div>
											<div class="css-5zcuov">
												<div class="css-1sika4i">김*언</div>
												<div class="css-1tify6w">
													<svg width="2" height="2" viewBox="0 0 2 2" fill="none"
														xmlns="http://www.w3.org/2000/svg">
														<circle cx="1" cy="1" r="1" fill="#9DA7AE"></circle></svg>
												</div>
												<div class="css-1ry6usa">2024년 4월 7일 오후 12:34</div>
											</div>
										</div>
										<div class="css-o01lup">
											<div class="css-ts29it">
												<div class="css-1ry6usa">댓글</div>
												<div class="css-1ry6usa">3</div>
											</div>
											<div class="css-dbc8ke">・</div>
											<div class="css-ts29it">
												<div class="css-1ry6usa">추천</div>
												<div class="css-1ry6usa">0</div>
											</div>
											<div class="css-dbc8ke">・</div>
											<div class="css-ts29it">
												<div class="css-1ry6usa">조회수</div>
												<div class="css-1ry6usa">12</div>
											</div>
										</div>
										<div class="css-1vkj2s1">
											<div class="css-1ry6usa">조회수</div>
											<div class="css-1ry6usa">12</div>
										</div>
									</div>
									<div class="css-z2xt5y">
										<div class="css-1awc9y9">
											<svg width="16" height="16" viewBox="0 0 16 16" fill="none"
												xmlns="http://www.w3.org/2000/svg">
												<path
													d="M14 8C14 11.3137 11.3137 14 8 14C4.68629 14 2 11.3137 2 8C2 4.68629 4.68629 2 8 2"
													stroke="#E8344E" stroke-width="1.5" stroke-linecap="round"></path>
												<rect x="10.3037" y="2.104" width="1.4" height="1.4"
													rx="0.7" fill="#E8344E"></rect>
												<rect x="12.4961" y="4.30402" width="1.4" height="1.4"
													rx="0.7" fill="#E8344E"></rect>
												<path
													d="M9.5999 5.59998H6.3999V7.99998H8.7999C9.24173 7.99998 9.5999 8.35815 9.5999 8.79998V9.59998C9.5999 10.0418 9.24173 10.4 8.7999 10.4H6.3999"
													stroke="#E8344E" stroke-width="1.5" stroke-linecap="round"
													stroke-linejoin="round"></path></svg>
											<span class="css-1xxe9l9">즉문즉답</span>
											<div class="css-1y8k33r"></div>
											3분 만에 튜터 답변 완료
										</div>
									</div>
								</div>
								<div class="css-k9ergi">
									<div class="css-192oc4s">
										<div class="css-ts29it">
											<div class="css-hr47l6">
												<svg width="16" height="16" viewBox="0 0 16 16" fill="none"
													xmlns="http://www.w3.org/2000/svg">
													<path
														d="M8 13.999L7.364 14.3965C7.50106 14.6158 7.74141 14.749 8 14.749C8.25859 14.749 8.49895 14.6158 8.636 14.3965L8 13.999ZM9.47083 11.6457L8.83483 11.2482L9.47083 11.6457ZM3.33333 3.41565H12.6667V1.91565H3.33333V3.41565ZM13.25 3.99898V9.99898H14.75V3.99898H13.25ZM2.75 9.99898V3.99898H1.25V9.99898H2.75ZM8.636 13.6015L7.16517 11.2482L5.89317 12.0431L7.364 14.3965L8.636 13.6015ZM5.96384 10.5823H3.33333V12.0823H5.96384V10.5823ZM12.6667 10.5823H10.0362V12.0823H12.6667V10.5823ZM8.83483 11.2482L7.364 13.6015L8.636 14.3965L10.1068 12.0431L8.83483 11.2482ZM10.0362 10.5823C9.54771 10.5823 9.09371 10.8339 8.83483 11.2482L10.1068 12.0431C10.0916 12.0675 10.0649 12.0823 10.0362 12.0823V10.5823ZM1.25 9.99898C1.25 11.1496 2.18274 12.0823 3.33333 12.0823V10.5823C3.01117 10.5823 2.75 10.3211 2.75 9.99898H1.25ZM13.25 9.99898C13.25 10.3211 12.9888 10.5823 12.6667 10.5823V12.0823C13.8173 12.0823 14.75 11.1496 14.75 9.99898H13.25ZM12.6667 3.41565C12.9888 3.41565 13.25 3.67682 13.25 3.99898H14.75C14.75 2.84839 13.8173 1.91565 12.6667 1.91565V3.41565ZM7.16517 11.2482C6.90629 10.8339 6.45229 10.5823 5.96384 10.5823V12.0823C5.9351 12.0823 5.9084 12.0675 5.89317 12.0431L7.16517 11.2482ZM3.33333 1.91565C2.18274 1.91565 1.25 2.84839 1.25 3.99898H2.75C2.75 3.67682 3.01117 3.41565 3.33333 3.41565V1.91565Z"
														fill="#B4BFC6"></path>
													<rect x="4.58203" y="6.25" width="1.5" height="1.5"
														rx="0.75" fill="#B4BFC6"></rect>
													<rect x="7.25" y="6.25" width="1.5" height="1.5" rx="0.75"
														fill="#B4BFC6"></rect>
													<rect x="9.91797" y="6.25" width="1.5" height="1.5"
														rx="0.75" fill="#B4BFC6"></rect></svg>
											</div>
											<div class="css-i21m7n">3</div>
										</div>
									</div>
									<div class="css-192oc4s">
										<div class="css-ts29it">
											<div class="css-hr47l6">
												<svg width="16" height="16" viewBox="0 0 16 16" fill="none"
													xmlns="http://www.w3.org/2000/svg">
													<rect x="2" y="6.66565" width="1.33333" height="6"
														stroke="#B4BFC6" stroke-width="1.5"
														stroke-linejoin="round"></rect>
													<path
														d="M9.1972 2.16336L8.62103 1.68322L9.1972 2.16336ZM10.9725 11.9167H6.66667V13.4167H10.9725V11.9167ZM6.75 12V6.96547H5.25V12H6.75ZM13.25 6.66667V8.91304H14.75V6.66667H13.25ZM13.1446 9.24756L11.4503 11.6679L12.6792 12.528L14.3734 10.1078L13.1446 9.24756ZM11.3333 6.75H13.3333V5.25H11.3333V6.75ZM7.19424 5.73845L9.77336 2.6435L8.62103 1.68322L6.04191 4.77817L7.19424 5.73845ZM9.25 2.45402V4.66667H10.75V2.45402H9.25ZM9.54598 2.75C9.38252 2.75 9.25 2.61748 9.25 2.45402H10.75C10.75 1.78906 10.2109 1.25 9.54598 1.25V2.75ZM9.77336 2.6435C9.71713 2.71098 9.63382 2.75 9.54598 2.75V1.25C9.18866 1.25 8.84979 1.40872 8.62103 1.68322L9.77336 2.6435ZM11.3333 5.25C11.0112 5.25 10.75 4.98883 10.75 4.66667H9.25C9.25 5.81726 10.1827 6.75 11.3333 6.75V5.25ZM13.25 8.91304C13.25 9.03272 13.2132 9.14951 13.1446 9.24756L14.3734 10.1078C14.6185 9.75758 14.75 9.34048 14.75 8.91304H13.25ZM6.66667 11.9167C6.71269 11.9167 6.75 11.954 6.75 12H5.25C5.25 12.7824 5.88426 13.4167 6.66667 13.4167V11.9167ZM10.9725 13.4167C11.6523 13.4167 12.2893 13.085 12.6792 12.528L11.4503 11.6679C11.3412 11.8238 11.1628 11.9167 10.9725 11.9167V13.4167ZM14.75 6.66667C14.75 5.88426 14.1157 5.25 13.3333 5.25V6.75C13.2873 6.75 13.25 6.71269 13.25 6.66667H14.75ZM6.75 6.96547C6.75 6.51709 6.9072 6.0829 7.19424 5.73845L6.04191 4.77817C5.53022 5.3922 5.25 6.16618 5.25 6.96547H6.75Z"
														fill="#B4BFC6"></path></svg>
											</div>
											<div class="css-i21m7n">0</div>
										</div>
									</div>
									<div class="css-192oc4s">
										<div class="css-ts29it">
											<div class="css-hr47l6">
												<svg width="16" height="16" viewBox="0 0 16 16" fill="none"
													xmlns="http://www.w3.org/2000/svg">
													<path
														d="M12.6677 14L12.2621 14.6309C12.4929 14.7792 12.7863 14.7898 13.0271 14.6583C13.2679 14.5268 13.4177 14.2744 13.4177 14H12.6677ZM3.33435 14H2.58435C2.58435 14.2744 2.73415 14.5268 2.97496 14.6583C3.21576 14.7898 3.50914 14.7792 3.73992 14.6309L3.33435 14ZM8.00102 11L8.40659 10.3691C8.15953 10.2103 7.8425 10.2103 7.59545 10.3691L8.00102 11ZM4.66768 2.75H11.3344V1.25H4.66768V2.75ZM11.9177 3.33333V14H13.4177V3.33333H11.9177ZM4.08435 14V3.33333H2.58435V14H4.08435ZM13.0733 13.3691L8.40659 10.3691L7.59545 11.6309L12.2621 14.6309L13.0733 13.3691ZM7.59545 10.3691L2.92878 13.3691L3.73992 14.6309L8.40659 11.6309L7.59545 10.3691ZM11.3344 2.75C11.6565 2.75 11.9177 3.01117 11.9177 3.33333H13.4177C13.4177 2.18274 12.4849 1.25 11.3344 1.25V2.75ZM4.66768 1.25C3.51709 1.25 2.58435 2.18274 2.58435 3.33333H4.08435C4.08435 3.01117 4.34552 2.75 4.66768 2.75V1.25Z"
														fill="#B4BFC6"></path></svg>
											</div>
											<div class="css-i21m7n">0</div>
										</div>
									</div>
								</div>
							</div>
							<div class="css-k59gj9">
								<div class="css-aw1sgr">
									<div class="css-w75lz4">
										<div class="css-1awc9y9">
											<svg width="16" height="16" viewBox="0 0 16 16" fill="none"
												xmlns="http://www.w3.org/2000/svg">
												<path
													d="M14 8C14 11.3137 11.3137 14 8 14C4.68629 14 2 11.3137 2 8C2 4.68629 4.68629 2 8 2"
													stroke="#E8344E" stroke-width="1.5" stroke-linecap="round"></path>
												<rect x="10.3037" y="2.104" width="1.4" height="1.4"
													rx="0.7" fill="#E8344E"></rect>
												<rect x="12.4961" y="4.30402" width="1.4" height="1.4"
													rx="0.7" fill="#E8344E"></rect>
												<path
													d="M9.5999 5.59998H6.3999V7.99998H8.7999C9.24173 7.99998 9.5999 8.35815 9.5999 8.79998V9.59998C9.5999 10.0418 9.24173 10.4 8.7999 10.4H6.3999"
													stroke="#E8344E" stroke-width="1.5" stroke-linecap="round"
													stroke-linejoin="round"></path></svg>
											<span class="css-1xxe9l9">즉문즉답</span>
											<div class="css-1y8k33r"></div>
											40분 만에 튜터 답변 완료
										</div>
									</div>
									<div class="css-kem115">
										<div class="css-1473tav">
											<div class="css-1jibmi3">
												<div class="css-cp47oo">에뮬레이터가 연결이 안됩니다. 왕초보이니 상세하게 설명
													부탁 드립니다.</div>
												<div class="css-14bssip">어제는 되다가 다시 하니 안됐어요 어제 튜터님이
													보내주신 메세지입니다.</div>
											</div>
											<div class="css-12y9hd">
												<div class="css-cvph88">[왕초보] 플러터(Flutter)로 시작하는 앱개발
													종합반 v0</div>
												<div class="css-u70qqp">
													<svg width="12" height="12" viewBox="0 0 12 12" fill="none"
														xmlns="http://www.w3.org/2000/svg">
														<path fill-rule="evenodd" clip-rule="evenodd"
															d="M8.27738 5.70537C8.44009 5.86809 8.44009 6.13191 8.27738 6.29463L4.94404 9.62796C4.78132 9.79068 4.5175 9.79068 4.35479 9.62796C4.19207 9.46524 4.19207 9.20142 4.35479 9.03871L7.39349 6L4.35479 2.96129C4.19207 2.79858 4.19207 2.53476 4.35479 2.37204C4.5175 2.20932 4.78132 2.20932 4.94404 2.37204L8.27738 5.70537Z"
															fill="#9DA7AE"></path></svg>
												</div>
												<div class="css-1mmjn2r">1주차</div>
											</div>
										</div>
										<div class="css-bt1qy"></div>
										<img
											src="https://media-sparta.s3.ap-northeast-2.amazonaws.com/media/tempfiles/community/972237e6-ad22-4bd8-a813-ed83d315b924MjQ2Nzg3LjcxODEwMzE0MTUxNzEyNDUxNzE4NzI2.png"
											class="css-17s6wd5">
									</div>
									<div class="css-99cwur">
										<div class="css-1fhge30">
											<div class="css-aw18wm">
												<span
													style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
													sizes="100vw"
													srcset="/_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F0.png&amp;w=640&amp;q=75 640w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F0.png&amp;w=750&amp;q=75 750w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F0.png&amp;w=828&amp;q=75 828w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F0.png&amp;w=1080&amp;q=75 1080w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F0.png&amp;w=1200&amp;q=75 1200w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F0.png&amp;w=1920&amp;q=75 1920w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F0.png&amp;w=2048&amp;q=75 2048w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F0.png&amp;w=3840&amp;q=75 3840w"
													src="/_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F0.png&amp;w=3840&amp;q=75"
													decoding="async" data-nimg="fill"
													style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%;"></span>
											</div>
											<div class="css-5zcuov">
												<div class="css-1sika4i">장*남</div>
												<div class="css-1tify6w">
													<svg width="2" height="2" viewBox="0 0 2 2" fill="none"
														xmlns="http://www.w3.org/2000/svg">
														<circle cx="1" cy="1" r="1" fill="#9DA7AE"></circle></svg>
												</div>
												<div class="css-1ry6usa">2024년 4월 7일 오전 10:06</div>
											</div>
										</div>
										<div class="css-o01lup">
											<div class="css-ts29it">
												<div class="css-1ry6usa">댓글</div>
												<div class="css-1ry6usa">17</div>
											</div>
											<div class="css-dbc8ke">・</div>
											<div class="css-ts29it">
												<div class="css-1ry6usa">추천</div>
												<div class="css-1ry6usa">0</div>
											</div>
											<div class="css-dbc8ke">・</div>
											<div class="css-ts29it">
												<div class="css-1ry6usa">조회수</div>
												<div class="css-1ry6usa">25</div>
											</div>
										</div>
										<div class="css-1vkj2s1">
											<div class="css-1ry6usa">조회수</div>
											<div class="css-1ry6usa">25</div>
										</div>
									</div>
									<div class="css-z2xt5y">
										<div class="css-1awc9y9">
											<svg width="16" height="16" viewBox="0 0 16 16" fill="none"
												xmlns="http://www.w3.org/2000/svg">
												<path
													d="M14 8C14 11.3137 11.3137 14 8 14C4.68629 14 2 11.3137 2 8C2 4.68629 4.68629 2 8 2"
													stroke="#E8344E" stroke-width="1.5" stroke-linecap="round"></path>
												<rect x="10.3037" y="2.104" width="1.4" height="1.4"
													rx="0.7" fill="#E8344E"></rect>
												<rect x="12.4961" y="4.30402" width="1.4" height="1.4"
													rx="0.7" fill="#E8344E"></rect>
												<path
													d="M9.5999 5.59998H6.3999V7.99998H8.7999C9.24173 7.99998 9.5999 8.35815 9.5999 8.79998V9.59998C9.5999 10.0418 9.24173 10.4 8.7999 10.4H6.3999"
													stroke="#E8344E" stroke-width="1.5" stroke-linecap="round"
													stroke-linejoin="round"></path></svg>
											<span class="css-1xxe9l9">즉문즉답</span>
											<div class="css-1y8k33r"></div>
											40분 만에 튜터 답변 완료
										</div>
									</div>
								</div>
								<div class="css-k9ergi">
									<div class="css-192oc4s">
										<div class="css-ts29it">
											<div class="css-hr47l6">
												<svg width="16" height="16" viewBox="0 0 16 16" fill="none"
													xmlns="http://www.w3.org/2000/svg">
													<path
														d="M8 13.999L7.364 14.3965C7.50106 14.6158 7.74141 14.749 8 14.749C8.25859 14.749 8.49895 14.6158 8.636 14.3965L8 13.999ZM9.47083 11.6457L8.83483 11.2482L9.47083 11.6457ZM3.33333 3.41565H12.6667V1.91565H3.33333V3.41565ZM13.25 3.99898V9.99898H14.75V3.99898H13.25ZM2.75 9.99898V3.99898H1.25V9.99898H2.75ZM8.636 13.6015L7.16517 11.2482L5.89317 12.0431L7.364 14.3965L8.636 13.6015ZM5.96384 10.5823H3.33333V12.0823H5.96384V10.5823ZM12.6667 10.5823H10.0362V12.0823H12.6667V10.5823ZM8.83483 11.2482L7.364 13.6015L8.636 14.3965L10.1068 12.0431L8.83483 11.2482ZM10.0362 10.5823C9.54771 10.5823 9.09371 10.8339 8.83483 11.2482L10.1068 12.0431C10.0916 12.0675 10.0649 12.0823 10.0362 12.0823V10.5823ZM1.25 9.99898C1.25 11.1496 2.18274 12.0823 3.33333 12.0823V10.5823C3.01117 10.5823 2.75 10.3211 2.75 9.99898H1.25ZM13.25 9.99898C13.25 10.3211 12.9888 10.5823 12.6667 10.5823V12.0823C13.8173 12.0823 14.75 11.1496 14.75 9.99898H13.25ZM12.6667 3.41565C12.9888 3.41565 13.25 3.67682 13.25 3.99898H14.75C14.75 2.84839 13.8173 1.91565 12.6667 1.91565V3.41565ZM7.16517 11.2482C6.90629 10.8339 6.45229 10.5823 5.96384 10.5823V12.0823C5.9351 12.0823 5.9084 12.0675 5.89317 12.0431L7.16517 11.2482ZM3.33333 1.91565C2.18274 1.91565 1.25 2.84839 1.25 3.99898H2.75C2.75 3.67682 3.01117 3.41565 3.33333 3.41565V1.91565Z"
														fill="#B4BFC6"></path>
													<rect x="4.58203" y="6.25" width="1.5" height="1.5"
														rx="0.75" fill="#B4BFC6"></rect>
													<rect x="7.25" y="6.25" width="1.5" height="1.5" rx="0.75"
														fill="#B4BFC6"></rect>
													<rect x="9.91797" y="6.25" width="1.5" height="1.5"
														rx="0.75" fill="#B4BFC6"></rect></svg>
											</div>
											<div class="css-i21m7n">17</div>
										</div>
									</div>
									<div class="css-192oc4s">
										<div class="css-ts29it">
											<div class="css-hr47l6">
												<svg width="16" height="16" viewBox="0 0 16 16" fill="none"
													xmlns="http://www.w3.org/2000/svg">
													<rect x="2" y="6.66565" width="1.33333" height="6"
														stroke="#B4BFC6" stroke-width="1.5"
														stroke-linejoin="round"></rect>
													<path
														d="M9.1972 2.16336L8.62103 1.68322L9.1972 2.16336ZM10.9725 11.9167H6.66667V13.4167H10.9725V11.9167ZM6.75 12V6.96547H5.25V12H6.75ZM13.25 6.66667V8.91304H14.75V6.66667H13.25ZM13.1446 9.24756L11.4503 11.6679L12.6792 12.528L14.3734 10.1078L13.1446 9.24756ZM11.3333 6.75H13.3333V5.25H11.3333V6.75ZM7.19424 5.73845L9.77336 2.6435L8.62103 1.68322L6.04191 4.77817L7.19424 5.73845ZM9.25 2.45402V4.66667H10.75V2.45402H9.25ZM9.54598 2.75C9.38252 2.75 9.25 2.61748 9.25 2.45402H10.75C10.75 1.78906 10.2109 1.25 9.54598 1.25V2.75ZM9.77336 2.6435C9.71713 2.71098 9.63382 2.75 9.54598 2.75V1.25C9.18866 1.25 8.84979 1.40872 8.62103 1.68322L9.77336 2.6435ZM11.3333 5.25C11.0112 5.25 10.75 4.98883 10.75 4.66667H9.25C9.25 5.81726 10.1827 6.75 11.3333 6.75V5.25ZM13.25 8.91304C13.25 9.03272 13.2132 9.14951 13.1446 9.24756L14.3734 10.1078C14.6185 9.75758 14.75 9.34048 14.75 8.91304H13.25ZM6.66667 11.9167C6.71269 11.9167 6.75 11.954 6.75 12H5.25C5.25 12.7824 5.88426 13.4167 6.66667 13.4167V11.9167ZM10.9725 13.4167C11.6523 13.4167 12.2893 13.085 12.6792 12.528L11.4503 11.6679C11.3412 11.8238 11.1628 11.9167 10.9725 11.9167V13.4167ZM14.75 6.66667C14.75 5.88426 14.1157 5.25 13.3333 5.25V6.75C13.2873 6.75 13.25 6.71269 13.25 6.66667H14.75ZM6.75 6.96547C6.75 6.51709 6.9072 6.0829 7.19424 5.73845L6.04191 4.77817C5.53022 5.3922 5.25 6.16618 5.25 6.96547H6.75Z"
														fill="#B4BFC6"></path></svg>
											</div>
											<div class="css-i21m7n">0</div>
										</div>
									</div>
									<div class="css-192oc4s">
										<div class="css-ts29it">
											<div class="css-hr47l6">
												<svg width="16" height="16" viewBox="0 0 16 16" fill="none"
													xmlns="http://www.w3.org/2000/svg">
													<path
														d="M12.6677 14L12.2621 14.6309C12.4929 14.7792 12.7863 14.7898 13.0271 14.6583C13.2679 14.5268 13.4177 14.2744 13.4177 14H12.6677ZM3.33435 14H2.58435C2.58435 14.2744 2.73415 14.5268 2.97496 14.6583C3.21576 14.7898 3.50914 14.7792 3.73992 14.6309L3.33435 14ZM8.00102 11L8.40659 10.3691C8.15953 10.2103 7.8425 10.2103 7.59545 10.3691L8.00102 11ZM4.66768 2.75H11.3344V1.25H4.66768V2.75ZM11.9177 3.33333V14H13.4177V3.33333H11.9177ZM4.08435 14V3.33333H2.58435V14H4.08435ZM13.0733 13.3691L8.40659 10.3691L7.59545 11.6309L12.2621 14.6309L13.0733 13.3691ZM7.59545 10.3691L2.92878 13.3691L3.73992 14.6309L8.40659 11.6309L7.59545 10.3691ZM11.3344 2.75C11.6565 2.75 11.9177 3.01117 11.9177 3.33333H13.4177C13.4177 2.18274 12.4849 1.25 11.3344 1.25V2.75ZM4.66768 1.25C3.51709 1.25 2.58435 2.18274 2.58435 3.33333H4.08435C4.08435 3.01117 4.34552 2.75 4.66768 2.75V1.25Z"
														fill="#B4BFC6"></path></svg>
											</div>
											<div class="css-i21m7n">0</div>
										</div>
									</div>
								</div>
							</div>
							<div class="css-k59gj9">
								<div class="css-aw1sgr">
									<div class="css-w75lz4">
										<div class="css-1awc9y9">
											<svg width="16" height="16" viewBox="0 0 16 16" fill="none"
												xmlns="http://www.w3.org/2000/svg">
												<path
													d="M14 8C14 11.3137 11.3137 14 8 14C4.68629 14 2 11.3137 2 8C2 4.68629 4.68629 2 8 2"
													stroke="#E8344E" stroke-width="1.5" stroke-linecap="round"></path>
												<rect x="10.3037" y="2.104" width="1.4" height="1.4"
													rx="0.7" fill="#E8344E"></rect>
												<rect x="12.4961" y="4.30402" width="1.4" height="1.4"
													rx="0.7" fill="#E8344E"></rect>
												<path
													d="M9.5999 5.59998H6.3999V7.99998H8.7999C9.24173 7.99998 9.5999 8.35815 9.5999 8.79998V9.59998C9.5999 10.0418 9.24173 10.4 8.7999 10.4H6.3999"
													stroke="#E8344E" stroke-width="1.5" stroke-linecap="round"
													stroke-linejoin="round"></path></svg>
											<span class="css-1xxe9l9">즉문즉답</span>
											<div class="css-1y8k33r"></div>
											1분 만에 튜터 답변 완료
										</div>
									</div>
									<div class="css-kem115">
										<div class="css-1473tav">
											<div class="css-1jibmi3">
												<div class="css-cp47oo">4-5강 질문입니다</div>
												<div class="css-14bssip">
													https://console.firebase.google.com/project/sparta-ef48e/overview?hl=ko제
													파이어베이스 창 주소인데요4-4강 파이어베이스 세팅하기 까지는 끝내고 컴터 껏는데 4-5강 강의 내용 따라
													가려면파이어 베이스 다시 세팅해야 하나요?아니면 세팅된곳으로 찾는 방법을 알수 있을까요?</div>
											</div>
											<div class="css-12y9hd">
												<div class="css-cvph88">[왕초보] 코딩이 처음이어도 쉽게 배우는 웹개발 A
													to Z v0</div>
												<div class="css-u70qqp">
													<svg width="12" height="12" viewBox="0 0 12 12" fill="none"
														xmlns="http://www.w3.org/2000/svg">
														<path fill-rule="evenodd" clip-rule="evenodd"
															d="M8.27738 5.70537C8.44009 5.86809 8.44009 6.13191 8.27738 6.29463L4.94404 9.62796C4.78132 9.79068 4.5175 9.79068 4.35479 9.62796C4.19207 9.46524 4.19207 9.20142 4.35479 9.03871L7.39349 6L4.35479 2.96129C4.19207 2.79858 4.19207 2.53476 4.35479 2.37204C4.5175 2.20932 4.78132 2.20932 4.94404 2.37204L8.27738 5.70537Z"
															fill="#9DA7AE"></path></svg>
												</div>
												<div class="css-1mmjn2r">4주차</div>
											</div>
										</div>
										<div class="css-bt1qy"></div>
										<img
											src="https://media-sparta.s3.ap-northeast-2.amazonaws.com/media/tempfiles/community/7784fa96-1919-4e58-9c83-eaf90b80f630캡처.PNG"
											class="css-17s6wd5">
									</div>
									<div class="css-99cwur">
										<div class="css-1fhge30">
											<div class="css-aw18wm">
												<span
													style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
													sizes="100vw"
													srcset="/_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F10.png&amp;w=640&amp;q=75 640w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F10.png&amp;w=750&amp;q=75 750w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F10.png&amp;w=828&amp;q=75 828w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F10.png&amp;w=1080&amp;q=75 1080w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F10.png&amp;w=1200&amp;q=75 1200w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F10.png&amp;w=1920&amp;q=75 1920w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F10.png&amp;w=2048&amp;q=75 2048w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F10.png&amp;w=3840&amp;q=75 3840w"
													src="/_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F10.png&amp;w=3840&amp;q=75"
													decoding="async" data-nimg="fill"
													style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%;"></span>
											</div>
											<div class="css-5zcuov">
												<div class="css-1sika4i">윤*중</div>
												<div class="css-1tify6w">
													<svg width="2" height="2" viewBox="0 0 2 2" fill="none"
														xmlns="http://www.w3.org/2000/svg">
														<circle cx="1" cy="1" r="1" fill="#9DA7AE"></circle></svg>
												</div>
												<div class="css-1ry6usa">2024년 4월 7일 오전 9:24</div>
											</div>
										</div>
										<div class="css-o01lup">
											<div class="css-ts29it">
												<div class="css-1ry6usa">댓글</div>
												<div class="css-1ry6usa">27</div>
											</div>
											<div class="css-dbc8ke">・</div>
											<div class="css-ts29it">
												<div class="css-1ry6usa">추천</div>
												<div class="css-1ry6usa">0</div>
											</div>
											<div class="css-dbc8ke">・</div>
											<div class="css-ts29it">
												<div class="css-1ry6usa">조회수</div>
												<div class="css-1ry6usa">30</div>
											</div>
										</div>
										<div class="css-1vkj2s1">
											<div class="css-1ry6usa">조회수</div>
											<div class="css-1ry6usa">30</div>
										</div>
									</div>
									<div class="css-z2xt5y">
										<div class="css-1awc9y9">
											<svg width="16" height="16" viewBox="0 0 16 16" fill="none"
												xmlns="http://www.w3.org/2000/svg">
												<path
													d="M14 8C14 11.3137 11.3137 14 8 14C4.68629 14 2 11.3137 2 8C2 4.68629 4.68629 2 8 2"
													stroke="#E8344E" stroke-width="1.5" stroke-linecap="round"></path>
												<rect x="10.3037" y="2.104" width="1.4" height="1.4"
													rx="0.7" fill="#E8344E"></rect>
												<rect x="12.4961" y="4.30402" width="1.4" height="1.4"
													rx="0.7" fill="#E8344E"></rect>
												<path
													d="M9.5999 5.59998H6.3999V7.99998H8.7999C9.24173 7.99998 9.5999 8.35815 9.5999 8.79998V9.59998C9.5999 10.0418 9.24173 10.4 8.7999 10.4H6.3999"
													stroke="#E8344E" stroke-width="1.5" stroke-linecap="round"
													stroke-linejoin="round"></path></svg>
											<span class="css-1xxe9l9">즉문즉답</span>
											<div class="css-1y8k33r"></div>
											1분 만에 튜터 답변 완료
										</div>
									</div>
								</div>
								<div class="css-k9ergi">
									<div class="css-192oc4s">
										<div class="css-ts29it">
											<div class="css-hr47l6">
												<svg width="16" height="16" viewBox="0 0 16 16" fill="none"
													xmlns="http://www.w3.org/2000/svg">
													<path
														d="M8 13.999L7.364 14.3965C7.50106 14.6158 7.74141 14.749 8 14.749C8.25859 14.749 8.49895 14.6158 8.636 14.3965L8 13.999ZM9.47083 11.6457L8.83483 11.2482L9.47083 11.6457ZM3.33333 3.41565H12.6667V1.91565H3.33333V3.41565ZM13.25 3.99898V9.99898H14.75V3.99898H13.25ZM2.75 9.99898V3.99898H1.25V9.99898H2.75ZM8.636 13.6015L7.16517 11.2482L5.89317 12.0431L7.364 14.3965L8.636 13.6015ZM5.96384 10.5823H3.33333V12.0823H5.96384V10.5823ZM12.6667 10.5823H10.0362V12.0823H12.6667V10.5823ZM8.83483 11.2482L7.364 13.6015L8.636 14.3965L10.1068 12.0431L8.83483 11.2482ZM10.0362 10.5823C9.54771 10.5823 9.09371 10.8339 8.83483 11.2482L10.1068 12.0431C10.0916 12.0675 10.0649 12.0823 10.0362 12.0823V10.5823ZM1.25 9.99898C1.25 11.1496 2.18274 12.0823 3.33333 12.0823V10.5823C3.01117 10.5823 2.75 10.3211 2.75 9.99898H1.25ZM13.25 9.99898C13.25 10.3211 12.9888 10.5823 12.6667 10.5823V12.0823C13.8173 12.0823 14.75 11.1496 14.75 9.99898H13.25ZM12.6667 3.41565C12.9888 3.41565 13.25 3.67682 13.25 3.99898H14.75C14.75 2.84839 13.8173 1.91565 12.6667 1.91565V3.41565ZM7.16517 11.2482C6.90629 10.8339 6.45229 10.5823 5.96384 10.5823V12.0823C5.9351 12.0823 5.9084 12.0675 5.89317 12.0431L7.16517 11.2482ZM3.33333 1.91565C2.18274 1.91565 1.25 2.84839 1.25 3.99898H2.75C2.75 3.67682 3.01117 3.41565 3.33333 3.41565V1.91565Z"
														fill="#B4BFC6"></path>
													<rect x="4.58203" y="6.25" width="1.5" height="1.5"
														rx="0.75" fill="#B4BFC6"></rect>
													<rect x="7.25" y="6.25" width="1.5" height="1.5" rx="0.75"
														fill="#B4BFC6"></rect>
													<rect x="9.91797" y="6.25" width="1.5" height="1.5"
														rx="0.75" fill="#B4BFC6"></rect></svg>
											</div>
											<div class="css-i21m7n">27</div>
										</div>
									</div>
									<div class="css-192oc4s">
										<div class="css-ts29it">
											<div class="css-hr47l6">
												<svg width="16" height="16" viewBox="0 0 16 16" fill="none"
													xmlns="http://www.w3.org/2000/svg">
													<rect x="2" y="6.66565" width="1.33333" height="6"
														stroke="#B4BFC6" stroke-width="1.5"
														stroke-linejoin="round"></rect>
													<path
														d="M9.1972 2.16336L8.62103 1.68322L9.1972 2.16336ZM10.9725 11.9167H6.66667V13.4167H10.9725V11.9167ZM6.75 12V6.96547H5.25V12H6.75ZM13.25 6.66667V8.91304H14.75V6.66667H13.25ZM13.1446 9.24756L11.4503 11.6679L12.6792 12.528L14.3734 10.1078L13.1446 9.24756ZM11.3333 6.75H13.3333V5.25H11.3333V6.75ZM7.19424 5.73845L9.77336 2.6435L8.62103 1.68322L6.04191 4.77817L7.19424 5.73845ZM9.25 2.45402V4.66667H10.75V2.45402H9.25ZM9.54598 2.75C9.38252 2.75 9.25 2.61748 9.25 2.45402H10.75C10.75 1.78906 10.2109 1.25 9.54598 1.25V2.75ZM9.77336 2.6435C9.71713 2.71098 9.63382 2.75 9.54598 2.75V1.25C9.18866 1.25 8.84979 1.40872 8.62103 1.68322L9.77336 2.6435ZM11.3333 5.25C11.0112 5.25 10.75 4.98883 10.75 4.66667H9.25C9.25 5.81726 10.1827 6.75 11.3333 6.75V5.25ZM13.25 8.91304C13.25 9.03272 13.2132 9.14951 13.1446 9.24756L14.3734 10.1078C14.6185 9.75758 14.75 9.34048 14.75 8.91304H13.25ZM6.66667 11.9167C6.71269 11.9167 6.75 11.954 6.75 12H5.25C5.25 12.7824 5.88426 13.4167 6.66667 13.4167V11.9167ZM10.9725 13.4167C11.6523 13.4167 12.2893 13.085 12.6792 12.528L11.4503 11.6679C11.3412 11.8238 11.1628 11.9167 10.9725 11.9167V13.4167ZM14.75 6.66667C14.75 5.88426 14.1157 5.25 13.3333 5.25V6.75C13.2873 6.75 13.25 6.71269 13.25 6.66667H14.75ZM6.75 6.96547C6.75 6.51709 6.9072 6.0829 7.19424 5.73845L6.04191 4.77817C5.53022 5.3922 5.25 6.16618 5.25 6.96547H6.75Z"
														fill="#B4BFC6"></path></svg>
											</div>
											<div class="css-i21m7n">0</div>
										</div>
									</div>
									<div class="css-192oc4s">
										<div class="css-ts29it">
											<div class="css-hr47l6">
												<svg width="16" height="16" viewBox="0 0 16 16" fill="none"
													xmlns="http://www.w3.org/2000/svg">
													<path
														d="M12.6677 14L12.2621 14.6309C12.4929 14.7792 12.7863 14.7898 13.0271 14.6583C13.2679 14.5268 13.4177 14.2744 13.4177 14H12.6677ZM3.33435 14H2.58435C2.58435 14.2744 2.73415 14.5268 2.97496 14.6583C3.21576 14.7898 3.50914 14.7792 3.73992 14.6309L3.33435 14ZM8.00102 11L8.40659 10.3691C8.15953 10.2103 7.8425 10.2103 7.59545 10.3691L8.00102 11ZM4.66768 2.75H11.3344V1.25H4.66768V2.75ZM11.9177 3.33333V14H13.4177V3.33333H11.9177ZM4.08435 14V3.33333H2.58435V14H4.08435ZM13.0733 13.3691L8.40659 10.3691L7.59545 11.6309L12.2621 14.6309L13.0733 13.3691ZM7.59545 10.3691L2.92878 13.3691L3.73992 14.6309L8.40659 11.6309L7.59545 10.3691ZM11.3344 2.75C11.6565 2.75 11.9177 3.01117 11.9177 3.33333H13.4177C13.4177 2.18274 12.4849 1.25 11.3344 1.25V2.75ZM4.66768 1.25C3.51709 1.25 2.58435 2.18274 2.58435 3.33333H4.08435C4.08435 3.01117 4.34552 2.75 4.66768 2.75V1.25Z"
														fill="#B4BFC6"></path></svg>
											</div>
											<div class="css-i21m7n">0</div>
										</div>
									</div>
								</div>
							</div>
							<div class="css-k59gj9">
								<div class="css-aw1sgr">
									<div class="css-w75lz4">
										<div class="css-1254q6y">답변 대기중</div>
									</div>
									<div class="css-kem115">
										<div class="css-1473tav">
											<div class="css-1jibmi3">
												<div class="css-cp47oo">leetcode</div>
												<div class="css-14bssip">two-sum 클릭 후 화면 안떠요 계속 기다려도
													안뜨네요 ㅠ ﻿</div>
											</div>
											<div class="css-12y9hd">
												<div class="css-cvph88">[무료] 1시간 만에 정복하는 코딩테스트 합격법 v0</div>
												<div class="css-u70qqp">
													<svg width="12" height="12" viewBox="0 0 12 12" fill="none"
														xmlns="http://www.w3.org/2000/svg">
														<path fill-rule="evenodd" clip-rule="evenodd"
															d="M8.27738 5.70537C8.44009 5.86809 8.44009 6.13191 8.27738 6.29463L4.94404 9.62796C4.78132 9.79068 4.5175 9.79068 4.35479 9.62796C4.19207 9.46524 4.19207 9.20142 4.35479 9.03871L7.39349 6L4.35479 2.96129C4.19207 2.79858 4.19207 2.53476 4.35479 2.37204C4.5175 2.20932 4.78132 2.20932 4.94404 2.37204L8.27738 5.70537Z"
															fill="#9DA7AE"></path></svg>
												</div>
												<div class="css-1mmjn2r">1주차</div>
											</div>
										</div>
										<div class="css-bt1qy"></div>
										<img
											src="https://media-sparta.s3.ap-northeast-2.amazonaws.com/media/tempfiles/community/6a1445fe-9660-4fb4-a240-19cd327a4825스크린샷 2024-04-07 오전 6.21.09.png"
											class="css-17s6wd5">
									</div>
									<div class="css-99cwur">
										<div class="css-1fhge30">
											<div class="css-aw18wm">
												<span
													style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
													sizes="100vw"
													srcset="/_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F26.png&amp;w=640&amp;q=75 640w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F26.png&amp;w=750&amp;q=75 750w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F26.png&amp;w=828&amp;q=75 828w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F26.png&amp;w=1080&amp;q=75 1080w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F26.png&amp;w=1200&amp;q=75 1200w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F26.png&amp;w=1920&amp;q=75 1920w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F26.png&amp;w=2048&amp;q=75 2048w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F26.png&amp;w=3840&amp;q=75 3840w"
													src="/_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F26.png&amp;w=3840&amp;q=75"
													decoding="async" data-nimg="fill"
													style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%;"></span>
											</div>
											<div class="css-5zcuov">
												<div class="css-1sika4i">유*민</div>
												<div class="css-1tify6w">
													<svg width="2" height="2" viewBox="0 0 2 2" fill="none"
														xmlns="http://www.w3.org/2000/svg">
														<circle cx="1" cy="1" r="1" fill="#9DA7AE"></circle></svg>
												</div>
												<div class="css-1ry6usa">2024년 4월 7일 오전 6:23</div>
											</div>
										</div>
										<div class="css-o01lup">
											<div class="css-ts29it">
												<div class="css-1ry6usa">댓글</div>
												<div class="css-1ry6usa">0</div>
											</div>
											<div class="css-dbc8ke">・</div>
											<div class="css-ts29it">
												<div class="css-1ry6usa">추천</div>
												<div class="css-1ry6usa">0</div>
											</div>
											<div class="css-dbc8ke">・</div>
											<div class="css-ts29it">
												<div class="css-1ry6usa">조회수</div>
												<div class="css-1ry6usa">2</div>
											</div>
										</div>
										<div class="css-1vkj2s1">
											<div class="css-1ry6usa">조회수</div>
											<div class="css-1ry6usa">2</div>
										</div>
									</div>
									<div class="css-z2xt5y">
										<div class="css-1254q6y">답변 대기중</div>
									</div>
								</div>
								<div class="css-k9ergi">
									<div class="css-192oc4s">
										<div class="css-ts29it">
											<div class="css-hr47l6">
												<svg width="16" height="16" viewBox="0 0 16 16" fill="none"
													xmlns="http://www.w3.org/2000/svg">
													<path
														d="M8 13.999L7.364 14.3965C7.50106 14.6158 7.74141 14.749 8 14.749C8.25859 14.749 8.49895 14.6158 8.636 14.3965L8 13.999ZM9.47083 11.6457L8.83483 11.2482L9.47083 11.6457ZM3.33333 3.41565H12.6667V1.91565H3.33333V3.41565ZM13.25 3.99898V9.99898H14.75V3.99898H13.25ZM2.75 9.99898V3.99898H1.25V9.99898H2.75ZM8.636 13.6015L7.16517 11.2482L5.89317 12.0431L7.364 14.3965L8.636 13.6015ZM5.96384 10.5823H3.33333V12.0823H5.96384V10.5823ZM12.6667 10.5823H10.0362V12.0823H12.6667V10.5823ZM8.83483 11.2482L7.364 13.6015L8.636 14.3965L10.1068 12.0431L8.83483 11.2482ZM10.0362 10.5823C9.54771 10.5823 9.09371 10.8339 8.83483 11.2482L10.1068 12.0431C10.0916 12.0675 10.0649 12.0823 10.0362 12.0823V10.5823ZM1.25 9.99898C1.25 11.1496 2.18274 12.0823 3.33333 12.0823V10.5823C3.01117 10.5823 2.75 10.3211 2.75 9.99898H1.25ZM13.25 9.99898C13.25 10.3211 12.9888 10.5823 12.6667 10.5823V12.0823C13.8173 12.0823 14.75 11.1496 14.75 9.99898H13.25ZM12.6667 3.41565C12.9888 3.41565 13.25 3.67682 13.25 3.99898H14.75C14.75 2.84839 13.8173 1.91565 12.6667 1.91565V3.41565ZM7.16517 11.2482C6.90629 10.8339 6.45229 10.5823 5.96384 10.5823V12.0823C5.9351 12.0823 5.9084 12.0675 5.89317 12.0431L7.16517 11.2482ZM3.33333 1.91565C2.18274 1.91565 1.25 2.84839 1.25 3.99898H2.75C2.75 3.67682 3.01117 3.41565 3.33333 3.41565V1.91565Z"
														fill="#B4BFC6"></path>
													<rect x="4.58203" y="6.25" width="1.5" height="1.5"
														rx="0.75" fill="#B4BFC6"></rect>
													<rect x="7.25" y="6.25" width="1.5" height="1.5" rx="0.75"
														fill="#B4BFC6"></rect>
													<rect x="9.91797" y="6.25" width="1.5" height="1.5"
														rx="0.75" fill="#B4BFC6"></rect></svg>
											</div>
											<div class="css-i21m7n">0</div>
										</div>
									</div>
									<div class="css-192oc4s">
										<div class="css-ts29it">
											<div class="css-hr47l6">
												<svg width="16" height="16" viewBox="0 0 16 16" fill="none"
													xmlns="http://www.w3.org/2000/svg">
													<rect x="2" y="6.66565" width="1.33333" height="6"
														stroke="#B4BFC6" stroke-width="1.5"
														stroke-linejoin="round"></rect>
													<path
														d="M9.1972 2.16336L8.62103 1.68322L9.1972 2.16336ZM10.9725 11.9167H6.66667V13.4167H10.9725V11.9167ZM6.75 12V6.96547H5.25V12H6.75ZM13.25 6.66667V8.91304H14.75V6.66667H13.25ZM13.1446 9.24756L11.4503 11.6679L12.6792 12.528L14.3734 10.1078L13.1446 9.24756ZM11.3333 6.75H13.3333V5.25H11.3333V6.75ZM7.19424 5.73845L9.77336 2.6435L8.62103 1.68322L6.04191 4.77817L7.19424 5.73845ZM9.25 2.45402V4.66667H10.75V2.45402H9.25ZM9.54598 2.75C9.38252 2.75 9.25 2.61748 9.25 2.45402H10.75C10.75 1.78906 10.2109 1.25 9.54598 1.25V2.75ZM9.77336 2.6435C9.71713 2.71098 9.63382 2.75 9.54598 2.75V1.25C9.18866 1.25 8.84979 1.40872 8.62103 1.68322L9.77336 2.6435ZM11.3333 5.25C11.0112 5.25 10.75 4.98883 10.75 4.66667H9.25C9.25 5.81726 10.1827 6.75 11.3333 6.75V5.25ZM13.25 8.91304C13.25 9.03272 13.2132 9.14951 13.1446 9.24756L14.3734 10.1078C14.6185 9.75758 14.75 9.34048 14.75 8.91304H13.25ZM6.66667 11.9167C6.71269 11.9167 6.75 11.954 6.75 12H5.25C5.25 12.7824 5.88426 13.4167 6.66667 13.4167V11.9167ZM10.9725 13.4167C11.6523 13.4167 12.2893 13.085 12.6792 12.528L11.4503 11.6679C11.3412 11.8238 11.1628 11.9167 10.9725 11.9167V13.4167ZM14.75 6.66667C14.75 5.88426 14.1157 5.25 13.3333 5.25V6.75C13.2873 6.75 13.25 6.71269 13.25 6.66667H14.75ZM6.75 6.96547C6.75 6.51709 6.9072 6.0829 7.19424 5.73845L6.04191 4.77817C5.53022 5.3922 5.25 6.16618 5.25 6.96547H6.75Z"
														fill="#B4BFC6"></path></svg>
											</div>
											<div class="css-i21m7n">0</div>
										</div>
									</div>
									<div class="css-192oc4s">
										<div class="css-ts29it">
											<div class="css-hr47l6">
												<svg width="16" height="16" viewBox="0 0 16 16" fill="none"
													xmlns="http://www.w3.org/2000/svg">
													<path
														d="M12.6677 14L12.2621 14.6309C12.4929 14.7792 12.7863 14.7898 13.0271 14.6583C13.2679 14.5268 13.4177 14.2744 13.4177 14H12.6677ZM3.33435 14H2.58435C2.58435 14.2744 2.73415 14.5268 2.97496 14.6583C3.21576 14.7898 3.50914 14.7792 3.73992 14.6309L3.33435 14ZM8.00102 11L8.40659 10.3691C8.15953 10.2103 7.8425 10.2103 7.59545 10.3691L8.00102 11ZM4.66768 2.75H11.3344V1.25H4.66768V2.75ZM11.9177 3.33333V14H13.4177V3.33333H11.9177ZM4.08435 14V3.33333H2.58435V14H4.08435ZM13.0733 13.3691L8.40659 10.3691L7.59545 11.6309L12.2621 14.6309L13.0733 13.3691ZM7.59545 10.3691L2.92878 13.3691L3.73992 14.6309L8.40659 11.6309L7.59545 10.3691ZM11.3344 2.75C11.6565 2.75 11.9177 3.01117 11.9177 3.33333H13.4177C13.4177 2.18274 12.4849 1.25 11.3344 1.25V2.75ZM4.66768 1.25C3.51709 1.25 2.58435 2.18274 2.58435 3.33333H4.08435C4.08435 3.01117 4.34552 2.75 4.66768 2.75V1.25Z"
														fill="#B4BFC6"></path></svg>
											</div>
											<div class="css-i21m7n">0</div>
										</div>
									</div>
								</div>
							</div>
							<div class="css-k59gj9">
								<div class="css-aw1sgr">
									<div class="css-w75lz4">
										<div class="css-172994e">
											<svg width="14" height="10" viewBox="0 0 14 10" fill="none"
												xmlns="http://www.w3.org/2000/svg">
												<path d="M1.66553 5L4.99886 8.33333L12.3322 1"
													stroke="#0085FF" stroke-width="1.5" stroke-linecap="round"
													stroke-linejoin="round"></path></svg>
											답변 완료
										</div>
									</div>
									<div class="css-kem115">
										<div class="css-12i5occ">
											<div class="css-1jibmi3">
												<div class="css-cp47oo">글자 사이즈 조절 단축키</div>
												<div class="css-14bssip">글자 사이즈 조절 단축키가
													안됩니다.윈도우입니다.커맨드+시프트+&amp;lt;, 이면윈도우에서 컨트로+시프트+&amp;lt;로 누르면
													되는 거 맞지 않나요?ㅠ글자 크기 단축키가 안되네요ㅠ</div>
											</div>
											<div class="css-12y9hd">
												<div class="css-cvph88">PPT보다 쉬운 피그마 v0</div>
												<div class="css-u70qqp">
													<svg width="12" height="12" viewBox="0 0 12 12" fill="none"
														xmlns="http://www.w3.org/2000/svg">
														<path fill-rule="evenodd" clip-rule="evenodd"
															d="M8.27738 5.70537C8.44009 5.86809 8.44009 6.13191 8.27738 6.29463L4.94404 9.62796C4.78132 9.79068 4.5175 9.79068 4.35479 9.62796C4.19207 9.46524 4.19207 9.20142 4.35479 9.03871L7.39349 6L4.35479 2.96129C4.19207 2.79858 4.19207 2.53476 4.35479 2.37204C4.5175 2.20932 4.78132 2.20932 4.94404 2.37204L8.27738 5.70537Z"
															fill="#9DA7AE"></path></svg>
												</div>
												<div class="css-1mmjn2r">1주차</div>
											</div>
										</div>
										<div class="css-bt1qy"></div>
									</div>
									<div class="css-99cwur">
										<div class="css-1fhge30">
											<div class="css-aw18wm">
												<span
													style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
													sizes="100vw"
													srcset="/_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F8.png&amp;w=640&amp;q=75 640w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F8.png&amp;w=750&amp;q=75 750w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F8.png&amp;w=828&amp;q=75 828w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F8.png&amp;w=1080&amp;q=75 1080w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F8.png&amp;w=1200&amp;q=75 1200w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F8.png&amp;w=1920&amp;q=75 1920w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F8.png&amp;w=2048&amp;q=75 2048w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F8.png&amp;w=3840&amp;q=75 3840w"
													src="/_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F8.png&amp;w=3840&amp;q=75"
													decoding="async" data-nimg="fill"
													style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%;"></span>
											</div>
											<div class="css-5zcuov">
												<div class="css-1sika4i">김*영</div>
												<div class="css-1tify6w">
													<svg width="2" height="2" viewBox="0 0 2 2" fill="none"
														xmlns="http://www.w3.org/2000/svg">
														<circle cx="1" cy="1" r="1" fill="#9DA7AE"></circle></svg>
												</div>
												<div class="css-1ry6usa">2024년 4월 7일 오전 1:39</div>
											</div>
										</div>
										<div class="css-o01lup">
											<div class="css-ts29it">
												<div class="css-1ry6usa">댓글</div>
												<div class="css-1ry6usa">4</div>
											</div>
											<div class="css-dbc8ke">・</div>
											<div class="css-ts29it">
												<div class="css-1ry6usa">추천</div>
												<div class="css-1ry6usa">0</div>
											</div>
											<div class="css-dbc8ke">・</div>
											<div class="css-ts29it">
												<div class="css-1ry6usa">조회수</div>
												<div class="css-1ry6usa">8</div>
											</div>
										</div>
										<div class="css-1vkj2s1">
											<div class="css-1ry6usa">조회수</div>
											<div class="css-1ry6usa">8</div>
										</div>
									</div>
									<div class="css-z2xt5y">
										<div class="css-172994e">
											<svg width="14" height="10" viewBox="0 0 14 10" fill="none"
												xmlns="http://www.w3.org/2000/svg">
												<path d="M1.66553 5L4.99886 8.33333L12.3322 1"
													stroke="#0085FF" stroke-width="1.5" stroke-linecap="round"
													stroke-linejoin="round"></path></svg>
											답변 완료
										</div>
									</div>
								</div>
								<div class="css-k9ergi">
									<div class="css-192oc4s">
										<div class="css-ts29it">
											<div class="css-hr47l6">
												<svg width="16" height="16" viewBox="0 0 16 16" fill="none"
													xmlns="http://www.w3.org/2000/svg">
													<path
														d="M8 13.999L7.364 14.3965C7.50106 14.6158 7.74141 14.749 8 14.749C8.25859 14.749 8.49895 14.6158 8.636 14.3965L8 13.999ZM9.47083 11.6457L8.83483 11.2482L9.47083 11.6457ZM3.33333 3.41565H12.6667V1.91565H3.33333V3.41565ZM13.25 3.99898V9.99898H14.75V3.99898H13.25ZM2.75 9.99898V3.99898H1.25V9.99898H2.75ZM8.636 13.6015L7.16517 11.2482L5.89317 12.0431L7.364 14.3965L8.636 13.6015ZM5.96384 10.5823H3.33333V12.0823H5.96384V10.5823ZM12.6667 10.5823H10.0362V12.0823H12.6667V10.5823ZM8.83483 11.2482L7.364 13.6015L8.636 14.3965L10.1068 12.0431L8.83483 11.2482ZM10.0362 10.5823C9.54771 10.5823 9.09371 10.8339 8.83483 11.2482L10.1068 12.0431C10.0916 12.0675 10.0649 12.0823 10.0362 12.0823V10.5823ZM1.25 9.99898C1.25 11.1496 2.18274 12.0823 3.33333 12.0823V10.5823C3.01117 10.5823 2.75 10.3211 2.75 9.99898H1.25ZM13.25 9.99898C13.25 10.3211 12.9888 10.5823 12.6667 10.5823V12.0823C13.8173 12.0823 14.75 11.1496 14.75 9.99898H13.25ZM12.6667 3.41565C12.9888 3.41565 13.25 3.67682 13.25 3.99898H14.75C14.75 2.84839 13.8173 1.91565 12.6667 1.91565V3.41565ZM7.16517 11.2482C6.90629 10.8339 6.45229 10.5823 5.96384 10.5823V12.0823C5.9351 12.0823 5.9084 12.0675 5.89317 12.0431L7.16517 11.2482ZM3.33333 1.91565C2.18274 1.91565 1.25 2.84839 1.25 3.99898H2.75C2.75 3.67682 3.01117 3.41565 3.33333 3.41565V1.91565Z"
														fill="#B4BFC6"></path>
													<rect x="4.58203" y="6.25" width="1.5" height="1.5"
														rx="0.75" fill="#B4BFC6"></rect>
													<rect x="7.25" y="6.25" width="1.5" height="1.5" rx="0.75"
														fill="#B4BFC6"></rect>
													<rect x="9.91797" y="6.25" width="1.5" height="1.5"
														rx="0.75" fill="#B4BFC6"></rect></svg>
											</div>
											<div class="css-i21m7n">4</div>
										</div>
									</div>
									<div class="css-192oc4s">
										<div class="css-ts29it">
											<div class="css-hr47l6">
												<svg width="16" height="16" viewBox="0 0 16 16" fill="none"
													xmlns="http://www.w3.org/2000/svg">
													<rect x="2" y="6.66565" width="1.33333" height="6"
														stroke="#B4BFC6" stroke-width="1.5"
														stroke-linejoin="round"></rect>
													<path
														d="M9.1972 2.16336L8.62103 1.68322L9.1972 2.16336ZM10.9725 11.9167H6.66667V13.4167H10.9725V11.9167ZM6.75 12V6.96547H5.25V12H6.75ZM13.25 6.66667V8.91304H14.75V6.66667H13.25ZM13.1446 9.24756L11.4503 11.6679L12.6792 12.528L14.3734 10.1078L13.1446 9.24756ZM11.3333 6.75H13.3333V5.25H11.3333V6.75ZM7.19424 5.73845L9.77336 2.6435L8.62103 1.68322L6.04191 4.77817L7.19424 5.73845ZM9.25 2.45402V4.66667H10.75V2.45402H9.25ZM9.54598 2.75C9.38252 2.75 9.25 2.61748 9.25 2.45402H10.75C10.75 1.78906 10.2109 1.25 9.54598 1.25V2.75ZM9.77336 2.6435C9.71713 2.71098 9.63382 2.75 9.54598 2.75V1.25C9.18866 1.25 8.84979 1.40872 8.62103 1.68322L9.77336 2.6435ZM11.3333 5.25C11.0112 5.25 10.75 4.98883 10.75 4.66667H9.25C9.25 5.81726 10.1827 6.75 11.3333 6.75V5.25ZM13.25 8.91304C13.25 9.03272 13.2132 9.14951 13.1446 9.24756L14.3734 10.1078C14.6185 9.75758 14.75 9.34048 14.75 8.91304H13.25ZM6.66667 11.9167C6.71269 11.9167 6.75 11.954 6.75 12H5.25C5.25 12.7824 5.88426 13.4167 6.66667 13.4167V11.9167ZM10.9725 13.4167C11.6523 13.4167 12.2893 13.085 12.6792 12.528L11.4503 11.6679C11.3412 11.8238 11.1628 11.9167 10.9725 11.9167V13.4167ZM14.75 6.66667C14.75 5.88426 14.1157 5.25 13.3333 5.25V6.75C13.2873 6.75 13.25 6.71269 13.25 6.66667H14.75ZM6.75 6.96547C6.75 6.51709 6.9072 6.0829 7.19424 5.73845L6.04191 4.77817C5.53022 5.3922 5.25 6.16618 5.25 6.96547H6.75Z"
														fill="#B4BFC6"></path></svg>
											</div>
											<div class="css-i21m7n">0</div>
										</div>
									</div>
									<div class="css-192oc4s">
										<div class="css-ts29it">
											<div class="css-hr47l6">
												<svg width="16" height="16" viewBox="0 0 16 16" fill="none"
													xmlns="http://www.w3.org/2000/svg">
													<path
														d="M12.6677 14L12.2621 14.6309C12.4929 14.7792 12.7863 14.7898 13.0271 14.6583C13.2679 14.5268 13.4177 14.2744 13.4177 14H12.6677ZM3.33435 14H2.58435C2.58435 14.2744 2.73415 14.5268 2.97496 14.6583C3.21576 14.7898 3.50914 14.7792 3.73992 14.6309L3.33435 14ZM8.00102 11L8.40659 10.3691C8.15953 10.2103 7.8425 10.2103 7.59545 10.3691L8.00102 11ZM4.66768 2.75H11.3344V1.25H4.66768V2.75ZM11.9177 3.33333V14H13.4177V3.33333H11.9177ZM4.08435 14V3.33333H2.58435V14H4.08435ZM13.0733 13.3691L8.40659 10.3691L7.59545 11.6309L12.2621 14.6309L13.0733 13.3691ZM7.59545 10.3691L2.92878 13.3691L3.73992 14.6309L8.40659 11.6309L7.59545 10.3691ZM11.3344 2.75C11.6565 2.75 11.9177 3.01117 11.9177 3.33333H13.4177C13.4177 2.18274 12.4849 1.25 11.3344 1.25V2.75ZM4.66768 1.25C3.51709 1.25 2.58435 2.18274 2.58435 3.33333H4.08435C4.08435 3.01117 4.34552 2.75 4.66768 2.75V1.25Z"
														fill="#B4BFC6"></path></svg>
											</div>
											<div class="css-i21m7n">0</div>
										</div>
									</div>
								</div>
							</div>
							<div class="css-k59gj9">
								<div class="css-aw1sgr">
									<div class="css-w75lz4">
										<div class="css-172994e">
											<svg width="14" height="10" viewBox="0 0 14 10" fill="none"
												xmlns="http://www.w3.org/2000/svg">
												<path d="M1.66553 5L4.99886 8.33333L12.3322 1"
													stroke="#0085FF" stroke-width="1.5" stroke-linecap="round"
													stroke-linejoin="round"></path></svg>
											답변 완료
										</div>
									</div>
									<div class="css-kem115">
										<div class="css-1473tav">
											<div class="css-1jibmi3">
												<div class="css-cp47oo">footer가 사라지지 않아요</div>
												<div class="css-14bssip">footer 제거 css를 적용했는데도 footer가
													사라지지 않네요. 여러번 시도했는데 실패했어요. 이유가 뭘까요?</div>
											</div>
											<div class="css-12y9hd">
												<div class="css-cvph88">[왕초보] 노코드로 완성도 있는 웹사이트 만들기 v0</div>
												<div class="css-u70qqp">
													<svg width="12" height="12" viewBox="0 0 12 12" fill="none"
														xmlns="http://www.w3.org/2000/svg">
														<path fill-rule="evenodd" clip-rule="evenodd"
															d="M8.27738 5.70537C8.44009 5.86809 8.44009 6.13191 8.27738 6.29463L4.94404 9.62796C4.78132 9.79068 4.5175 9.79068 4.35479 9.62796C4.19207 9.46524 4.19207 9.20142 4.35479 9.03871L7.39349 6L4.35479 2.96129C4.19207 2.79858 4.19207 2.53476 4.35479 2.37204C4.5175 2.20932 4.78132 2.20932 4.94404 2.37204L8.27738 5.70537Z"
															fill="#9DA7AE"></path></svg>
												</div>
												<div class="css-1mmjn2r">2주차</div>
											</div>
										</div>
										<div class="css-bt1qy"></div>
										<img
											src="https://media-sparta.s3.ap-northeast-2.amazonaws.com/media/tempfiles/community/82eb3c6a-b28d-4782-b0ac-867287495bf3스크린샷 2024-04-07 010216.png"
											class="css-17s6wd5">
									</div>
									<div class="css-99cwur">
										<div class="css-1fhge30">
											<div class="css-aw18wm">
												<span
													style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
													sizes="100vw"
													srcset="/_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F0.png&amp;w=640&amp;q=75 640w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F0.png&amp;w=750&amp;q=75 750w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F0.png&amp;w=828&amp;q=75 828w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F0.png&amp;w=1080&amp;q=75 1080w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F0.png&amp;w=1200&amp;q=75 1200w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F0.png&amp;w=1920&amp;q=75 1920w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F0.png&amp;w=2048&amp;q=75 2048w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F0.png&amp;w=3840&amp;q=75 3840w"
													src="/_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F0.png&amp;w=3840&amp;q=75"
													decoding="async" data-nimg="fill"
													style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%;"></span>
											</div>
											<div class="css-5zcuov">
												<div class="css-1sika4i">박*현</div>
												<div class="css-1tify6w">
													<svg width="2" height="2" viewBox="0 0 2 2" fill="none"
														xmlns="http://www.w3.org/2000/svg">
														<circle cx="1" cy="1" r="1" fill="#9DA7AE"></circle></svg>
												</div>
												<div class="css-1ry6usa">2024년 4월 7일 오전 1:07</div>
											</div>
										</div>
										<div class="css-o01lup">
											<div class="css-ts29it">
												<div class="css-1ry6usa">댓글</div>
												<div class="css-1ry6usa">1</div>
											</div>
											<div class="css-dbc8ke">・</div>
											<div class="css-ts29it">
												<div class="css-1ry6usa">추천</div>
												<div class="css-1ry6usa">0</div>
											</div>
											<div class="css-dbc8ke">・</div>
											<div class="css-ts29it">
												<div class="css-1ry6usa">조회수</div>
												<div class="css-1ry6usa">7</div>
											</div>
										</div>
										<div class="css-1vkj2s1">
											<div class="css-1ry6usa">조회수</div>
											<div class="css-1ry6usa">7</div>
										</div>
									</div>
									<div class="css-z2xt5y">
										<div class="css-172994e">
											<svg width="14" height="10" viewBox="0 0 14 10" fill="none"
												xmlns="http://www.w3.org/2000/svg">
												<path d="M1.66553 5L4.99886 8.33333L12.3322 1"
													stroke="#0085FF" stroke-width="1.5" stroke-linecap="round"
													stroke-linejoin="round"></path></svg>
											답변 완료
										</div>
									</div>
								</div>
								<div class="css-k9ergi">
									<div class="css-192oc4s">
										<div class="css-ts29it">
											<div class="css-hr47l6">
												<svg width="16" height="16" viewBox="0 0 16 16" fill="none"
													xmlns="http://www.w3.org/2000/svg">
													<path
														d="M8 13.999L7.364 14.3965C7.50106 14.6158 7.74141 14.749 8 14.749C8.25859 14.749 8.49895 14.6158 8.636 14.3965L8 13.999ZM9.47083 11.6457L8.83483 11.2482L9.47083 11.6457ZM3.33333 3.41565H12.6667V1.91565H3.33333V3.41565ZM13.25 3.99898V9.99898H14.75V3.99898H13.25ZM2.75 9.99898V3.99898H1.25V9.99898H2.75ZM8.636 13.6015L7.16517 11.2482L5.89317 12.0431L7.364 14.3965L8.636 13.6015ZM5.96384 10.5823H3.33333V12.0823H5.96384V10.5823ZM12.6667 10.5823H10.0362V12.0823H12.6667V10.5823ZM8.83483 11.2482L7.364 13.6015L8.636 14.3965L10.1068 12.0431L8.83483 11.2482ZM10.0362 10.5823C9.54771 10.5823 9.09371 10.8339 8.83483 11.2482L10.1068 12.0431C10.0916 12.0675 10.0649 12.0823 10.0362 12.0823V10.5823ZM1.25 9.99898C1.25 11.1496 2.18274 12.0823 3.33333 12.0823V10.5823C3.01117 10.5823 2.75 10.3211 2.75 9.99898H1.25ZM13.25 9.99898C13.25 10.3211 12.9888 10.5823 12.6667 10.5823V12.0823C13.8173 12.0823 14.75 11.1496 14.75 9.99898H13.25ZM12.6667 3.41565C12.9888 3.41565 13.25 3.67682 13.25 3.99898H14.75C14.75 2.84839 13.8173 1.91565 12.6667 1.91565V3.41565ZM7.16517 11.2482C6.90629 10.8339 6.45229 10.5823 5.96384 10.5823V12.0823C5.9351 12.0823 5.9084 12.0675 5.89317 12.0431L7.16517 11.2482ZM3.33333 1.91565C2.18274 1.91565 1.25 2.84839 1.25 3.99898H2.75C2.75 3.67682 3.01117 3.41565 3.33333 3.41565V1.91565Z"
														fill="#B4BFC6"></path>
													<rect x="4.58203" y="6.25" width="1.5" height="1.5"
														rx="0.75" fill="#B4BFC6"></rect>
													<rect x="7.25" y="6.25" width="1.5" height="1.5" rx="0.75"
														fill="#B4BFC6"></rect>
													<rect x="9.91797" y="6.25" width="1.5" height="1.5"
														rx="0.75" fill="#B4BFC6"></rect></svg>
											</div>
											<div class="css-i21m7n">1</div>
										</div>
									</div>
									<div class="css-192oc4s">
										<div class="css-ts29it">
											<div class="css-hr47l6">
												<svg width="16" height="16" viewBox="0 0 16 16" fill="none"
													xmlns="http://www.w3.org/2000/svg">
													<rect x="2" y="6.66565" width="1.33333" height="6"
														stroke="#B4BFC6" stroke-width="1.5"
														stroke-linejoin="round"></rect>
													<path
														d="M9.1972 2.16336L8.62103 1.68322L9.1972 2.16336ZM10.9725 11.9167H6.66667V13.4167H10.9725V11.9167ZM6.75 12V6.96547H5.25V12H6.75ZM13.25 6.66667V8.91304H14.75V6.66667H13.25ZM13.1446 9.24756L11.4503 11.6679L12.6792 12.528L14.3734 10.1078L13.1446 9.24756ZM11.3333 6.75H13.3333V5.25H11.3333V6.75ZM7.19424 5.73845L9.77336 2.6435L8.62103 1.68322L6.04191 4.77817L7.19424 5.73845ZM9.25 2.45402V4.66667H10.75V2.45402H9.25ZM9.54598 2.75C9.38252 2.75 9.25 2.61748 9.25 2.45402H10.75C10.75 1.78906 10.2109 1.25 9.54598 1.25V2.75ZM9.77336 2.6435C9.71713 2.71098 9.63382 2.75 9.54598 2.75V1.25C9.18866 1.25 8.84979 1.40872 8.62103 1.68322L9.77336 2.6435ZM11.3333 5.25C11.0112 5.25 10.75 4.98883 10.75 4.66667H9.25C9.25 5.81726 10.1827 6.75 11.3333 6.75V5.25ZM13.25 8.91304C13.25 9.03272 13.2132 9.14951 13.1446 9.24756L14.3734 10.1078C14.6185 9.75758 14.75 9.34048 14.75 8.91304H13.25ZM6.66667 11.9167C6.71269 11.9167 6.75 11.954 6.75 12H5.25C5.25 12.7824 5.88426 13.4167 6.66667 13.4167V11.9167ZM10.9725 13.4167C11.6523 13.4167 12.2893 13.085 12.6792 12.528L11.4503 11.6679C11.3412 11.8238 11.1628 11.9167 10.9725 11.9167V13.4167ZM14.75 6.66667C14.75 5.88426 14.1157 5.25 13.3333 5.25V6.75C13.2873 6.75 13.25 6.71269 13.25 6.66667H14.75ZM6.75 6.96547C6.75 6.51709 6.9072 6.0829 7.19424 5.73845L6.04191 4.77817C5.53022 5.3922 5.25 6.16618 5.25 6.96547H6.75Z"
														fill="#B4BFC6"></path></svg>
											</div>
											<div class="css-i21m7n">0</div>
										</div>
									</div>
									<div class="css-192oc4s">
										<div class="css-ts29it">
											<div class="css-hr47l6">
												<svg width="16" height="16" viewBox="0 0 16 16" fill="none"
													xmlns="http://www.w3.org/2000/svg">
													<path
														d="M12.6677 14L12.2621 14.6309C12.4929 14.7792 12.7863 14.7898 13.0271 14.6583C13.2679 14.5268 13.4177 14.2744 13.4177 14H12.6677ZM3.33435 14H2.58435C2.58435 14.2744 2.73415 14.5268 2.97496 14.6583C3.21576 14.7898 3.50914 14.7792 3.73992 14.6309L3.33435 14ZM8.00102 11L8.40659 10.3691C8.15953 10.2103 7.8425 10.2103 7.59545 10.3691L8.00102 11ZM4.66768 2.75H11.3344V1.25H4.66768V2.75ZM11.9177 3.33333V14H13.4177V3.33333H11.9177ZM4.08435 14V3.33333H2.58435V14H4.08435ZM13.0733 13.3691L8.40659 10.3691L7.59545 11.6309L12.2621 14.6309L13.0733 13.3691ZM7.59545 10.3691L2.92878 13.3691L3.73992 14.6309L8.40659 11.6309L7.59545 10.3691ZM11.3344 2.75C11.6565 2.75 11.9177 3.01117 11.9177 3.33333H13.4177C13.4177 2.18274 12.4849 1.25 11.3344 1.25V2.75ZM4.66768 1.25C3.51709 1.25 2.58435 2.18274 2.58435 3.33333H4.08435C4.08435 3.01117 4.34552 2.75 4.66768 2.75V1.25Z"
														fill="#B4BFC6"></path></svg>
											</div>
											<div class="css-i21m7n">0</div>
										</div>
									</div>
								</div>
							</div>
							<div class="css-k59gj9">
								<div class="css-aw1sgr">
									<div class="css-w75lz4">
										<div class="css-172994e">
											<svg width="14" height="10" viewBox="0 0 14 10" fill="none"
												xmlns="http://www.w3.org/2000/svg">
												<path d="M1.66553 5L4.99886 8.33333L12.3322 1"
													stroke="#0085FF" stroke-width="1.5" stroke-linecap="round"
													stroke-linejoin="round"></path></svg>
											답변 완료
										</div>
									</div>
									<div class="css-kem115">
										<div class="css-1473tav">
											<div class="css-1jibmi3">
												<div class="css-cp47oo">메일보내기 오류</div>
												<div class="css-14bssip">메일보내는거 아예안되요..... 일주일 넘게봐도 봐도
													모르겠네 Tip 2) Ctrl+A(맥의 경우 Command+Aimport smtplibfrom
													email.mime.multipart import MIMEMultipartfrom
													email.mime.text import MIMETextimport openpyxl# 이메일 계정
													설정sender_email = "jooeunjoa@gmail.com"password = "fcwy agzl
													mbif zpeu"# 이메일 제목 및 내용subject = "안녕하세요! Entango에 오신 것을
													환영합니다."body = "Entango에 가입해 주셔서 감사합니다. 저희 서비스를 즐기시기 바랍니다."#
													SMTP 서버 설정smtp_server = "smtp.example.com"smtp_port = 587#
													엑셀 파일에서 데이터 추출wb =
													openpyxl.load_workbook("customer_data_test.xlsx")ws =
													wb["test_name_email"]customer_data =
													ws.iter_rows(values_only=True)# 이메일 전송with
													smtplib.SMTP(smtp_server, smtp_port) as server:
													server.starttls() server.login(sender_email, password) for
													row in customer_data: name, email = row msg =
													MIMEMultipart() msg['From'] = sender_email msg['To'] =
													email msg['Subject'] = subject # 이메일 본문 작성 body_text =
													f"안녕하세요, {name}님!\n\n{body}" msg.attach(MIMEText(body_text,
													'plain')) # 이메일 전송 server.sendmail(sender_email, email,
													msg.as_string())print("모든 이메일이 성공적으로 전송되었습니다.")) 단축키로 코드를 한
													번에 선택할 수 있어요!</div>
											</div>
											<div class="css-12y9hd">
												<div class="css-cvph88">[왕초보] ChatGPT 300% 활용하기 v0</div>
												<div class="css-u70qqp">
													<svg width="12" height="12" viewBox="0 0 12 12" fill="none"
														xmlns="http://www.w3.org/2000/svg">
														<path fill-rule="evenodd" clip-rule="evenodd"
															d="M8.27738 5.70537C8.44009 5.86809 8.44009 6.13191 8.27738 6.29463L4.94404 9.62796C4.78132 9.79068 4.5175 9.79068 4.35479 9.62796C4.19207 9.46524 4.19207 9.20142 4.35479 9.03871L7.39349 6L4.35479 2.96129C4.19207 2.79858 4.19207 2.53476 4.35479 2.37204C4.5175 2.20932 4.78132 2.20932 4.94404 2.37204L8.27738 5.70537Z"
															fill="#9DA7AE"></path></svg>
												</div>
												<div class="css-1mmjn2r">4주차</div>
											</div>
										</div>
										<div class="css-bt1qy"></div>
										<img
											src="https://media-sparta.s3.ap-northeast-2.amazonaws.com/media/tempfiles/community/3664e146-2f8a-4c8e-a293-a2af3f8616faMzc0MDE2LjA2MzAzMzIyNTQxNzEyNDE2MjA5OTIx.png"
											class="css-17s6wd5">
									</div>
									<div class="css-99cwur">
										<div class="css-1fhge30">
											<div class="css-aw18wm">
												<span
													style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
													sizes="100vw"
													srcset="/_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F18.png&amp;w=640&amp;q=75 640w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F18.png&amp;w=750&amp;q=75 750w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F18.png&amp;w=828&amp;q=75 828w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F18.png&amp;w=1080&amp;q=75 1080w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F18.png&amp;w=1200&amp;q=75 1200w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F18.png&amp;w=1920&amp;q=75 1920w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F18.png&amp;w=2048&amp;q=75 2048w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F18.png&amp;w=3840&amp;q=75 3840w"
													src="/_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F18.png&amp;w=3840&amp;q=75"
													decoding="async" data-nimg="fill"
													style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%;"></span>
											</div>
											<div class="css-5zcuov">
												<div class="css-1sika4i">김*은</div>
												<div class="css-1tify6w">
													<svg width="2" height="2" viewBox="0 0 2 2" fill="none"
														xmlns="http://www.w3.org/2000/svg">
														<circle cx="1" cy="1" r="1" fill="#9DA7AE"></circle></svg>
												</div>
												<div class="css-1ry6usa">2024년 4월 7일 오전 12:10</div>
											</div>
										</div>
										<div class="css-o01lup">
											<div class="css-ts29it">
												<div class="css-1ry6usa">댓글</div>
												<div class="css-1ry6usa">1</div>
											</div>
											<div class="css-dbc8ke">・</div>
											<div class="css-ts29it">
												<div class="css-1ry6usa">추천</div>
												<div class="css-1ry6usa">0</div>
											</div>
											<div class="css-dbc8ke">・</div>
											<div class="css-ts29it">
												<div class="css-1ry6usa">조회수</div>
												<div class="css-1ry6usa">8</div>
											</div>
										</div>
										<div class="css-1vkj2s1">
											<div class="css-1ry6usa">조회수</div>
											<div class="css-1ry6usa">8</div>
										</div>
									</div>
									<div class="css-z2xt5y">
										<div class="css-172994e">
											<svg width="14" height="10" viewBox="0 0 14 10" fill="none"
												xmlns="http://www.w3.org/2000/svg">
												<path d="M1.66553 5L4.99886 8.33333L12.3322 1"
													stroke="#0085FF" stroke-width="1.5" stroke-linecap="round"
													stroke-linejoin="round"></path></svg>
											답변 완료
										</div>
									</div>
								</div>
								<div class="css-k9ergi">
									<div class="css-192oc4s">
										<div class="css-ts29it">
											<div class="css-hr47l6">
												<svg width="16" height="16" viewBox="0 0 16 16" fill="none"
													xmlns="http://www.w3.org/2000/svg">
													<path
														d="M8 13.999L7.364 14.3965C7.50106 14.6158 7.74141 14.749 8 14.749C8.25859 14.749 8.49895 14.6158 8.636 14.3965L8 13.999ZM9.47083 11.6457L8.83483 11.2482L9.47083 11.6457ZM3.33333 3.41565H12.6667V1.91565H3.33333V3.41565ZM13.25 3.99898V9.99898H14.75V3.99898H13.25ZM2.75 9.99898V3.99898H1.25V9.99898H2.75ZM8.636 13.6015L7.16517 11.2482L5.89317 12.0431L7.364 14.3965L8.636 13.6015ZM5.96384 10.5823H3.33333V12.0823H5.96384V10.5823ZM12.6667 10.5823H10.0362V12.0823H12.6667V10.5823ZM8.83483 11.2482L7.364 13.6015L8.636 14.3965L10.1068 12.0431L8.83483 11.2482ZM10.0362 10.5823C9.54771 10.5823 9.09371 10.8339 8.83483 11.2482L10.1068 12.0431C10.0916 12.0675 10.0649 12.0823 10.0362 12.0823V10.5823ZM1.25 9.99898C1.25 11.1496 2.18274 12.0823 3.33333 12.0823V10.5823C3.01117 10.5823 2.75 10.3211 2.75 9.99898H1.25ZM13.25 9.99898C13.25 10.3211 12.9888 10.5823 12.6667 10.5823V12.0823C13.8173 12.0823 14.75 11.1496 14.75 9.99898H13.25ZM12.6667 3.41565C12.9888 3.41565 13.25 3.67682 13.25 3.99898H14.75C14.75 2.84839 13.8173 1.91565 12.6667 1.91565V3.41565ZM7.16517 11.2482C6.90629 10.8339 6.45229 10.5823 5.96384 10.5823V12.0823C5.9351 12.0823 5.9084 12.0675 5.89317 12.0431L7.16517 11.2482ZM3.33333 1.91565C2.18274 1.91565 1.25 2.84839 1.25 3.99898H2.75C2.75 3.67682 3.01117 3.41565 3.33333 3.41565V1.91565Z"
														fill="#B4BFC6"></path>
													<rect x="4.58203" y="6.25" width="1.5" height="1.5"
														rx="0.75" fill="#B4BFC6"></rect>
													<rect x="7.25" y="6.25" width="1.5" height="1.5" rx="0.75"
														fill="#B4BFC6"></rect>
													<rect x="9.91797" y="6.25" width="1.5" height="1.5"
														rx="0.75" fill="#B4BFC6"></rect></svg>
											</div>
											<div class="css-i21m7n">1</div>
										</div>
									</div>
									<div class="css-192oc4s">
										<div class="css-ts29it">
											<div class="css-hr47l6">
												<svg width="16" height="16" viewBox="0 0 16 16" fill="none"
													xmlns="http://www.w3.org/2000/svg">
													<rect x="2" y="6.66565" width="1.33333" height="6"
														stroke="#B4BFC6" stroke-width="1.5"
														stroke-linejoin="round"></rect>
													<path
														d="M9.1972 2.16336L8.62103 1.68322L9.1972 2.16336ZM10.9725 11.9167H6.66667V13.4167H10.9725V11.9167ZM6.75 12V6.96547H5.25V12H6.75ZM13.25 6.66667V8.91304H14.75V6.66667H13.25ZM13.1446 9.24756L11.4503 11.6679L12.6792 12.528L14.3734 10.1078L13.1446 9.24756ZM11.3333 6.75H13.3333V5.25H11.3333V6.75ZM7.19424 5.73845L9.77336 2.6435L8.62103 1.68322L6.04191 4.77817L7.19424 5.73845ZM9.25 2.45402V4.66667H10.75V2.45402H9.25ZM9.54598 2.75C9.38252 2.75 9.25 2.61748 9.25 2.45402H10.75C10.75 1.78906 10.2109 1.25 9.54598 1.25V2.75ZM9.77336 2.6435C9.71713 2.71098 9.63382 2.75 9.54598 2.75V1.25C9.18866 1.25 8.84979 1.40872 8.62103 1.68322L9.77336 2.6435ZM11.3333 5.25C11.0112 5.25 10.75 4.98883 10.75 4.66667H9.25C9.25 5.81726 10.1827 6.75 11.3333 6.75V5.25ZM13.25 8.91304C13.25 9.03272 13.2132 9.14951 13.1446 9.24756L14.3734 10.1078C14.6185 9.75758 14.75 9.34048 14.75 8.91304H13.25ZM6.66667 11.9167C6.71269 11.9167 6.75 11.954 6.75 12H5.25C5.25 12.7824 5.88426 13.4167 6.66667 13.4167V11.9167ZM10.9725 13.4167C11.6523 13.4167 12.2893 13.085 12.6792 12.528L11.4503 11.6679C11.3412 11.8238 11.1628 11.9167 10.9725 11.9167V13.4167ZM14.75 6.66667C14.75 5.88426 14.1157 5.25 13.3333 5.25V6.75C13.2873 6.75 13.25 6.71269 13.25 6.66667H14.75ZM6.75 6.96547C6.75 6.51709 6.9072 6.0829 7.19424 5.73845L6.04191 4.77817C5.53022 5.3922 5.25 6.16618 5.25 6.96547H6.75Z"
														fill="#B4BFC6"></path></svg>
											</div>
											<div class="css-i21m7n">0</div>
										</div>
									</div>
									<div class="css-192oc4s">
										<div class="css-ts29it">
											<div class="css-hr47l6">
												<svg width="16" height="16" viewBox="0 0 16 16" fill="none"
													xmlns="http://www.w3.org/2000/svg">
													<path
														d="M12.6677 14L12.2621 14.6309C12.4929 14.7792 12.7863 14.7898 13.0271 14.6583C13.2679 14.5268 13.4177 14.2744 13.4177 14H12.6677ZM3.33435 14H2.58435C2.58435 14.2744 2.73415 14.5268 2.97496 14.6583C3.21576 14.7898 3.50914 14.7792 3.73992 14.6309L3.33435 14ZM8.00102 11L8.40659 10.3691C8.15953 10.2103 7.8425 10.2103 7.59545 10.3691L8.00102 11ZM4.66768 2.75H11.3344V1.25H4.66768V2.75ZM11.9177 3.33333V14H13.4177V3.33333H11.9177ZM4.08435 14V3.33333H2.58435V14H4.08435ZM13.0733 13.3691L8.40659 10.3691L7.59545 11.6309L12.2621 14.6309L13.0733 13.3691ZM7.59545 10.3691L2.92878 13.3691L3.73992 14.6309L8.40659 11.6309L7.59545 10.3691ZM11.3344 2.75C11.6565 2.75 11.9177 3.01117 11.9177 3.33333H13.4177C13.4177 2.18274 12.4849 1.25 11.3344 1.25V2.75ZM4.66768 1.25C3.51709 1.25 2.58435 2.18274 2.58435 3.33333H4.08435C4.08435 3.01117 4.34552 2.75 4.66768 2.75V1.25Z"
														fill="#B4BFC6"></path></svg>
											</div>
											<div class="css-i21m7n">0</div>
										</div>
									</div>
								</div>
							</div>
							<div class="css-k59gj9">
								<div class="css-aw1sgr">
									<div class="css-w75lz4">
										<div class="css-1awc9y9">
											<svg width="16" height="16" viewBox="0 0 16 16" fill="none"
												xmlns="http://www.w3.org/2000/svg">
												<path
													d="M14 8C14 11.3137 11.3137 14 8 14C4.68629 14 2 11.3137 2 8C2 4.68629 4.68629 2 8 2"
													stroke="#E8344E" stroke-width="1.5" stroke-linecap="round"></path>
												<rect x="10.3037" y="2.104" width="1.4" height="1.4"
													rx="0.7" fill="#E8344E"></rect>
												<rect x="12.4961" y="4.30402" width="1.4" height="1.4"
													rx="0.7" fill="#E8344E"></rect>
												<path
													d="M9.5999 5.59998H6.3999V7.99998H8.7999C9.24173 7.99998 9.5999 8.35815 9.5999 8.79998V9.59998C9.5999 10.0418 9.24173 10.4 8.7999 10.4H6.3999"
													stroke="#E8344E" stroke-width="1.5" stroke-linecap="round"
													stroke-linejoin="round"></path></svg>
											<span class="css-1xxe9l9">즉문즉답</span>
											<div class="css-1y8k33r"></div>
											6분 만에 튜터 답변 완료
										</div>
									</div>
									<div class="css-kem115">
										<div class="css-12i5occ">
											<div class="css-1jibmi3">
												<div class="css-cp47oo">5주차 숙제</div>
												<div class="css-14bssip">안녕하세요 5주차 숙제_ 카드 생성도 안되고
													파이어베이스에 저장도 안된것 같은데 어디부분이 문제 인지 봐주실수 있으실까요&amp;lt;!doctype
													html&amp;gt;&amp;lt;html
													lang="en"&amp;gt;&amp;lt;head&amp;gt;&amp;lt;meta
													charset="utf-8"&amp;gt;&amp;lt;meta name="viewport"
													content="width=device-width, initial-scale=1,
													shrink-to-fit=no"&amp;gt;&amp;lt;title&amp;gt;푸드파이터&amp;lt;/title&amp;gt;&amp;lt;link
													href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
													rel="stylesheet"integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
													crossorigin="anonymous"&amp;gt;&amp;lt;script
													src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"&amp;gt;&amp;lt;/script&amp;gt;&amp;lt;script
													src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"crossorigin="anonymous"&amp;gt;&amp;lt;/script&amp;gt;&amp;lt;style&amp;gt;@import
													url('https://fonts.googleapis.com/css2?family=Black+Han+Sans&amp;amp;family=Gowun+Dodum&amp;amp;display=swap');*
													{font-family: 'Gowun Dodum', sans-serif;}body
													{background-color: white;color: black;}.header
													{background-size:
													cover;background-image:url('https://images.unsplash.com/photo-1531697218799-ed0ae884c6c8?ixlib=rb-4.0.3&amp;amp;ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&amp;amp;auto=format&amp;amp;fit=crop&amp;amp;w=2080&amp;amp;q=80');background-position:
													right;height: 650px;display: flex;flex-direction:
													column;}.header&amp;gt;h1 {margin: 0;font-size:
													40px;}.header&amp;gt;div {font-size: 18px;margin-top:
													10px;}.form-button {width: 150px;height:
													40px;background-color: transparent;border: 1px solid
													tr;color: black;font-size: 15px;margin: 20px 10px 0px
													0px;}.form-button:hover {border: 2px solid
													black;}.info-button {margin: 20px 0 0 15px;height:
													40px;font-size: 14px;}.post {width: 500px;margin: 20px 0px
													1px 20px;padding: 20px;box-shadow: 0px 0px 3px 0px
													transparent;background-color: wheat;}.form-floating
													input,.form-floating textarea {color:
													black;background-color: white;}.button2 {display:
													flex;justify-content: flex-end;margin-top:
													15px;}.button2&amp;gt;button {margin-right: 10px;}.mycards
													{width: 1600px;margin: 30px auto;flex-direction:
													row;align-items: center;}.card {border-radius:
													30px;background-color: white;border: none;color:
													black;margin-left: 50px;}.card-img-top {object-fit:
													cover;height: 250px;border-radius: 20px;}.card-title
													{margin-top: 10px;font-size: 18px;}.card-body {border:
													blanchedalmond 2px solid;border-radius: 20px;}.card-text
													{color: black;}.comment {color: black;}.play-button
													{display: flex;justify-content: flex-start;margin-top:
													15px;}a.nav-link {color: #F17228;font-size: large;}.icon
													{height: 50px;}.card-button {background-color:
													orange;color: white;text-align: center;padding: 10px
													15px;border: none;border-radius: 6px;cursor:
													pointer;}.card-title {font-weight:
													bold;}.card-button&amp;gt; :hover {background-color:
													darkorange;}#input-card {width: 500px;margin: 0px 0px 0px
													135px;padding: 20px;background-color:
													#f9f9f9;border-radius: 10px;box-shadow: 0 4px 8px rgba(0,
													0, 0, 0.1);float: left;}.form-floating input,.form-floating
													textarea {color: black;background-color: #f9f9f9;border:
													1px solid #ccc;border-radius: 5px;margin-bottom:
													10px;padding: 10px;width: 100%;}.form-floating label
													{color: #333;}.input-group button,.input-group select
													{background-color: rgb(168, 161, 161);color: white;border:
													none;border-radius: 5px;cursor: pointer;margin-top:
													10px;}.input-group button:hover,.input-group select:hover
													{background-color: gray;}.button2 {text-align:
													right;}.button2 button {background-color: #F17228;color:
													white;border: none;border-radius: 5px;cursor:
													pointer;}.button2 button:hover {background-color:
													#f3620f;}.jumbotron-message {margin-left: 150px;font-size:
													1500px;}&amp;lt;/style&amp;gt;&amp;lt;script
													type="module"&amp;gt;import { initializeApp } from
													"https://www.gstatic.com/firebasejs/9.22.0/firebase-app.js";import
													{ getFirestore } from
													"https://www.gstatic.com/firebasejs/9.22.0/firebase-firestore.js";import
													{ collection, addDoc } from
													"https://www.gstatic.com/firebasejs/9.22.0/firebase-firestore.js";import
													{ getDocs } from
													"https://www.gstatic.com/firebasejs/9.22.0/firebase-firestore.js";const
													firebaseConfig = {// For Firebase JS SDK v7.20.0 and later,
													measurementId is optionalconst firebaseConfig = {apiKey:
													"AIzaSyCmINamODE-X0HwIC7LG6FjbikBJlQCDpY",authDomain:
													"sparta-3d22d.firebaseapp.com",projectId:
													"sparta-3d22d",storageBucket:
													"sparta-3d22d.appspot.com",messagingSenderId:
													"276181959117",appId:
													"1:276181959117:web:27fd79dff35c3f91610484",measurementId:
													"G-BPX8G50X24"};};const app =
													initializeApp(firebaseConfig);const db =
													getFirestore(app);// 데이터 추가$("#addBtn").click(async
													function () {// title_input, comment_input, image_input id를
													가진 HTML 요소에서 값을 가져와서 title, comment, image 변수에 저장해 주세요.try
													{const docRef = await addDoc(collection(db, "foods"), {let
													title = $(`#title`).val();let comment =
													$(`#comment`).val();let star = $(`#star`).val();let image =
													$(`#image`).val();let doc = {'title': title,'comment':
													comment,'star': star,'image': image};});alert("음식이 추가
													되었습니다!");window.location.reload();} catch (e)
													{console.error("Error adding document: ", e);}});// 데이터 읽기
													및 카드 생성$(".row-cols-3").empty();const querySnapshot = await
													getDocs(collection(db,
													"foods"));querySnapshot.forEach((doc) =&amp;gt; {let title
													= doc.data().title;let comment = doc.data().comment;let
													star = "⭐".repeat(doc.data().star);let image =
													doc.data().image;// 문서의 title, comment, image, star 필드에서
													데이터를 추출한 변수명을 갖고,// tempHtml 문자열에 각 데이터를 포함한 카드의 HTML 코드를
													생성하세요.let image = row['image'];let title = row['title'];let
													content = row['content'];let date = row['date'];let
													temp_html = `&amp;lt;div class="col"&amp;gt;&amp;lt;div
													class="card h-100"&amp;gt;&amp;lt;img
													src="${image}"class="card-img-top"
													alt="..."&amp;gt;&amp;lt;div
													class="card-body"&amp;gt;&amp;lt;h5
													class="card-title"&amp;gt;${title}&amp;lt;/h5&amp;gt;&amp;lt;p
													class="card-text"&amp;gt;${content}&amp;lt;/p&amp;gt;&amp;lt;p
													class="card-text"&amp;gt;${star}&amp;lt;/p&amp;gt;&amp;lt;/div&amp;gt;&amp;lt;/div&amp;gt;&amp;lt;/div&amp;gt;`;$('#cards').append(temp_html);});&amp;lt;/script&amp;gt;&amp;lt;/head&amp;gt;</div>
											</div>
											<div class="css-12y9hd">
												<div class="css-cvph88">[왕초보] 코딩이 처음이어도 쉽게 배우는 웹개발 A
													to Z v0</div>
												<div class="css-u70qqp">
													<svg width="12" height="12" viewBox="0 0 12 12" fill="none"
														xmlns="http://www.w3.org/2000/svg">
														<path fill-rule="evenodd" clip-rule="evenodd"
															d="M8.27738 5.70537C8.44009 5.86809 8.44009 6.13191 8.27738 6.29463L4.94404 9.62796C4.78132 9.79068 4.5175 9.79068 4.35479 9.62796C4.19207 9.46524 4.19207 9.20142 4.35479 9.03871L7.39349 6L4.35479 2.96129C4.19207 2.79858 4.19207 2.53476 4.35479 2.37204C4.5175 2.20932 4.78132 2.20932 4.94404 2.37204L8.27738 5.70537Z"
															fill="#9DA7AE"></path></svg>
												</div>
												<div class="css-1mmjn2r">5주차</div>
											</div>
										</div>
										<div class="css-bt1qy"></div>
									</div>
									<div class="css-99cwur">
										<div class="css-1fhge30">
											<div class="css-aw18wm">
												<span
													style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
													sizes="100vw"
													srcset="/_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F14.png&amp;w=640&amp;q=75 640w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F14.png&amp;w=750&amp;q=75 750w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F14.png&amp;w=828&amp;q=75 828w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F14.png&amp;w=1080&amp;q=75 1080w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F14.png&amp;w=1200&amp;q=75 1200w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F14.png&amp;w=1920&amp;q=75 1920w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F14.png&amp;w=2048&amp;q=75 2048w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F14.png&amp;w=3840&amp;q=75 3840w"
													src="/_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F14.png&amp;w=3840&amp;q=75"
													decoding="async" data-nimg="fill"
													style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%;"></span>
											</div>
											<div class="css-5zcuov">
												<div class="css-1sika4i">권*희</div>
												<div class="css-1tify6w">
													<svg width="2" height="2" viewBox="0 0 2 2" fill="none"
														xmlns="http://www.w3.org/2000/svg">
														<circle cx="1" cy="1" r="1" fill="#9DA7AE"></circle></svg>
												</div>
												<div class="css-1ry6usa">2024년 4월 6일 오후 11:40</div>
											</div>
										</div>
										<div class="css-o01lup">
											<div class="css-ts29it">
												<div class="css-1ry6usa">댓글</div>
												<div class="css-1ry6usa">7</div>
											</div>
											<div class="css-dbc8ke">・</div>
											<div class="css-ts29it">
												<div class="css-1ry6usa">추천</div>
												<div class="css-1ry6usa">0</div>
											</div>
											<div class="css-dbc8ke">・</div>
											<div class="css-ts29it">
												<div class="css-1ry6usa">조회수</div>
												<div class="css-1ry6usa">26</div>
											</div>
										</div>
										<div class="css-1vkj2s1">
											<div class="css-1ry6usa">조회수</div>
											<div class="css-1ry6usa">26</div>
										</div>
									</div>
									<div class="css-z2xt5y">
										<div class="css-1awc9y9">
											<svg width="16" height="16" viewBox="0 0 16 16" fill="none"
												xmlns="http://www.w3.org/2000/svg">
												<path
													d="M14 8C14 11.3137 11.3137 14 8 14C4.68629 14 2 11.3137 2 8C2 4.68629 4.68629 2 8 2"
													stroke="#E8344E" stroke-width="1.5" stroke-linecap="round"></path>
												<rect x="10.3037" y="2.104" width="1.4" height="1.4"
													rx="0.7" fill="#E8344E"></rect>
												<rect x="12.4961" y="4.30402" width="1.4" height="1.4"
													rx="0.7" fill="#E8344E"></rect>
												<path
													d="M9.5999 5.59998H6.3999V7.99998H8.7999C9.24173 7.99998 9.5999 8.35815 9.5999 8.79998V9.59998C9.5999 10.0418 9.24173 10.4 8.7999 10.4H6.3999"
													stroke="#E8344E" stroke-width="1.5" stroke-linecap="round"
													stroke-linejoin="round"></path></svg>
											<span class="css-1xxe9l9">즉문즉답</span>
											<div class="css-1y8k33r"></div>
											6분 만에 튜터 답변 완료
										</div>
									</div>
								</div>
								<div class="css-k9ergi">
									<div class="css-192oc4s">
										<div class="css-ts29it">
											<div class="css-hr47l6">
												<svg width="16" height="16" viewBox="0 0 16 16" fill="none"
													xmlns="http://www.w3.org/2000/svg">
													<path
														d="M8 13.999L7.364 14.3965C7.50106 14.6158 7.74141 14.749 8 14.749C8.25859 14.749 8.49895 14.6158 8.636 14.3965L8 13.999ZM9.47083 11.6457L8.83483 11.2482L9.47083 11.6457ZM3.33333 3.41565H12.6667V1.91565H3.33333V3.41565ZM13.25 3.99898V9.99898H14.75V3.99898H13.25ZM2.75 9.99898V3.99898H1.25V9.99898H2.75ZM8.636 13.6015L7.16517 11.2482L5.89317 12.0431L7.364 14.3965L8.636 13.6015ZM5.96384 10.5823H3.33333V12.0823H5.96384V10.5823ZM12.6667 10.5823H10.0362V12.0823H12.6667V10.5823ZM8.83483 11.2482L7.364 13.6015L8.636 14.3965L10.1068 12.0431L8.83483 11.2482ZM10.0362 10.5823C9.54771 10.5823 9.09371 10.8339 8.83483 11.2482L10.1068 12.0431C10.0916 12.0675 10.0649 12.0823 10.0362 12.0823V10.5823ZM1.25 9.99898C1.25 11.1496 2.18274 12.0823 3.33333 12.0823V10.5823C3.01117 10.5823 2.75 10.3211 2.75 9.99898H1.25ZM13.25 9.99898C13.25 10.3211 12.9888 10.5823 12.6667 10.5823V12.0823C13.8173 12.0823 14.75 11.1496 14.75 9.99898H13.25ZM12.6667 3.41565C12.9888 3.41565 13.25 3.67682 13.25 3.99898H14.75C14.75 2.84839 13.8173 1.91565 12.6667 1.91565V3.41565ZM7.16517 11.2482C6.90629 10.8339 6.45229 10.5823 5.96384 10.5823V12.0823C5.9351 12.0823 5.9084 12.0675 5.89317 12.0431L7.16517 11.2482ZM3.33333 1.91565C2.18274 1.91565 1.25 2.84839 1.25 3.99898H2.75C2.75 3.67682 3.01117 3.41565 3.33333 3.41565V1.91565Z"
														fill="#B4BFC6"></path>
													<rect x="4.58203" y="6.25" width="1.5" height="1.5"
														rx="0.75" fill="#B4BFC6"></rect>
													<rect x="7.25" y="6.25" width="1.5" height="1.5" rx="0.75"
														fill="#B4BFC6"></rect>
													<rect x="9.91797" y="6.25" width="1.5" height="1.5"
														rx="0.75" fill="#B4BFC6"></rect></svg>
											</div>
											<div class="css-i21m7n">7</div>
										</div>
									</div>
									<div class="css-192oc4s">
										<div class="css-ts29it">
											<div class="css-hr47l6">
												<svg width="16" height="16" viewBox="0 0 16 16" fill="none"
													xmlns="http://www.w3.org/2000/svg">
													<rect x="2" y="6.66565" width="1.33333" height="6"
														stroke="#B4BFC6" stroke-width="1.5"
														stroke-linejoin="round"></rect>
													<path
														d="M9.1972 2.16336L8.62103 1.68322L9.1972 2.16336ZM10.9725 11.9167H6.66667V13.4167H10.9725V11.9167ZM6.75 12V6.96547H5.25V12H6.75ZM13.25 6.66667V8.91304H14.75V6.66667H13.25ZM13.1446 9.24756L11.4503 11.6679L12.6792 12.528L14.3734 10.1078L13.1446 9.24756ZM11.3333 6.75H13.3333V5.25H11.3333V6.75ZM7.19424 5.73845L9.77336 2.6435L8.62103 1.68322L6.04191 4.77817L7.19424 5.73845ZM9.25 2.45402V4.66667H10.75V2.45402H9.25ZM9.54598 2.75C9.38252 2.75 9.25 2.61748 9.25 2.45402H10.75C10.75 1.78906 10.2109 1.25 9.54598 1.25V2.75ZM9.77336 2.6435C9.71713 2.71098 9.63382 2.75 9.54598 2.75V1.25C9.18866 1.25 8.84979 1.40872 8.62103 1.68322L9.77336 2.6435ZM11.3333 5.25C11.0112 5.25 10.75 4.98883 10.75 4.66667H9.25C9.25 5.81726 10.1827 6.75 11.3333 6.75V5.25ZM13.25 8.91304C13.25 9.03272 13.2132 9.14951 13.1446 9.24756L14.3734 10.1078C14.6185 9.75758 14.75 9.34048 14.75 8.91304H13.25ZM6.66667 11.9167C6.71269 11.9167 6.75 11.954 6.75 12H5.25C5.25 12.7824 5.88426 13.4167 6.66667 13.4167V11.9167ZM10.9725 13.4167C11.6523 13.4167 12.2893 13.085 12.6792 12.528L11.4503 11.6679C11.3412 11.8238 11.1628 11.9167 10.9725 11.9167V13.4167ZM14.75 6.66667C14.75 5.88426 14.1157 5.25 13.3333 5.25V6.75C13.2873 6.75 13.25 6.71269 13.25 6.66667H14.75ZM6.75 6.96547C6.75 6.51709 6.9072 6.0829 7.19424 5.73845L6.04191 4.77817C5.53022 5.3922 5.25 6.16618 5.25 6.96547H6.75Z"
														fill="#B4BFC6"></path></svg>
											</div>
											<div class="css-i21m7n">0</div>
										</div>
									</div>
									<div class="css-192oc4s">
										<div class="css-ts29it">
											<div class="css-hr47l6">
												<svg width="16" height="16" viewBox="0 0 16 16" fill="none"
													xmlns="http://www.w3.org/2000/svg">
													<path
														d="M12.6677 14L12.2621 14.6309C12.4929 14.7792 12.7863 14.7898 13.0271 14.6583C13.2679 14.5268 13.4177 14.2744 13.4177 14H12.6677ZM3.33435 14H2.58435C2.58435 14.2744 2.73415 14.5268 2.97496 14.6583C3.21576 14.7898 3.50914 14.7792 3.73992 14.6309L3.33435 14ZM8.00102 11L8.40659 10.3691C8.15953 10.2103 7.8425 10.2103 7.59545 10.3691L8.00102 11ZM4.66768 2.75H11.3344V1.25H4.66768V2.75ZM11.9177 3.33333V14H13.4177V3.33333H11.9177ZM4.08435 14V3.33333H2.58435V14H4.08435ZM13.0733 13.3691L8.40659 10.3691L7.59545 11.6309L12.2621 14.6309L13.0733 13.3691ZM7.59545 10.3691L2.92878 13.3691L3.73992 14.6309L8.40659 11.6309L7.59545 10.3691ZM11.3344 2.75C11.6565 2.75 11.9177 3.01117 11.9177 3.33333H13.4177C13.4177 2.18274 12.4849 1.25 11.3344 1.25V2.75ZM4.66768 1.25C3.51709 1.25 2.58435 2.18274 2.58435 3.33333H4.08435C4.08435 3.01117 4.34552 2.75 4.66768 2.75V1.25Z"
														fill="#B4BFC6"></path></svg>
											</div>
											<div class="css-i21m7n">0</div>
										</div>
									</div>
								</div>
							</div>
							<div class="css-k59gj9">
								<div class="css-aw1sgr">
									<div class="css-w75lz4">
										<div class="css-1awc9y9">
											<svg width="16" height="16" viewBox="0 0 16 16" fill="none"
												xmlns="http://www.w3.org/2000/svg">
												<path
													d="M14 8C14 11.3137 11.3137 14 8 14C4.68629 14 2 11.3137 2 8C2 4.68629 4.68629 2 8 2"
													stroke="#E8344E" stroke-width="1.5" stroke-linecap="round"></path>
												<rect x="10.3037" y="2.104" width="1.4" height="1.4"
													rx="0.7" fill="#E8344E"></rect>
												<rect x="12.4961" y="4.30402" width="1.4" height="1.4"
													rx="0.7" fill="#E8344E"></rect>
												<path
													d="M9.5999 5.59998H6.3999V7.99998H8.7999C9.24173 7.99998 9.5999 8.35815 9.5999 8.79998V9.59998C9.5999 10.0418 9.24173 10.4 8.7999 10.4H6.3999"
													stroke="#E8344E" stroke-width="1.5" stroke-linecap="round"
													stroke-linejoin="round"></path></svg>
											<span class="css-1xxe9l9">즉문즉답</span>
											<div class="css-1y8k33r"></div>
											1분 만에 튜터 답변 완료
										</div>
									</div>
									<div class="css-kem115">
										<div class="css-1473tav">
											<div class="css-1jibmi3">
												<div class="css-cp47oo">3주차 3-4강의 실습예제</div>
												<div class="css-14bssip">코드 복사 붙여넣기 하고 부터 계속 에러메세지가
													나와요 format='%Y-%m-%dT%H:%M:%S.%f'
													sparta_data['access_date_time'] =
													pd.to_datetime(sparta_data['access_date'], format=format)
													sparta_data.tail(5)</div>
											</div>
											<div class="css-12y9hd">
												<div class="css-cvph88">[왕초보] 마케터, 기획자를 위한 실전 데이터 분석
													v0</div>
												<div class="css-u70qqp">
													<svg width="12" height="12" viewBox="0 0 12 12" fill="none"
														xmlns="http://www.w3.org/2000/svg">
														<path fill-rule="evenodd" clip-rule="evenodd"
															d="M8.27738 5.70537C8.44009 5.86809 8.44009 6.13191 8.27738 6.29463L4.94404 9.62796C4.78132 9.79068 4.5175 9.79068 4.35479 9.62796C4.19207 9.46524 4.19207 9.20142 4.35479 9.03871L7.39349 6L4.35479 2.96129C4.19207 2.79858 4.19207 2.53476 4.35479 2.37204C4.5175 2.20932 4.78132 2.20932 4.94404 2.37204L8.27738 5.70537Z"
															fill="#9DA7AE"></path></svg>
												</div>
												<div class="css-1mmjn2r">3주차</div>
											</div>
										</div>
										<div class="css-bt1qy"></div>
										<img
											src="https://media-sparta.s3.ap-northeast-2.amazonaws.com/media/tempfiles/community/8bcd8df1-48f2-4de7-b384-69d2759dce36MTY1NDg2LjI5NDM5NjU3MjkyMTcxMjQwNzQ3NTc3OA=.png"
											class="css-17s6wd5">
									</div>
									<div class="css-99cwur">
										<div class="css-1fhge30">
											<div class="css-aw18wm">
												<span
													style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
													sizes="100vw"
													srcset="/_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F8.png&amp;w=640&amp;q=75 640w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F8.png&amp;w=750&amp;q=75 750w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F8.png&amp;w=828&amp;q=75 828w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F8.png&amp;w=1080&amp;q=75 1080w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F8.png&amp;w=1200&amp;q=75 1200w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F8.png&amp;w=1920&amp;q=75 1920w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F8.png&amp;w=2048&amp;q=75 2048w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F8.png&amp;w=3840&amp;q=75 3840w"
													src="/_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F8.png&amp;w=3840&amp;q=75"
													decoding="async" data-nimg="fill"
													style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%;"></span>
											</div>
											<div class="css-5zcuov">
												<div class="css-1sika4i">최*환</div>
												<div class="css-1tify6w">
													<svg width="2" height="2" viewBox="0 0 2 2" fill="none"
														xmlns="http://www.w3.org/2000/svg">
														<circle cx="1" cy="1" r="1" fill="#9DA7AE"></circle></svg>
												</div>
												<div class="css-1ry6usa">2024년 4월 6일 오후 9:45</div>
											</div>
										</div>
										<div class="css-o01lup">
											<div class="css-ts29it">
												<div class="css-1ry6usa">댓글</div>
												<div class="css-1ry6usa">5</div>
											</div>
											<div class="css-dbc8ke">・</div>
											<div class="css-ts29it">
												<div class="css-1ry6usa">추천</div>
												<div class="css-1ry6usa">1</div>
											</div>
											<div class="css-dbc8ke">・</div>
											<div class="css-ts29it">
												<div class="css-1ry6usa">조회수</div>
												<div class="css-1ry6usa">13</div>
											</div>
										</div>
										<div class="css-1vkj2s1">
											<div class="css-1ry6usa">조회수</div>
											<div class="css-1ry6usa">13</div>
										</div>
									</div>
									<div class="css-z2xt5y">
										<div class="css-1awc9y9">
											<svg width="16" height="16" viewBox="0 0 16 16" fill="none"
												xmlns="http://www.w3.org/2000/svg">
												<path
													d="M14 8C14 11.3137 11.3137 14 8 14C4.68629 14 2 11.3137 2 8C2 4.68629 4.68629 2 8 2"
													stroke="#E8344E" stroke-width="1.5" stroke-linecap="round"></path>
												<rect x="10.3037" y="2.104" width="1.4" height="1.4"
													rx="0.7" fill="#E8344E"></rect>
												<rect x="12.4961" y="4.30402" width="1.4" height="1.4"
													rx="0.7" fill="#E8344E"></rect>
												<path
													d="M9.5999 5.59998H6.3999V7.99998H8.7999C9.24173 7.99998 9.5999 8.35815 9.5999 8.79998V9.59998C9.5999 10.0418 9.24173 10.4 8.7999 10.4H6.3999"
													stroke="#E8344E" stroke-width="1.5" stroke-linecap="round"
													stroke-linejoin="round"></path></svg>
											<span class="css-1xxe9l9">즉문즉답</span>
											<div class="css-1y8k33r"></div>
											1분 만에 튜터 답변 완료
										</div>
									</div>
								</div>
								<div class="css-k9ergi">
									<div class="css-192oc4s">
										<div class="css-ts29it">
											<div class="css-hr47l6">
												<svg width="16" height="16" viewBox="0 0 16 16" fill="none"
													xmlns="http://www.w3.org/2000/svg">
													<path
														d="M8 13.999L7.364 14.3965C7.50106 14.6158 7.74141 14.749 8 14.749C8.25859 14.749 8.49895 14.6158 8.636 14.3965L8 13.999ZM9.47083 11.6457L8.83483 11.2482L9.47083 11.6457ZM3.33333 3.41565H12.6667V1.91565H3.33333V3.41565ZM13.25 3.99898V9.99898H14.75V3.99898H13.25ZM2.75 9.99898V3.99898H1.25V9.99898H2.75ZM8.636 13.6015L7.16517 11.2482L5.89317 12.0431L7.364 14.3965L8.636 13.6015ZM5.96384 10.5823H3.33333V12.0823H5.96384V10.5823ZM12.6667 10.5823H10.0362V12.0823H12.6667V10.5823ZM8.83483 11.2482L7.364 13.6015L8.636 14.3965L10.1068 12.0431L8.83483 11.2482ZM10.0362 10.5823C9.54771 10.5823 9.09371 10.8339 8.83483 11.2482L10.1068 12.0431C10.0916 12.0675 10.0649 12.0823 10.0362 12.0823V10.5823ZM1.25 9.99898C1.25 11.1496 2.18274 12.0823 3.33333 12.0823V10.5823C3.01117 10.5823 2.75 10.3211 2.75 9.99898H1.25ZM13.25 9.99898C13.25 10.3211 12.9888 10.5823 12.6667 10.5823V12.0823C13.8173 12.0823 14.75 11.1496 14.75 9.99898H13.25ZM12.6667 3.41565C12.9888 3.41565 13.25 3.67682 13.25 3.99898H14.75C14.75 2.84839 13.8173 1.91565 12.6667 1.91565V3.41565ZM7.16517 11.2482C6.90629 10.8339 6.45229 10.5823 5.96384 10.5823V12.0823C5.9351 12.0823 5.9084 12.0675 5.89317 12.0431L7.16517 11.2482ZM3.33333 1.91565C2.18274 1.91565 1.25 2.84839 1.25 3.99898H2.75C2.75 3.67682 3.01117 3.41565 3.33333 3.41565V1.91565Z"
														fill="#B4BFC6"></path>
													<rect x="4.58203" y="6.25" width="1.5" height="1.5"
														rx="0.75" fill="#B4BFC6"></rect>
													<rect x="7.25" y="6.25" width="1.5" height="1.5" rx="0.75"
														fill="#B4BFC6"></rect>
													<rect x="9.91797" y="6.25" width="1.5" height="1.5"
														rx="0.75" fill="#B4BFC6"></rect></svg>
											</div>
											<div class="css-i21m7n">5</div>
										</div>
									</div>
									<div class="css-192oc4s">
										<div class="css-ts29it">
											<div class="css-hr47l6">
												<svg width="16" height="16" viewBox="0 0 16 16" fill="none"
													xmlns="http://www.w3.org/2000/svg">
													<rect x="2" y="6.66565" width="1.33333" height="6"
														stroke="#B4BFC6" stroke-width="1.5"
														stroke-linejoin="round"></rect>
													<path
														d="M9.1972 2.16336L8.62103 1.68322L9.1972 2.16336ZM10.9725 11.9167H6.66667V13.4167H10.9725V11.9167ZM6.75 12V6.96547H5.25V12H6.75ZM13.25 6.66667V8.91304H14.75V6.66667H13.25ZM13.1446 9.24756L11.4503 11.6679L12.6792 12.528L14.3734 10.1078L13.1446 9.24756ZM11.3333 6.75H13.3333V5.25H11.3333V6.75ZM7.19424 5.73845L9.77336 2.6435L8.62103 1.68322L6.04191 4.77817L7.19424 5.73845ZM9.25 2.45402V4.66667H10.75V2.45402H9.25ZM9.54598 2.75C9.38252 2.75 9.25 2.61748 9.25 2.45402H10.75C10.75 1.78906 10.2109 1.25 9.54598 1.25V2.75ZM9.77336 2.6435C9.71713 2.71098 9.63382 2.75 9.54598 2.75V1.25C9.18866 1.25 8.84979 1.40872 8.62103 1.68322L9.77336 2.6435ZM11.3333 5.25C11.0112 5.25 10.75 4.98883 10.75 4.66667H9.25C9.25 5.81726 10.1827 6.75 11.3333 6.75V5.25ZM13.25 8.91304C13.25 9.03272 13.2132 9.14951 13.1446 9.24756L14.3734 10.1078C14.6185 9.75758 14.75 9.34048 14.75 8.91304H13.25ZM6.66667 11.9167C6.71269 11.9167 6.75 11.954 6.75 12H5.25C5.25 12.7824 5.88426 13.4167 6.66667 13.4167V11.9167ZM10.9725 13.4167C11.6523 13.4167 12.2893 13.085 12.6792 12.528L11.4503 11.6679C11.3412 11.8238 11.1628 11.9167 10.9725 11.9167V13.4167ZM14.75 6.66667C14.75 5.88426 14.1157 5.25 13.3333 5.25V6.75C13.2873 6.75 13.25 6.71269 13.25 6.66667H14.75ZM6.75 6.96547C6.75 6.51709 6.9072 6.0829 7.19424 5.73845L6.04191 4.77817C5.53022 5.3922 5.25 6.16618 5.25 6.96547H6.75Z"
														fill="#B4BFC6"></path></svg>
											</div>
											<div class="css-i21m7n">1</div>
										</div>
									</div>
									<div class="css-192oc4s">
										<div class="css-ts29it">
											<div class="css-hr47l6">
												<svg width="16" height="16" viewBox="0 0 16 16" fill="none"
													xmlns="http://www.w3.org/2000/svg">
													<path
														d="M12.6677 14L12.2621 14.6309C12.4929 14.7792 12.7863 14.7898 13.0271 14.6583C13.2679 14.5268 13.4177 14.2744 13.4177 14H12.6677ZM3.33435 14H2.58435C2.58435 14.2744 2.73415 14.5268 2.97496 14.6583C3.21576 14.7898 3.50914 14.7792 3.73992 14.6309L3.33435 14ZM8.00102 11L8.40659 10.3691C8.15953 10.2103 7.8425 10.2103 7.59545 10.3691L8.00102 11ZM4.66768 2.75H11.3344V1.25H4.66768V2.75ZM11.9177 3.33333V14H13.4177V3.33333H11.9177ZM4.08435 14V3.33333H2.58435V14H4.08435ZM13.0733 13.3691L8.40659 10.3691L7.59545 11.6309L12.2621 14.6309L13.0733 13.3691ZM7.59545 10.3691L2.92878 13.3691L3.73992 14.6309L8.40659 11.6309L7.59545 10.3691ZM11.3344 2.75C11.6565 2.75 11.9177 3.01117 11.9177 3.33333H13.4177C13.4177 2.18274 12.4849 1.25 11.3344 1.25V2.75ZM4.66768 1.25C3.51709 1.25 2.58435 2.18274 2.58435 3.33333H4.08435C4.08435 3.01117 4.34552 2.75 4.66768 2.75V1.25Z"
														fill="#B4BFC6"></path></svg>
											</div>
											<div class="css-i21m7n">0</div>
										</div>
									</div>
								</div>
							</div>
						</div>











						<div class="css-dfkeu1">
							<div class="css-1bstfuq">
								<div class="css-1q2lbmy">
									<img src="/assets/icons/ic_loading_black.png"
										class="css-1g4ythc">
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<%@include file="/WEB-INF/views/sparta/common/footer.jsp"%>
