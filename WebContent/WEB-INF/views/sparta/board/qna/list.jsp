<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/sparta/common/header.jsp"%>
<style>
<%@include file="/res/css/sparta/board/qna/list.css"%>
</style>
<%@include file="/res/js/sparta/board/common_js.jsp"%>
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
									<img src="/assets/icons/ic_question.svg" alt="Question Icon"
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
								<div class="css-1o94c7r">
									<div class="css-1kb98ja">
										<svg width="4" height="4" viewBox="0 0 4 4" fill="none"
											xmlns="http://www.w3.org/2000/svg">
											<circle cx="2" cy="2" r="2" fill="#e8344e"></circle></svg>
										<div class="css-1619ajl">최신순</div>
									</div>
									<div class="css-bewb21">
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
											18분 만에 튜터 답변 완료
										</div>
									</div>
									<div class="css-kem115">
										<div class="css-1473tav">
											<div class="css-1jibmi3">
												<div class="css-cp47oo">1주차 과제</div>
												<div class="css-14bssip">과제에서 데이터 분석을 통해 첫 번째 그래프를
													생성했는데, 다시 두 번째 그래프를 그려야 하는 이유를 잘 모르겠습니다.첫 번째 그래프만 보고도 상관
													관계를 판별할 수 있는 것이 아닌가요?그리고 두 번째 그래프를 그리려면 반드시 분석 데이터의 내용을
													Outcome 부분 만을 남기고 다 지워야 하는 건가요?</div>
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
												<div class="css-1mmjn2r">1주차</div>
											</div>
										</div>
										<div class="css-bt1qy"></div>
										<img
											src="https://media-sparta.s3.ap-northeast-2.amazonaws.com/media/tempfiles/community/3529a3ff-ea69-498a-bbc1-3f8725b4d776Mjc3MTA5LjgzOTUwNDUwNDE3MTcxMjg0NzI4NjE0NA=.png"
											class="css-17s6wd5">
									</div>
									<div class="css-99cwur">
										<div class="css-1fhge30">
											<div class="css-aw18wm">
												<span
													style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
													sizes="100vw"
													srcset="/_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F4.png&amp;w=640&amp;q=75 640w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F4.png&amp;w=750&amp;q=75 750w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F4.png&amp;w=828&amp;q=75 828w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F4.png&amp;w=1080&amp;q=75 1080w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F4.png&amp;w=1200&amp;q=75 1200w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F4.png&amp;w=1920&amp;q=75 1920w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F4.png&amp;w=2048&amp;q=75 2048w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F4.png&amp;w=3840&amp;q=75 3840w"
													src="/_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F4.png&amp;w=3840&amp;q=75"
													decoding="async" data-nimg="fill"
													style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%;"></span>
											</div>
											<div class="css-5zcuov">
												<div class="css-1sika4i">서*경</div>
												<div class="css-1tify6w">
													<svg width="2" height="2" viewBox="0 0 2 2" fill="none"
														xmlns="http://www.w3.org/2000/svg">
														<circle cx="1" cy="1" r="1" fill="#9DA7AE"></circle></svg>
												</div>
												<div class="css-1ry6usa">9시간 전</div>
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
												<div class="css-1ry6usa">4</div>
											</div>
										</div>
										<div class="css-1vkj2s1">
											<div class="css-1ry6usa">조회수</div>
											<div class="css-1ry6usa">4</div>
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
											18분 만에 튜터 답변 완료
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
											1분 만에 튜터 답변 완료
										</div>
									</div>
									<div class="css-kem115">
										<div class="css-12i5occ">
											<div class="css-1jibmi3">
												<div class="css-cp47oo">비주얼스튜디오</div>
												<div class="css-14bssip">비쥬얼스튜디오를 키다가 컴퓨터가 계속 꺼지는데
													어떻게해야하나요...??</div>
											</div>
											<div class="css-12y9hd">
												<div class="css-cvph88">[왕초보] 유니티로 만드는 게임개발 종합반 v0</div>
												<div class="css-u70qqp">
													<svg width="12" height="12" viewBox="0 0 12 12" fill="none"
														xmlns="http://www.w3.org/2000/svg">
														<path fill-rule="evenodd" clip-rule="evenodd"
															d="M8.27738 5.70537C8.44009 5.86809 8.44009 6.13191 8.27738 6.29463L4.94404 9.62796C4.78132 9.79068 4.5175 9.79068 4.35479 9.62796C4.19207 9.46524 4.19207 9.20142 4.35479 9.03871L7.39349 6L4.35479 2.96129C4.19207 2.79858 4.19207 2.53476 4.35479 2.37204C4.5175 2.20932 4.78132 2.20932 4.94404 2.37204L8.27738 5.70537Z"
															fill="#9DA7AE"></path></svg>
												</div>
												<div class="css-1mmjn2r">0주차</div>
											</div>
										</div>
										<div class="css-bt1qy"></div>
									</div>
									<div class="css-99cwur">
										<div class="css-1fhge30">
											<div class="css-aw18wm">
												<span
													style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
													src="/_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F10.png&amp;w=3840&amp;q=75"
													decoding="async" data-nimg="fill"
													style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%;"
													sizes="100vw"
													srcset="/_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F10.png&amp;w=640&amp;q=75 640w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F10.png&amp;w=750&amp;q=75 750w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F10.png&amp;w=828&amp;q=75 828w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F10.png&amp;w=1080&amp;q=75 1080w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F10.png&amp;w=1200&amp;q=75 1200w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F10.png&amp;w=1920&amp;q=75 1920w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F10.png&amp;w=2048&amp;q=75 2048w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F10.png&amp;w=3840&amp;q=75 3840w"></span>
											</div>
											<div class="css-5zcuov">
												<div class="css-1sika4i">남*수</div>
												<div class="css-1tify6w">
													<svg width="2" height="2" viewBox="0 0 2 2" fill="none"
														xmlns="http://www.w3.org/2000/svg">
														<circle cx="1" cy="1" r="1" fill="#9DA7AE"></circle></svg>
												</div>
												<div class="css-1ry6usa">10시간 전</div>
											</div>
										</div>
										<div class="css-o01lup">
											<div class="css-ts29it">
												<div class="css-1ry6usa">댓글</div>
												<div class="css-1ry6usa">9</div>
											</div>
											<div class="css-dbc8ke">・</div>
											<div class="css-ts29it">
												<div class="css-1ry6usa">추천</div>
												<div class="css-1ry6usa">0</div>
											</div>
											<div class="css-dbc8ke">・</div>
											<div class="css-ts29it">
												<div class="css-1ry6usa">조회수</div>
												<div class="css-1ry6usa">19</div>
											</div>
										</div>
										<div class="css-1vkj2s1">
											<div class="css-1ry6usa">조회수</div>
											<div class="css-1ry6usa">19</div>
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
											<div class="css-i21m7n">9</div>
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
												<div class="css-cp47oo">코드오류</div>
												<div class="css-14bssip">5주차 7강 중 코드오류가 생성되었는데 이유를
													모르겠습니다. ㅠㅠ #라이브러리 불러오기import pandas as pdimport seaborn as
													snsimport matplotlib.pyplot as pltplt.rc('font',
													family='NanumBarunGothic')sparta_data =
													pd.read_table('/content/cohort_data.csv',sep=',')sparta_data.head()format='%Y-%m-%dT%H:%M:%S.%f'sparta_data['start_time']
													= pd.to_datetime(sparta_data['created_at'],
													format=format,infer_datetime_format=True)sparta_data.tail()</div>
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
												<div class="css-1mmjn2r">5주차</div>
											</div>
										</div>
										<div class="css-bt1qy"></div>
										<img
											src="https://media-sparta.s3.ap-northeast-2.amazonaws.com/media/tempfiles/community/dec8c4b0-cb7c-46fd-971a-8c027050d0cdNDEyNzAuMjg1ODgxNjI4NTExNzEyODQxOTc2Mjc4.png"
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
												<div class="css-1sika4i">김*훈</div>
												<div class="css-1tify6w">
													<svg width="2" height="2" viewBox="0 0 2 2" fill="none"
														xmlns="http://www.w3.org/2000/svg">
														<circle cx="1" cy="1" r="1" fill="#9DA7AE"></circle></svg>
												</div>
												<div class="css-1ry6usa">11시간 전</div>
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
												<div class="css-1ry6usa">11</div>
											</div>
										</div>
										<div class="css-1vkj2s1">
											<div class="css-1ry6usa">조회수</div>
											<div class="css-1ry6usa">11</div>
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
											5분 만에 튜터 답변 완료
										</div>
									</div>
									<div class="css-kem115">
										<div class="css-12i5occ">
											<div class="css-1jibmi3">
												<div class="css-cp47oo">데스크탑에서 노트북으로 바꿀때</div>
												<div class="css-14bssip">데스크탑에서 실습을 하다가 멀리 출장으로 인하여
													며칠간 노트북을 지참하여 실습을 해야 할 경우, 데스크탑에서 어떤 파일을 복사해서 노트북으로 옮기면 실습을
													무리없이 이어갈 수있을까요?데스크탑과 노트북은 Powershell, Flutter, Android
													Studio 등의 버전 등 다소 환경차이가 있을 수 있어 걱정이 됩니다.</div>
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
												<div class="css-1sika4i">정*현</div>
												<div class="css-1tify6w">
													<svg width="2" height="2" viewBox="0 0 2 2" fill="none"
														xmlns="http://www.w3.org/2000/svg">
														<circle cx="1" cy="1" r="1" fill="#9DA7AE"></circle></svg>
												</div>
												<div class="css-1ry6usa">11시간 전</div>
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
												<div class="css-1ry6usa">5</div>
											</div>
										</div>
										<div class="css-1vkj2s1">
											<div class="css-1ry6usa">조회수</div>
											<div class="css-1ry6usa">5</div>
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
											5분 만에 튜터 답변 완료
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
											5분 만에 튜터 답변 완료
										</div>
									</div>
									<div class="css-kem115">
										<div class="css-12i5occ">
											<div class="css-1jibmi3">
												<div class="css-cp47oo">숙제를 마치고 파일을 압축했는데 압축파일이 첨부가
													안됩니다.</div>
												<div class="css-14bssip">숙제를 마치고 파일을 압축했는데 압축파일이 첨부가
													안됩니다.</div>
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
												<div class="css-1mmjn2r">6주차</div>
											</div>
										</div>
										<div class="css-bt1qy"></div>
									</div>
									<div class="css-99cwur">
										<div class="css-1fhge30">
											<div class="css-aw18wm">
												<span
													style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
													src="/_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F24.png&amp;w=3840&amp;q=75"
													decoding="async" data-nimg="fill"
													style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%;"
													sizes="100vw"
													srcset="/_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F24.png&amp;w=640&amp;q=75 640w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F24.png&amp;w=750&amp;q=75 750w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F24.png&amp;w=828&amp;q=75 828w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F24.png&amp;w=1080&amp;q=75 1080w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F24.png&amp;w=1200&amp;q=75 1200w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F24.png&amp;w=1920&amp;q=75 1920w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F24.png&amp;w=2048&amp;q=75 2048w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F24.png&amp;w=3840&amp;q=75 3840w"></span>
											</div>
											<div class="css-5zcuov">
												<div class="css-1sika4i">권*영</div>
												<div class="css-1tify6w">
													<svg width="2" height="2" viewBox="0 0 2 2" fill="none"
														xmlns="http://www.w3.org/2000/svg">
														<circle cx="1" cy="1" r="1" fill="#9DA7AE"></circle></svg>
												</div>
												<div class="css-1ry6usa">11시간 전</div>
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
												<div class="css-1ry6usa">15</div>
											</div>
										</div>
										<div class="css-1vkj2s1">
											<div class="css-1ry6usa">조회수</div>
											<div class="css-1ry6usa">15</div>
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
											5분 만에 튜터 답변 완료
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
											3분 만에 튜터 답변 완료
										</div>
									</div>
									<div class="css-kem115">
										<div class="css-1473tav">
											<div class="css-1jibmi3">
												<div class="css-cp47oo">환경변수 추가 후 flutter 설치 확인 오류</div>
												<div class="css-14bssip">환경 변수 에서 정상적으로
													C:\src\flutter\bin 추가한 후 cmd 에서 flutter 실행되는지 보았으나 아래
													캡쳐처럼unable to find git in your path로 나옵니다.</div>
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
											src="https://media-sparta.s3.ap-northeast-2.amazonaws.com/media/tempfiles/community/6f8747b1-46fe-4efd-beb2-b5e0bfb05543ODM4MTcuNDk5Njg1OTg2ODQxNzEyODMzOTI2OTIw.png"
											class="css-17s6wd5">
									</div>
									<div class="css-99cwur">
										<div class="css-1fhge30">
											<div class="css-aw18wm">
												<span
													style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
													sizes="100vw"
													srcset="/_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F6.png&amp;w=640&amp;q=75 640w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F6.png&amp;w=750&amp;q=75 750w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F6.png&amp;w=828&amp;q=75 828w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F6.png&amp;w=1080&amp;q=75 1080w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F6.png&amp;w=1200&amp;q=75 1200w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F6.png&amp;w=1920&amp;q=75 1920w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F6.png&amp;w=2048&amp;q=75 2048w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F6.png&amp;w=3840&amp;q=75 3840w"
													src="/_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F6.png&amp;w=3840&amp;q=75"
													decoding="async" data-nimg="fill"
													style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%;"></span>
											</div>
											<div class="css-5zcuov">
												<div class="css-1sika4i">김*진</div>
												<div class="css-1tify6w">
													<svg width="2" height="2" viewBox="0 0 2 2" fill="none"
														xmlns="http://www.w3.org/2000/svg">
														<circle cx="1" cy="1" r="1" fill="#9DA7AE"></circle></svg>
												</div>
												<div class="css-1ry6usa">13시간 전</div>
											</div>
										</div>
										<div class="css-o01lup">
											<div class="css-ts29it">
												<div class="css-1ry6usa">댓글</div>
												<div class="css-1ry6usa">11</div>
											</div>
											<div class="css-dbc8ke">・</div>
											<div class="css-ts29it">
												<div class="css-1ry6usa">추천</div>
												<div class="css-1ry6usa">0</div>
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
											<div class="css-i21m7n">11</div>
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
											48초 만에 튜터 답변 완료
										</div>
									</div>
									<div class="css-kem115">
										<div class="css-1473tav">
											<div class="css-1jibmi3">
												<div class="css-cp47oo">사이트 내 카드 추가가 안되네요</div>
												<div class="css-14bssip">저장하기가 안 나와서 수정을 해 저장하기는 나오게
													했는데 카드가 안 나오네요 Cloud Firestore 이 사이트에는 정상적으로 나오는데...
													&amp;lt;!DOCTYPE html&amp;gt;&amp;lt;html
													lang="en"&amp;gt;&amp;lt;head&amp;gt; &amp;lt;meta
													charset="UTF-8"&amp;gt; &amp;lt;meta name="viewport"
													content="width=device-width, initial-scale=1.0"&amp;gt;
													&amp;lt;title&amp;gt;스파르타플릭스&amp;lt;/title&amp;gt;
													&amp;lt;link
													href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
													rel="stylesheet"
													integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
													crossorigin="anonymous"&amp;gt; &amp;lt;script
													src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"&amp;gt;&amp;lt;/script&amp;gt;
													&amp;lt;style&amp;gt; @import
													url('https://fonts.googleapis.com/css2?family=Gowun+Dodum&amp;amp;display=swap');
													* { font-family: 'Gowun Dodum', sans-serif; } .main {
													color: white; background-image:
													url('https://occ-0-1123-1217.1.nflxso.net/dnm/api/v6/6AYY37jfdO6hpXcMjf9Yu5cnmO0/AAAABeIfo7VL_VDyKnljV66IkR-4XLb6xpZqhpLSo3JUtbivnEW4s60PD27muH1mdaANM_8rGpgbm6L2oDgA_iELHZLZ2IQjG5lvp5d2.jpg?r=e6e.jpg');
													background-position: center; background-size: cover; } body
													{ background-color: black; } .mycards { width: 1200px;
													margin: 20px auto 20px auto; } .mypostingbox { width:
													500px; margin: 20px auto 20px auto; border: 1px solid
													white; padding: 20px; border-radius: 5px; }
													.form-floating&amp;gt;input { background-color:
													transparent; color: white; } .form-floating&amp;gt;label {
													color: white; } .input-group&amp;gt;label {
													background-color: transparent; color: white; }
													.mypostingbox&amp;gt;button { width: 100%; }
													&amp;lt;/style&amp;gt;&amp;lt;script type="module"&amp;gt;
													// Firebase SDK 라이브러리 가져오기 import { initializeApp } from
													"https://www.gstatic.com/firebasejs/9.22.0/firebase-app.js";
													import { getFirestore } from
													"https://www.gstatic.com/firebasejs/9.22.0/firebase-firestore.js";
													import { collection, addDoc } from
													"https://www.gstatic.com/firebasejs/9.22.0/firebase-firestore.js";
													import { getDocs } from
													"https://www.gstatic.com/firebasejs/9.22.0/firebase-firestore.js";
													// For Firebase JS SDK v7.20.0 and later, measurementId is
													optional const firebaseConfig = { apiKey:
													"AIzaSyAfZfoxUUreIP7qxMvWdS0OBWQEubYrtkI", authDomain:
													"spata-56819.firebaseapp.com", projectId: "spata-56819",
													storageBucket: "spata-56819.appspot.com",
													messagingSenderId: "824598751265", appId:
													"1:824598751265:web:6b55757a5a8a37c0a5db60", measurementId:
													"G-E9SF8T97H8" }; // Firebase 인스턴스 초기화 const app =
													initializeApp(firebaseConfig); const db =
													getFirestore(app); $("#postingbtn").click(async function ()
													{ let image = $('#image').val(); let title =
													$('#title').val(); let star = $('#star').val(); let comment
													= $('#comment').val(); let doc = { 'image': image, 'title':
													title, 'star': star, 'comment': comment, }; await
													addDoc(collection(db, "movies"), doc); alert('저장 완료!');
													window.location.reload(); makecard(image, title, star,
													comment); }) $(document).ready(function () { let url =
													"http://spartacodingclub.shop/sparta_api/weather/seoul";
													fetch(url).then(res =&amp;gt; res.json()).then(data
													=&amp;gt; { let temp = data['temp']; if (temp &amp;lt; 20)
													{ $('#temp').text('추워요'); } else { $('#temp').text('더워요');
													} }) });&amp;lt;/script&amp;gt;&amp;lt;script&amp;gt;
													function openclose() { $('#postingbox').toggle(); };
													function makecard() { let image = $('#image').val(); let
													title = $('#title').val(); let comment =
													$('#comment').val(); let star = $('#star').val(); }
													function makecard(image, title, star, comment) { let
													temp_html = ` &amp;lt;div class="col"&amp;gt; &amp;lt;div
													class="card h-100"&amp;gt; &amp;lt;img src="${image}"
													class="card-img-top" alt="..."&amp;gt; &amp;lt;div
													class="card-body"&amp;gt; &amp;lt;h5
													class="card-title"&amp;gt;${title}&amp;lt;/h5&amp;gt;
													&amp;lt;p
													class="card-text"&amp;gt;${star}&amp;lt;/p&amp;gt;
													&amp;lt;p
													class="card-text"&amp;gt;${comment}&amp;lt;/p&amp;gt;
													&amp;lt;/div&amp;gt; &amp;lt;/div&amp;gt;
													&amp;lt;/div&amp;gt;`; $('#card').append(temp_html);
													}&amp;lt;/script&amp;gt;&amp;lt;/head&amp;gt;&amp;lt;body&amp;gt;
													&amp;lt;header class="p-3 text-bg-dark"&amp;gt; &amp;lt;div
													class="container"&amp;gt; &amp;lt;div class="d-flex
													flex-wrap align-items-center justify-content-center
													justify-content-lg-start"&amp;gt; &amp;lt;a href="/"
													class="d-flex align-items-center mb-2 mb-lg-0 text-white
													text-decoration-none"&amp;gt; &amp;lt;svg class="bi me-2"
													width="40" height="32" role="img"
													aria-label="Bootstrap"&amp;gt; &amp;lt;use
													xlink:href="#bootstrap"&amp;gt;&amp;lt;/use&amp;gt;
													&amp;lt;/svg&amp;gt; &amp;lt;/a&amp;gt; &amp;lt;ul
													class="nav col-12 col-lg-auto me-lg-auto mb-2
													justify-content-center mb-md-0"&amp;gt;
													&amp;lt;li&amp;gt;&amp;lt;a href="#" class="nav-link px-2
													text-danger"&amp;gt;spartaflix&amp;lt;/a&amp;gt;&amp;lt;/li&amp;gt;
													&amp;lt;li&amp;gt;&amp;lt;a href="#" class="nav-link px-2
													text-white"&amp;gt;홈&amp;lt;/a&amp;gt;&amp;lt;/li&amp;gt;
													&amp;lt;li&amp;gt;&amp;lt;a href="#" class="nav-link px-2
													text-white"&amp;gt;시리즈&amp;lt;/a&amp;gt;&amp;lt;/li&amp;gt;
													&amp;lt;li&amp;gt;&amp;lt;a href="#" class="nav-link px-2
													text-white"&amp;gt;영화&amp;lt;/a&amp;gt;&amp;lt;/li&amp;gt;
													&amp;lt;li&amp;gt;&amp;lt;a href="#" class="nav-link px-2
													text-white"&amp;gt;내가 찜한
													콘텐츠&amp;lt;/a&amp;gt;&amp;lt;/li&amp;gt;
													&amp;lt;li&amp;gt;&amp;lt;a href="#" class="nav-link px-2
													text-white"&amp;gt;현재 기온: &amp;lt;span id="temp"&amp;gt;
													20.00&amp;lt;/span&amp;gt;&amp;lt;/a&amp;gt;
													&amp;lt;/li&amp;gt; &amp;lt;/ul&amp;gt; &amp;lt;form
													class="col-12 col-lg-auto mb-3 mb-lg-0 me-lg-3"
													role="search"&amp;gt; &amp;lt;input type="search"
													class="form-control form-control-dark text-bg-dark"
													placeholder="Search..." aria-label="Search"&amp;gt;
													&amp;lt;/form&amp;gt; &amp;lt;div class="text-end"&amp;gt;
													&amp;lt;button type="button" class="btn btn-outline-light
													me-2"&amp;gt;Login&amp;lt;/button&amp;gt; &amp;lt;button
													type="button" class="btn
													btn-danger"&amp;gt;Sign-up&amp;lt;/button&amp;gt;
													&amp;lt;/div&amp;gt; &amp;lt;/div&amp;gt;
													&amp;lt;/div&amp;gt; &amp;lt;/header&amp;gt; &amp;lt;div
													class="main"&amp;gt; &amp;lt;div class="p-5 mb-4
													bg-body-tertiary rounded-3"&amp;gt; &amp;lt;div
													class="container-fluid py-5"&amp;gt; &amp;lt;h1
													class="display-5 fw-bold"&amp;gt;킹덤&amp;lt;/h1&amp;gt;
													&amp;lt;p class="col-md-8 fs-4"&amp;gt;병든 왕을 둘러싸고 흉흉한 소문이
													떠돈다. 어둠에 뒤덮인 조선, 기이한 역병에 신음하는 산하. 정체 모를 악에 맞서 백성을 구원할 희망은
													오직 세자뿐이다.&amp;lt;/p&amp;gt; &amp;lt;button
													onclick="openclose()" type="button" class="btn
													btn-outline-light"&amp;gt;영화 기록하기&amp;lt;/button&amp;gt;
													&amp;lt;button type="button" class="btn
													btn-outline-light"&amp;gt;상세정보&amp;lt;/button&amp;gt;
													&amp;lt;/div&amp;gt; &amp;lt;/div&amp;gt;
													&amp;lt;/div&amp;gt; &amp;lt;div class="mypostingbox"
													id="postingbox"&amp;gt; &amp;lt;div class="form-floating
													mb-3"&amp;gt; &amp;lt;input type="email"
													class="form-control" id="image" placeholder="영화 이미지
													주소"&amp;gt; &amp;lt;label for="floatingInput"&amp;gt;영화 이미지
													주소&amp;lt;/label&amp;gt; &amp;lt;/div&amp;gt; &amp;lt;div
													class="form-floating mb-3"&amp;gt; &amp;lt;input
													type="email" class="form-control" id="title"
													placeholder="영화 제목"&amp;gt; &amp;lt;label
													for="floatingInput"&amp;gt;영화 제목&amp;lt;/label&amp;gt;
													&amp;lt;/div&amp;gt; &amp;lt;div class="input-group
													mb-3"&amp;gt; &amp;lt;label class="input-group-text"
													for="inputGroupSelect01"&amp;gt;별점&amp;lt;/label&amp;gt;
													&amp;lt;select class="form-select" id="star"&amp;gt;
													&amp;lt;option selected&amp;gt;별점선택&amp;lt;/option&amp;gt;
													&amp;lt;option value="⭐"&amp;gt;⭐&amp;lt;/option&amp;gt;
													&amp;lt;option value="⭐⭐"&amp;gt;⭐⭐&amp;lt;/option&amp;gt;
													&amp;lt;option
													value="⭐⭐⭐"&amp;gt;⭐⭐⭐&amp;lt;/option&amp;gt;
													&amp;lt;option
													value="⭐⭐⭐⭐"&amp;gt;⭐⭐⭐⭐&amp;lt;/option&amp;gt;
													&amp;lt;option
													value="⭐⭐⭐⭐⭐"&amp;gt;⭐⭐⭐⭐⭐&amp;lt;/option&amp;gt;
													&amp;lt;/select&amp;gt; &amp;lt;/div&amp;gt; &amp;lt;div
													class="form-floating mb-3"&amp;gt; &amp;lt;input
													type="email" class="form-control" id="comment"
													placeholder="추천 이유"&amp;gt; &amp;lt;label
													for="floatingInput"&amp;gt;추천 이유&amp;lt;/label&amp;gt;
													&amp;lt;/div&amp;gt; &amp;lt;button id="postingbtn"
													type="button" class="btn
													btn-danger"&amp;gt;기록하기&amp;lt;/button&amp;gt;
													&amp;lt;/div&amp;gt; &amp;lt;div class="mycards"&amp;gt;
													&amp;lt;div id="card" class="row row-cols-1 row-cols-md-4
													g-4"&amp;gt; &amp;lt;div class="col"&amp;gt; &amp;lt;div
													class="card h-100"&amp;gt; &amp;lt;img
													src="https://movie-phinf.pstatic.net/20210728_221/1627440327667GyoYj_JPEG/movie_image.jpg"
													class="card-img-top" alt="..."&amp;gt; &amp;lt;div
													class="card-body"&amp;gt; &amp;lt;h5
													class="card-title"&amp;gt;영화 제목&amp;lt;/h5&amp;gt;
													&amp;lt;p class="card-text"&amp;gt;⭐⭐⭐&amp;lt;/p&amp;gt;
													&amp;lt;p class="card-text"&amp;gt;영화 코멘트&amp;lt;/p&amp;gt;
													&amp;lt;/div&amp;gt; &amp;lt;/div&amp;gt;
													&amp;lt;/div&amp;gt; &amp;lt;div class="col"&amp;gt;
													&amp;lt;div class="card h-100"&amp;gt; &amp;lt;img
													src="https://movie-phinf.pstatic.net/20210728_221/1627440327667GyoYj_JPEG/movie_image.jpg"
													class="card-img-top" alt="..."&amp;gt; &amp;lt;div
													class="card-body"&amp;gt; &amp;lt;h5
													class="card-title"&amp;gt;영화 제목&amp;lt;/h5&amp;gt;
													&amp;lt;p class="card-text"&amp;gt;⭐⭐⭐&amp;lt;/p&amp;gt;
													&amp;lt;p class="card-text"&amp;gt;영화 코멘트&amp;lt;/p&amp;gt;
													&amp;lt;/div&amp;gt; &amp;lt;/div&amp;gt;
													&amp;lt;/div&amp;gt; &amp;lt;div class="col"&amp;gt;
													&amp;lt;div class="card h-100"&amp;gt; &amp;lt;img
													src="https://movie-phinf.pstatic.net/20210728_221/1627440327667GyoYj_JPEG/movie_image.jpg"
													class="card-img-top" alt="..."&amp;gt; &amp;lt;div
													class="card-body"&amp;gt; &amp;lt;h5
													class="card-title"&amp;gt;영화 제목&amp;lt;/h5&amp;gt;
													&amp;lt;p class="card-text"&amp;gt;⭐⭐⭐&amp;lt;/p&amp;gt;
													&amp;lt;p class="card-text"&amp;gt;영화 코멘트&amp;lt;/p&amp;gt;
													&amp;lt;/div&amp;gt; &amp;lt;/div&amp;gt;
													&amp;lt;/div&amp;gt; &amp;lt;div class="col"&amp;gt;
													&amp;lt;div class="card h-100"&amp;gt; &amp;lt;img
													src="https://movie-phinf.pstatic.net/20210728_221/1627440327667GyoYj_JPEG/movie_image.jpg"
													class="card-img-top" alt="..."&amp;gt; &amp;lt;div
													class="card-body"&amp;gt; &amp;lt;h5
													class="card-title"&amp;gt;영화 제목&amp;lt;/h5&amp;gt;
													&amp;lt;p class="card-text"&amp;gt;⭐⭐⭐&amp;lt;/p&amp;gt;
													&amp;lt;p class="card-text"&amp;gt;영화 코멘트&amp;lt;/p&amp;gt;
													&amp;lt;/div&amp;gt; &amp;lt;/div&amp;gt;
													&amp;lt;/div&amp;gt; &amp;lt;/div&amp;gt;
													&amp;lt;/div&amp;gt;&amp;lt;/body&amp;gt;&amp;lt;/html&amp;gt;</div>
											</div>
											<div class="css-12y9hd">
												<div class="css-cvph88">[왕초보] 웹개발 종합반 v0</div>
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
										<img
											src="https://media-sparta.s3.ap-northeast-2.amazonaws.com/media/tempfiles/community/ae780629-2055-4f18-8c1b-1543057b4526NjkyMDg5LjMxMzU5Nzg3NTIxNzEyODI4ODQyMTY4.png"
											class="css-17s6wd5">
									</div>
									<div class="css-99cwur">
										<div class="css-1fhge30">
											<div class="css-aw18wm">
												<span
													style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
													src="/_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F14.png&amp;w=3840&amp;q=75"
													decoding="async" data-nimg="fill"
													style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%;"
													sizes="100vw"
													srcset="/_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F14.png&amp;w=640&amp;q=75 640w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F14.png&amp;w=750&amp;q=75 750w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F14.png&amp;w=828&amp;q=75 828w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F14.png&amp;w=1080&amp;q=75 1080w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F14.png&amp;w=1200&amp;q=75 1200w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F14.png&amp;w=1920&amp;q=75 1920w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F14.png&amp;w=2048&amp;q=75 2048w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F14.png&amp;w=3840&amp;q=75 3840w"></span>
											</div>
											<div class="css-5zcuov">
												<div class="css-1sika4i">김*성</div>
												<div class="css-1tify6w">
													<svg width="2" height="2" viewBox="0 0 2 2" fill="none"
														xmlns="http://www.w3.org/2000/svg">
														<circle cx="1" cy="1" r="1" fill="#9DA7AE"></circle></svg>
												</div>
												<div class="css-1ry6usa">14시간 전</div>
											</div>
										</div>
										<div class="css-o01lup">
											<div class="css-ts29it">
												<div class="css-1ry6usa">댓글</div>
												<div class="css-1ry6usa">6</div>
											</div>
											<div class="css-dbc8ke">・</div>
											<div class="css-ts29it">
												<div class="css-1ry6usa">추천</div>
												<div class="css-1ry6usa">0</div>
											</div>
											<div class="css-dbc8ke">・</div>
											<div class="css-ts29it">
												<div class="css-1ry6usa">조회수</div>
												<div class="css-1ry6usa">11</div>
											</div>
										</div>
										<div class="css-1vkj2s1">
											<div class="css-1ry6usa">조회수</div>
											<div class="css-1ry6usa">11</div>
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
											48초 만에 튜터 답변 완료
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
											<div class="css-i21m7n">6</div>
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
											7분 만에 튜터 답변 완료
										</div>
									</div>
									<div class="css-kem115">
										<div class="css-1473tav">
											<div class="css-1jibmi3">
												<div class="css-cp47oo">5.1 Firestore Database 넣기 하는데
													넣으면 버튼들이 작동을 안 하네요...</div>
												<div class="css-14bssip">&amp;lt;script
													type="module"&amp;gt; // Firebase SDK 라이브러리 가져오기 import {
													initializeApp } from
													"https://www.gstatic.com/firebasejs/9.22.0/firebase-app.js";
													import { getFirestore } from
													"https://www.gstatic.com/firebasejs/9.22.0/firebase-firestore.js";
													import { collection, addDoc } from
													"https://www.gstatic.com/firebasejs/9.22.0/firebase-firestore.js";
													import { getDocs } from
													"https://www.gstatic.com/firebasejs/9.22.0/firebase-firestore.js";
													// For Firebase JS SDK v7.20.0 and later, measurementId is
													optional const firebaseConfig = { apiKey:
													"AIzaSyAfZfoxUUreIP7qxMvWdS0OBWQEubYrtkI", authDomain:
													"spata-56819.firebaseapp.com", projectId: "spata-56819",
													storageBucket: "spata-56819.appspot.com",
													messagingSenderId: "824598751265", appId:
													"1:824598751265:web:6b55757a5a8a37c0a5db60", measurementId:
													"G-E9SF8T97H8" }; // Firebase 인스턴스 초기화 const app =
													initializeApp(firebaseConfig); const db =
													getFirestore(app);이 코드만 넣으면 버튼들이 안 되는 오류가 생기고 있습니다...
													&amp;lt;!DOCTYPE html&amp;gt;&amp;lt;html
													lang="en"&amp;gt;&amp;lt;head&amp;gt; &amp;lt;meta
													charset="UTF-8"&amp;gt; &amp;lt;meta name="viewport"
													content="width=device-width, initial-scale=1.0"&amp;gt;
													&amp;lt;title&amp;gt;스파르타플릭스&amp;lt;/title&amp;gt;
													&amp;lt;link
													href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
													rel="stylesheet"
													integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
													crossorigin="anonymous"&amp;gt; &amp;lt;script
													src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"&amp;gt;&amp;lt;/script&amp;gt;
													&amp;lt;style&amp;gt; @import
													url('https://fonts.googleapis.com/css2?family=Gowun+Dodum&amp;amp;display=swap');
													* { font-family: 'Gowun Dodum', sans-serif; } .main {
													color: white; background-image:
													url('https://occ-0-1123-1217.1.nflxso.net/dnm/api/v6/6AYY37jfdO6hpXcMjf9Yu5cnmO0/AAAABeIfo7VL_VDyKnljV66IkR-4XLb6xpZqhpLSo3JUtbivnEW4s60PD27muH1mdaANM_8rGpgbm6L2oDgA_iELHZLZ2IQjG5lvp5d2.jpg?r=e6e.jpg');
													background-position: center; background-size: cover; } body
													{ background-color: black; } .mycards { width: 1200px;
													margin: 20px auto 20px auto; } .mypostingbox { width:
													500px; margin: 20px auto 20px auto; border: 1px solid
													white; padding: 20px; border-radius: 5px; }
													.form-floating&amp;gt;input { background-color:
													transparent; color: white; } .form-floating&amp;gt;label {
													color: white; } .input-group&amp;gt;label {
													background-color: transparent; color: white; }
													.mypostingbox&amp;gt;button { width: 100%; }
													&amp;lt;/style&amp;gt; &amp;lt;script type="module"&amp;gt;
													// Firebase SDK 라이브러리 가져오기 import { initializeApp } from
													"https://www.gstatic.com/firebasejs/9.22.0/firebase-app.js";
													import { getFirestore } from
													"https://www.gstatic.com/firebasejs/9.22.0/firebase-firestore.js";
													import { collection, addDoc } from
													"https://www.gstatic.com/firebasejs/9.22.0/firebase-firestore.js";
													import { getDocs } from
													"https://www.gstatic.com/firebasejs/9.22.0/firebase-firestore.js";
													// For Firebase JS SDK v7.20.0 and later, measurementId is
													optional const firebaseConfig = { apiKey:
													"AIzaSyAfZfoxUUreIP7qxMvWdS0OBWQEubYrtkI", authDomain:
													"spata-56819.firebaseapp.com", projectId: "spata-56819",
													storageBucket: "spata-56819.appspot.com",
													messagingSenderId: "824598751265", appId:
													"1:824598751265:web:6b55757a5a8a37c0a5db60", measurementId:
													"G-E9SF8T97H8" }; // Firebase 인스턴스 초기화 const app =
													initializeApp(firebaseConfig); const db =
													getFirestore(app); $(document).ready(function () {
													$('#yourButtonId').click(function() { makecard(); }); let
													url =
													"http://spartacodingclub.shop/sparta_api/weather/seoul";
													fetch(url).then(res =&amp;gt; res.json()).then(data
													=&amp;gt; { let temp = data['temp']; if (temp &amp;lt; 20)
													{ $('#temp').text('추워요'); } else { $('#temp').text('더워요');
													} }) }) function openclose() { $('#postingbox').toggle(); }
													function makecard() { let image = $('#image').val(); let
													title = $('#title').val(); let comment =
													$('#comment').val(); let star = $('#star').val(); let
													temp_html = ` &amp;lt;div class="col"&amp;gt; &amp;lt;div
													class="card h-100"&amp;gt; &amp;lt;img src="${image}"
													class="card-img-top" alt="..."&amp;gt; &amp;lt;div
													class="card-body"&amp;gt; &amp;lt;h5
													class="card-title"&amp;gt;${title}&amp;lt;/h5&amp;gt;
													&amp;lt;p
													class="card-text"&amp;gt;${star}&amp;lt;/p&amp;gt;
													&amp;lt;p
													class="card-text"&amp;gt;${comment}&amp;lt;/p&amp;gt;
													&amp;lt;/div&amp;gt; &amp;lt;/div&amp;gt;
													&amp;lt;/div&amp;gt;`; $('#card').append(temp_html); }
													&amp;lt;/script&amp;gt;&amp;lt;/head&amp;gt;&amp;lt;body&amp;gt;
													&amp;lt;header class="p-3 text-bg-dark"&amp;gt; &amp;lt;div
													class="container"&amp;gt; &amp;lt;div class="d-flex
													flex-wrap align-items-center justify-content-center
													justify-content-lg-start"&amp;gt; &amp;lt;a href="/"
													class="d-flex align-items-center mb-2 mb-lg-0 text-white
													text-decoration-none"&amp;gt; &amp;lt;svg class="bi me-2"
													width="40" height="32" role="img"
													aria-label="Bootstrap"&amp;gt; &amp;lt;use
													xlink:href="#bootstrap"&amp;gt;&amp;lt;/use&amp;gt;
													&amp;lt;/svg&amp;gt; &amp;lt;/a&amp;gt; &amp;lt;ul
													class="nav col-12 col-lg-auto me-lg-auto mb-2
													justify-content-center mb-md-0"&amp;gt;
													&amp;lt;li&amp;gt;&amp;lt;a href="#" class="nav-link px-2
													text-danger"&amp;gt;spartaflix&amp;lt;/a&amp;gt;&amp;lt;/li&amp;gt;
													&amp;lt;li&amp;gt;&amp;lt;a href="#" class="nav-link px-2
													text-white"&amp;gt;홈&amp;lt;/a&amp;gt;&amp;lt;/li&amp;gt;
													&amp;lt;li&amp;gt;&amp;lt;a href="#" class="nav-link px-2
													text-white"&amp;gt;시리즈&amp;lt;/a&amp;gt;&amp;lt;/li&amp;gt;
													&amp;lt;li&amp;gt;&amp;lt;a href="#" class="nav-link px-2
													text-white"&amp;gt;영화&amp;lt;/a&amp;gt;&amp;lt;/li&amp;gt;
													&amp;lt;li&amp;gt;&amp;lt;a href="#" class="nav-link px-2
													text-white"&amp;gt;내가 찜한
													콘텐츠&amp;lt;/a&amp;gt;&amp;lt;/li&amp;gt;
													&amp;lt;li&amp;gt;&amp;lt;a href="#" class="nav-link px-2
													text-white"&amp;gt;현재 기온: &amp;lt;span id="temp"&amp;gt;
													20.00&amp;lt;/span&amp;gt;&amp;lt;/a&amp;gt;
													&amp;lt;/li&amp;gt; &amp;lt;/ul&amp;gt; &amp;lt;form
													class="col-12 col-lg-auto mb-3 mb-lg-0 me-lg-3"
													role="search"&amp;gt; &amp;lt;input type="search"
													class="form-control form-control-dark text-bg-dark"
													placeholder="Search..." aria-label="Search"&amp;gt;
													&amp;lt;/form&amp;gt; &amp;lt;div class="text-end"&amp;gt;
													&amp;lt;button type="button" class="btn btn-outline-light
													me-2"&amp;gt;Login&amp;lt;/button&amp;gt; &amp;lt;button
													type="button" class="btn
													btn-danger"&amp;gt;Sign-up&amp;lt;/button&amp;gt;
													&amp;lt;/div&amp;gt; &amp;lt;/div&amp;gt;
													&amp;lt;/div&amp;gt; &amp;lt;/header&amp;gt; &amp;lt;div
													class="main"&amp;gt; &amp;lt;div class="p-5 mb-4
													bg-body-tertiary rounded-3"&amp;gt; &amp;lt;div
													class="container-fluid py-5"&amp;gt; &amp;lt;h1
													class="display-5 fw-bold"&amp;gt;킹덤&amp;lt;/h1&amp;gt;
													&amp;lt;p class="col-md-8 fs-4"&amp;gt;병든 왕을 둘러싸고 흉흉한 소문이
													떠돈다. 어둠에 뒤덮인 조선, 기이한 역병에 신음하는 산하. 정체 모를 악에 맞서 백성을 구원할 희망은
													오직 세자뿐이다.&amp;lt;/p&amp;gt; &amp;lt;button
													onclick="openclose()" type="button" class="btn
													btn-outline-light"&amp;gt;영화 기록하기&amp;lt;/button&amp;gt;
													&amp;lt;button type="button" class="btn
													btn-outline-light"&amp;gt;상세정보&amp;lt;/button&amp;gt;
													&amp;lt;/div&amp;gt; &amp;lt;/div&amp;gt;
													&amp;lt;/div&amp;gt; &amp;lt;div class="mypostingbox"
													id="postingbox"&amp;gt; &amp;lt;div class="form-floating
													mb-3"&amp;gt; &amp;lt;input type="email"
													class="form-control" id="image" placeholder="영화 이미지
													주소"&amp;gt; &amp;lt;label for="floatingInput"&amp;gt;영화 이미지
													주소&amp;lt;/label&amp;gt; &amp;lt;/div&amp;gt; &amp;lt;div
													class="form-floating mb-3"&amp;gt; &amp;lt;input
													type="email" class="form-control" id="title"
													placeholder="영화 제목"&amp;gt; &amp;lt;label
													for="floatingInput"&amp;gt;영화 제목&amp;lt;/label&amp;gt;
													&amp;lt;/div&amp;gt; &amp;lt;div class="input-group
													mb-3"&amp;gt; &amp;lt;label class="input-group-text"
													for="inputGroupSelect01"&amp;gt;별점&amp;lt;/label&amp;gt;
													&amp;lt;select class="form-select" id="star"&amp;gt;
													&amp;lt;option selected&amp;gt;별점선택&amp;lt;/option&amp;gt;
													&amp;lt;option value="⭐"&amp;gt;⭐&amp;lt;/option&amp;gt;
													&amp;lt;option value="⭐⭐"&amp;gt;⭐⭐&amp;lt;/option&amp;gt;
													&amp;lt;option
													value="⭐⭐⭐"&amp;gt;⭐⭐⭐&amp;lt;/option&amp;gt;
													&amp;lt;option
													value="⭐⭐⭐⭐"&amp;gt;⭐⭐⭐⭐&amp;lt;/option&amp;gt;
													&amp;lt;option
													value="⭐⭐⭐⭐⭐"&amp;gt;⭐⭐⭐⭐⭐&amp;lt;/option&amp;gt;
													&amp;lt;/select&amp;gt; &amp;lt;/div&amp;gt; &amp;lt;div
													class="form-floating mb-3"&amp;gt; &amp;lt;input
													type="email" class="form-control" id="comment"
													placeholder="추천 이유"&amp;gt; &amp;lt;label
													for="floatingInput"&amp;gt;추천 이유&amp;lt;/label&amp;gt;
													&amp;lt;/div&amp;gt; &amp;lt;button onclick="makecard()"
													type="button" class="btn
													btn-danger"&amp;gt;기록하기&amp;lt;/button&amp;gt;
													&amp;lt;/div&amp;gt; &amp;lt;div class="mycards"&amp;gt;
													&amp;lt;div id="card" class="row row-cols-1 row-cols-md-4
													g-4"&amp;gt; &amp;lt;div class="col"&amp;gt; &amp;lt;div
													class="card h-100"&amp;gt; &amp;lt;img
													src="https://movie-phinf.pstatic.net/20210728_221/1627440327667GyoYj_JPEG/movie_image.jpg"
													class="card-img-top" alt="..."&amp;gt; &amp;lt;div
													class="card-body"&amp;gt; &amp;lt;h5
													class="card-title"&amp;gt;영화 제목&amp;lt;/h5&amp;gt;
													&amp;lt;p class="card-text"&amp;gt;⭐⭐⭐&amp;lt;/p&amp;gt;
													&amp;lt;p class="card-text"&amp;gt;영화 코멘트&amp;lt;/p&amp;gt;
													&amp;lt;/div&amp;gt; &amp;lt;/div&amp;gt;
													&amp;lt;/div&amp;gt; &amp;lt;div class="col"&amp;gt;
													&amp;lt;div class="card h-100"&amp;gt; &amp;lt;img
													src="https://movie-phinf.pstatic.net/20210728_221/1627440327667GyoYj_JPEG/movie_image.jpg"
													class="card-img-top" alt="..."&amp;gt; &amp;lt;div
													class="card-body"&amp;gt; &amp;lt;h5
													class="card-title"&amp;gt;영화 제목&amp;lt;/h5&amp;gt;
													&amp;lt;p class="card-text"&amp;gt;⭐⭐⭐&amp;lt;/p&amp;gt;
													&amp;lt;p class="card-text"&amp;gt;영화 코멘트&amp;lt;/p&amp;gt;
													&amp;lt;/div&amp;gt; &amp;lt;/div&amp;gt;
													&amp;lt;/div&amp;gt; &amp;lt;div class="col"&amp;gt;
													&amp;lt;div class="card h-100"&amp;gt; &amp;lt;img
													src="https://movie-phinf.pstatic.net/20210728_221/1627440327667GyoYj_JPEG/movie_image.jpg"
													class="card-img-top" alt="..."&amp;gt; &amp;lt;div
													class="card-body"&amp;gt; &amp;lt;h5
													class="card-title"&amp;gt;영화 제목&amp;lt;/h5&amp;gt;
													&amp;lt;p class="card-text"&amp;gt;⭐⭐⭐&amp;lt;/p&amp;gt;
													&amp;lt;p class="card-text"&amp;gt;영화 코멘트&amp;lt;/p&amp;gt;
													&amp;lt;/div&amp;gt; &amp;lt;/div&amp;gt;
													&amp;lt;/div&amp;gt; &amp;lt;div class="col"&amp;gt;
													&amp;lt;div class="card h-100"&amp;gt; &amp;lt;img
													src="https://movie-phinf.pstatic.net/20210728_221/1627440327667GyoYj_JPEG/movie_image.jpg"
													class="card-img-top" alt="..."&amp;gt; &amp;lt;div
													class="card-body"&amp;gt; &amp;lt;h5
													class="card-title"&amp;gt;영화 제목&amp;lt;/h5&amp;gt;
													&amp;lt;p class="card-text"&amp;gt;⭐⭐⭐&amp;lt;/p&amp;gt;
													&amp;lt;p class="card-text"&amp;gt;영화 코멘트&amp;lt;/p&amp;gt;
													&amp;lt;/div&amp;gt; &amp;lt;/div&amp;gt;
													&amp;lt;/div&amp;gt; &amp;lt;/div&amp;gt;
													&amp;lt;/div&amp;gt;&amp;lt;/body&amp;gt;&amp;lt;/html&amp;gt;
												</div>
											</div>
											<div class="css-12y9hd">
												<div class="css-cvph88">[왕초보] 웹개발 종합반 v0</div>
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
										<img
											src="https://media-sparta.s3.ap-northeast-2.amazonaws.com/media/tempfiles/community/d14c3465-37d8-4db3-be20-65b47f242ec4ODEzMTIxLjM3MjI4MDEwMDIxNzEyODI1ODU5MzUy.png"
											class="css-17s6wd5">
									</div>
									<div class="css-99cwur">
										<div class="css-1fhge30">
											<div class="css-aw18wm">
												<span
													style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
													src="/_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F14.png&amp;w=3840&amp;q=75"
													decoding="async" data-nimg="fill"
													style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%;"
													sizes="100vw"
													srcset="/_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F14.png&amp;w=640&amp;q=75 640w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F14.png&amp;w=750&amp;q=75 750w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F14.png&amp;w=828&amp;q=75 828w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F14.png&amp;w=1080&amp;q=75 1080w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F14.png&amp;w=1200&amp;q=75 1200w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F14.png&amp;w=1920&amp;q=75 1920w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F14.png&amp;w=2048&amp;q=75 2048w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F14.png&amp;w=3840&amp;q=75 3840w"></span>
											</div>
											<div class="css-5zcuov">
												<div class="css-1sika4i">김*성</div>
												<div class="css-1tify6w">
													<svg width="2" height="2" viewBox="0 0 2 2" fill="none"
														xmlns="http://www.w3.org/2000/svg">
														<circle cx="1" cy="1" r="1" fill="#9DA7AE"></circle></svg>
												</div>
												<div class="css-1ry6usa">15시간 전</div>
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
											7분 만에 튜터 답변 완료
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
												<div class="css-cp47oo">클릭 위치 안내 부탁드립니다</div>
												<div class="css-14bssip">5번 내용 클릭할 위치 안내 부탁드려요 지시하는 곳을
													모르겠습니다.리본메뉴-&amp;gt; 메크로 설정은 화면지정이 명확한데 그 이후는 어디를 클릭하는 지
													확인해주세요 선생님과 같은 화면을 찾을 수 없습니다5번 내용 밑에 파일형식 누르는 곳 안내부탁드립니다</div>
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
												<div class="css-1mmjn2r">3주차</div>
											</div>
										</div>
										<div class="css-bt1qy"></div>
										<img
											src="https://media-sparta.s3.ap-northeast-2.amazonaws.com/media/tempfiles/community/66292038-2787-43ed-a23b-9bf75287732f스크린샷(9).png"
											class="css-17s6wd5">
									</div>
									<div class="css-99cwur">
										<div class="css-1fhge30">
											<div class="css-aw18wm">
												<span
													style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
													sizes="100vw"
													srcset="/_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F34.png&amp;w=640&amp;q=75 640w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F34.png&amp;w=750&amp;q=75 750w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F34.png&amp;w=828&amp;q=75 828w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F34.png&amp;w=1080&amp;q=75 1080w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F34.png&amp;w=1200&amp;q=75 1200w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F34.png&amp;w=1920&amp;q=75 1920w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F34.png&amp;w=2048&amp;q=75 2048w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F34.png&amp;w=3840&amp;q=75 3840w"
													src="/_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F34.png&amp;w=3840&amp;q=75"
													decoding="async" data-nimg="fill"
													style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%;"></span>
											</div>
											<div class="css-5zcuov">
												<div class="css-1sika4i">박*후</div>
												<div class="css-1tify6w">
													<svg width="2" height="2" viewBox="0 0 2 2" fill="none"
														xmlns="http://www.w3.org/2000/svg">
														<circle cx="1" cy="1" r="1" fill="#9DA7AE"></circle></svg>
												</div>
												<div class="css-1ry6usa">16시간 전</div>
											</div>
										</div>
										<div class="css-o01lup">
											<div class="css-ts29it">
												<div class="css-1ry6usa">댓글</div>
												<div class="css-1ry6usa">20</div>
											</div>
											<div class="css-dbc8ke">・</div>
											<div class="css-ts29it">
												<div class="css-1ry6usa">추천</div>
												<div class="css-1ry6usa">0</div>
											</div>
											<div class="css-dbc8ke">・</div>
											<div class="css-ts29it">
												<div class="css-1ry6usa">조회수</div>
												<div class="css-1ry6usa">24</div>
											</div>
										</div>
										<div class="css-1vkj2s1">
											<div class="css-1ry6usa">조회수</div>
											<div class="css-1ry6usa">24</div>
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
											<div class="css-i21m7n">20</div>
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
						</div>
						<div class="css-1csvk83">
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
										<div class="css-12i5occ">
											<div class="css-1jibmi3">
												<div class="css-cp47oo">5주차 강의 pdf를 받으려고하는데 링크가 보이질
													않습니다</div>
												<div class="css-14bssip">5주차 강의 pdf를 받으려고하는데 링크가 보이질
													않습니다.그전까지는 최상단에 있었는데 갑자기 보이질 않네요.다운받는 경로가 변경되었나요?</div>
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
													src="/_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F2.png&amp;w=3840&amp;q=75"
													decoding="async" data-nimg="fill"
													style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%;"
													sizes="100vw"
													srcset="/_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F2.png&amp;w=640&amp;q=75 640w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F2.png&amp;w=750&amp;q=75 750w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F2.png&amp;w=828&amp;q=75 828w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F2.png&amp;w=1080&amp;q=75 1080w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F2.png&amp;w=1200&amp;q=75 1200w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F2.png&amp;w=1920&amp;q=75 1920w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F2.png&amp;w=2048&amp;q=75 2048w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F2.png&amp;w=3840&amp;q=75 3840w"></span>
											</div>
											<div class="css-5zcuov">
												<div class="css-1sika4i">이*진</div>
												<div class="css-1tify6w">
													<svg width="2" height="2" viewBox="0 0 2 2" fill="none"
														xmlns="http://www.w3.org/2000/svg">
														<circle cx="1" cy="1" r="1" fill="#9DA7AE"></circle></svg>
												</div>
												<div class="css-1ry6usa">16시간 전</div>
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
												<div class="css-1ry6usa">4</div>
											</div>
										</div>
										<div class="css-1vkj2s1">
											<div class="css-1ry6usa">조회수</div>
											<div class="css-1ry6usa">4</div>
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
										<div class="css-1254q6y">답변 대기중</div>
									</div>
									<div class="css-kem115">
										<div class="css-1473tav">
											<div class="css-1jibmi3">
												<div class="css-cp47oo">어떻게 해야하나요??</div>
												<div class="css-14bssip">알맞게 친거같은데 자꾸 에러가 뜹니다 ㅜㅜ
													package com.sparta.memo.controller; import
													com.sparta.memo.dto.MemoRequestDto; import
													com.sparta.memo.dto.MemoResponseDto; import
													com.sparta.memo.entity.Memo; import
													org.springframework.web.bind.annotation.PostMapping; import
													org.springframework.web.bind.annotation.RequestBody; import
													org.springframework.web.bind.annotation.RequestMapping;
													import
													org.springframework.web.bind.annotation.RestController;

													import java.util.Collections; import java.util.HashMap;
													import java.util.List; import java.util.Map;

													@RestController @RequestMapping("/api") public class
													MemoController { private final Map&amp;lt;Long,
													Memo&amp;gt; memolist = new HashMap&amp;lt;&amp;gt;();

													@PostMapping("/memos") public MemoResponseDto
													createMemo(@RequestBody MemoRequestDto requestDto) { Memo
													memo = new Memo(requestDto); Long maxId = memolist.size()
													&amp;gt; 0 ? Collections.max(memolist.keySet()) + 1 : 1;
													memo.setId(maxId); memolist.put(memo.getId(), memo);

													MemoResponseDto memoResponseDto = new
													MemoResponseDto(memo); return memoResponseDto; }

													@GetMapping("/memos") public
													List&amp;lt;MemoResponseDto&amp;gt; getMemos() {

													List&amp;lt;MemoResponseDto&amp;gt; responselist =
													memolist.values().stream()
													.map(MemoResponseDto::new).toList(); return responselist; }
													}</div>
											</div>
											<div class="css-12y9hd">
												<div class="css-cvph88">[개발자 입문] 웹개발의 봄, Spring v0</div>
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
											src="https://media-sparta.s3.ap-northeast-2.amazonaws.com/media/tempfiles/community/e4ad8d7f-3069-4b38-a8a1-6b96edd53c86스크린샷 2024-04-11 오후 5.02.20.png"
											class="css-17s6wd5">
									</div>
									<div class="css-99cwur">
										<div class="css-1fhge30">
											<div class="css-aw18wm">
												<span
													style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
													sizes="100vw"
													srcset="/_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F4.png&amp;w=640&amp;q=75 640w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F4.png&amp;w=750&amp;q=75 750w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F4.png&amp;w=828&amp;q=75 828w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F4.png&amp;w=1080&amp;q=75 1080w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F4.png&amp;w=1200&amp;q=75 1200w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F4.png&amp;w=1920&amp;q=75 1920w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F4.png&amp;w=2048&amp;q=75 2048w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F4.png&amp;w=3840&amp;q=75 3840w"
													src="/_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F4.png&amp;w=3840&amp;q=75"
													decoding="async" data-nimg="fill"
													style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%;"></span>
											</div>
											<div class="css-5zcuov">
												<div class="css-1sika4i">김*현</div>
												<div class="css-1tify6w">
													<svg width="2" height="2" viewBox="0 0 2 2" fill="none"
														xmlns="http://www.w3.org/2000/svg">
														<circle cx="1" cy="1" r="1" fill="#9DA7AE"></circle></svg>
												</div>
												<div class="css-1ry6usa">16시간 전</div>
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
												<div class="css-1ry6usa">3</div>
											</div>
										</div>
										<div class="css-1vkj2s1">
											<div class="css-1ry6usa">조회수</div>
											<div class="css-1ry6usa">3</div>
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
												<div class="css-cp47oo">배포 문제</div>
												<div class="css-14bssip">save를 눌렀는데 혹시 계속 기다려야하나요?
													영상에서처럼 안떠서 질문드립니다.</div>
											</div>
											<div class="css-12y9hd">
												<div class="css-cvph88">[왕초보] 웹개발 종합반 v0</div>
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
										<img
											src="https://media-sparta.s3.ap-northeast-2.amazonaws.com/media/tempfiles/community/e67b089a-0909-411a-bd16-63289f5e658cMTU3NTE1LjI2NTc2MjYxNjg4MTcxMjgyMjQxNzk0Nw=.png"
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
												<div class="css-1sika4i">박*균</div>
												<div class="css-1tify6w">
													<svg width="2" height="2" viewBox="0 0 2 2" fill="none"
														xmlns="http://www.w3.org/2000/svg">
														<circle cx="1" cy="1" r="1" fill="#9DA7AE"></circle></svg>
												</div>
												<div class="css-1ry6usa">16시간 전</div>
											</div>
										</div>
										<div class="css-o01lup">
											<div class="css-ts29it">
												<div class="css-1ry6usa">댓글</div>
												<div class="css-1ry6usa">14</div>
											</div>
											<div class="css-dbc8ke">・</div>
											<div class="css-ts29it">
												<div class="css-1ry6usa">추천</div>
												<div class="css-1ry6usa">0</div>
											</div>
											<div class="css-dbc8ke">・</div>
											<div class="css-ts29it">
												<div class="css-1ry6usa">조회수</div>
												<div class="css-1ry6usa">23</div>
											</div>
										</div>
										<div class="css-1vkj2s1">
											<div class="css-1ry6usa">조회수</div>
											<div class="css-1ry6usa">23</div>
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
											<div class="css-i21m7n">14</div>
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
												<div class="css-cp47oo">emulator 오류..</div>
												<div class="css-14bssip">에뮬레이터 안열리고 계속 이런 에러 창만 떠요ㅠ</div>
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
											src="https://media-sparta.s3.ap-northeast-2.amazonaws.com/media/tempfiles/community/82516af9-5a57-4eba-843e-9be4812c0ba2스크린샷 2024-04-11 오후 4.16.23.png"
											class="css-17s6wd5">
									</div>
									<div class="css-99cwur">
										<div class="css-1fhge30">
											<div class="css-aw18wm">
												<span
													style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
													src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
													decoding="async" data-nimg="fill"
													style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%;">
												<noscript></noscript></span>
											</div>
											<div class="css-5zcuov">
												<div class="css-1sika4i">김*정</div>
												<div class="css-1tify6w">
													<svg width="2" height="2" viewBox="0 0 2 2" fill="none"
														xmlns="http://www.w3.org/2000/svg">
														<circle cx="1" cy="1" r="1" fill="#9DA7AE"></circle></svg>
												</div>
												<div class="css-1ry6usa">17시간 전</div>
											</div>
										</div>
										<div class="css-o01lup">
											<div class="css-ts29it">
												<div class="css-1ry6usa">댓글</div>
												<div class="css-1ry6usa">28</div>
											</div>
											<div class="css-dbc8ke">・</div>
											<div class="css-ts29it">
												<div class="css-1ry6usa">추천</div>
												<div class="css-1ry6usa">0</div>
											</div>
											<div class="css-dbc8ke">・</div>
											<div class="css-ts29it">
												<div class="css-1ry6usa">조회수</div>
												<div class="css-1ry6usa">32</div>
											</div>
										</div>
										<div class="css-1vkj2s1">
											<div class="css-1ry6usa">조회수</div>
											<div class="css-1ry6usa">32</div>
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
											<div class="css-i21m7n">28</div>
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
											4분 만에 튜터 답변 완료
										</div>
									</div>
									<div class="css-kem115">
										<div class="css-1473tav">
											<div class="css-1jibmi3">
												<div class="css-cp47oo">5-6배포하기</div>
												<div class="css-14bssip">배포해서 링크가 떠서 그 링크로 들어갔는데요밑에
													카드가 생성이 안되어 있습니다스파르타플릭스 (choiyuung.github.io)이건 제 링크에요2.그리고
													파이어데이터베이스에이렇게 저 데이터값이 자꾸 생성되는데 코드 어디가 잘못된걸까요?
													&amp;lt;!DOCTYPE html&amp;gt;&amp;lt;html
													lang="en"&amp;gt;&amp;lt;head&amp;gt; &amp;lt;meta
													charset="UTF-8"&amp;gt; &amp;lt;meta name="viewport"
													content="width=device-width, initial-scale=1.0"&amp;gt;
													&amp;lt;title&amp;gt;스파르타플릭스&amp;lt;/title&amp;gt;
													&amp;lt;script
													src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"&amp;gt;&amp;lt;/script&amp;gt;
													&amp;lt;link
													href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
													rel="stylesheet"
													integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
													crossorigin="anonymous"&amp;gt; &amp;lt;style&amp;gt;
													@import
													url('https://fonts.googleapis.com/css2?family=Stylish&amp;amp;display=swap');
													* { font-family: "Stylish", serif; font-weight: 400;
													font-style: normal; } .main { color: white;
													background-image:
													url('https://occ-0-1123-1217.1.nflxso.net/dnm/api/v6/6AYY37jfdO6hpXcMjf9Yu5cnmO0/AAAABeIfo7VL_VDyKnljV66IkR-4XLb6xpZqhpLSo3JUtbivnEW4s60PD27muH1mdaANM_8rGpgbm6L2oDgA_iELHZLZ2IQjG5lvp5d2.jpg?r=e6e.jpg');
													background-position: center; background-size: cover; } body
													{ background-color: black; } .mycards { width: 1200px;
													margin: 20px auto 20px auto; } .mypostingbox { width:
													500px; margin: 20px auto 20px auto; border: 1px solid
													white; padding: 20px; border: radius 5px; }
													.form-floating&amp;gt;input { background-color:
													transparent; color: white; } .form-floating&amp;gt;label {
													color: white; } .input-group&amp;gt;label {
													background-color: transparent; color: white; }
													.mypostingbox&amp;gt;button { width: 100%; }
													&amp;lt;/style&amp;gt; &amp;lt;script type="module"&amp;gt;
													// Firebase SDK 라이브러리 가져오기 import { initializeApp } from
													"https://www.gstatic.com/firebasejs/9.22.0/firebase-app.js";
													import { getFirestore } from
													"https://www.gstatic.com/firebasejs/9.22.0/firebase-firestore.js";
													import { collection, addDoc } from
													"https://www.gstatic.com/firebasejs/9.22.0/firebase-firestore.js";
													import { getDocs } from
													"https://www.gstatic.com/firebasejs/9.22.0/firebase-firestore.js";
													// For Firebase JS SDK v7.20.0 and later, measurementId is
													optional const firebaseConfig = { apiKey:
													"AIzaSyAtsPLv_5UEdv5bUZO71bacVtc65xNQe0I", authDomain:
													"sparta-4ac24.firebaseapp.com", projectId: "sparta-4ac24",
													storageBucket: "sparta-4ac24.appspot.com",
													messagingSenderId: "280269543132", appId:
													"1:280269543132:web:af4e2d6caf4c67d1c28619", measurementId:
													"G-46D8T30NYX" }; // Firebase 인스턴스 초기화 const app =
													initializeApp(firebaseConfig); const db =
													getFirestore(app); let url =
													"http://spartacodingclub.shop/sparta_api/weather/seoul";
													fetch(url).then(res =&amp;gt; res.json()).then(data
													=&amp;gt; { let temp = data['temp']; if (temp &amp;gt; 20)
													{ $('#msg').text('더워요'); } else { $('#msg').text('추워요'); }
													makeCard(); }) let docs = await getDocs(collection(db,
													"movies")); docs.forEach((doc) =&amp;gt; { let row =
													doc.data(); }); $("#postingbtn").click(async function () {
													let image = $('#image').val(); let title =
													$('#title').val(); let star = $('#star').val(); let comment
													= $('#comment').val(); let doc = { 'image': image, 'title':
													title, 'star': star, 'comment': comment }; await
													addDoc(collection(db, "movies"), doc); alert('저장 완료!');
													window.location.reload(); }) function openclose() {
													$('#postingbox').toggle(); } async function makeCard() {
													let docs = await getDocs(collection(db, "movies"));
													docs.forEach((doc) =&amp;gt; { let row = doc.data(); let
													image = row['image']; let title = row['title']; let star =
													row['star']; let comment = row['comment']; let temp_html =
													`&amp;lt;div class="col"&amp;gt; &amp;lt;div
													class="card"&amp;gt; &amp;lt;img src="${image}"
													class="card-img-top" alt="..."&amp;gt; &amp;lt;div
													class="card-body"&amp;gt; &amp;lt;h5
													class="card-title"&amp;gt;${title}&amp;lt;/h5&amp;gt;
													&amp;lt;p
													class="card-text"&amp;gt;${star}&amp;lt;/p&amp;gt;
													&amp;lt;p
													class="card-text"&amp;gt;${comment}&amp;lt;/p&amp;gt;
													&amp;lt;/div&amp;gt; &amp;lt;/div&amp;gt;
													&amp;lt;/div&amp;gt;`; $('#card').append(temp_html); }); }
													&amp;lt;/script&amp;gt;&amp;lt;/head&amp;gt;&amp;lt;body&amp;gt;
													&amp;lt;header class="p-3 text-bg-dark"&amp;gt; &amp;lt;div
													class="container"&amp;gt; &amp;lt;div class="d-flex
													flex-wrap align-items-center justify-content-center
													justify-content-lg-start"&amp;gt; &amp;lt;a href="/"
													class="d-flex align-items-center mb-2 mb-lg-0 text-white
													text-decoration-none"&amp;gt; &amp;lt;svg class="bi me-2"
													width="40" height="32" role="img"
													aria-label="Bootstrap"&amp;gt; &amp;lt;use
													xlink:href="#bootstrap"&amp;gt;&amp;lt;/use&amp;gt;
													&amp;lt;/svg&amp;gt; &amp;lt;/a&amp;gt; &amp;lt;ul
													class="nav col-12 col-lg-auto me-lg-auto mb-2
													justify-content-center mb-md-0"&amp;gt;
													&amp;lt;li&amp;gt;&amp;lt;a href="#" class="nav-link px-2
													text-danger"&amp;gt;spartaflix&amp;lt;/a&amp;gt;&amp;lt;/li&amp;gt;
													&amp;lt;li&amp;gt;&amp;lt;a href="#" class="nav-link px-2
													text-white"&amp;gt;홈&amp;lt;/a&amp;gt;&amp;lt;/li&amp;gt;
													&amp;lt;li&amp;gt;&amp;lt;a href="#" class="nav-link px-2
													text-white"&amp;gt;시리즈&amp;lt;/a&amp;gt;&amp;lt;/li&amp;gt;
													&amp;lt;li&amp;gt;&amp;lt;a href="#" class="nav-link px-2
													text-white"&amp;gt;영화&amp;lt;/a&amp;gt;&amp;lt;/li&amp;gt;
													&amp;lt;li&amp;gt;&amp;lt;a href="#" class="nav-link px-2
													text-white"&amp;gt;내가 찜한
													콘센트&amp;lt;/a&amp;gt;&amp;lt;/li&amp;gt;
													&amp;lt;li&amp;gt;&amp;lt;a href="#" class="nav-link px-2
													text-white"&amp;gt;현재기온: &amp;lt;span
													id="ta"&amp;gt;20.00&amp;lt;/span&amp;gt;도&amp;lt;/a&amp;gt;&amp;lt;/li&amp;gt;
													&amp;lt;/ul&amp;gt; &amp;lt;form class="col-12 col-lg-auto
													mb-3 mb-lg-0 me-lg-3" role="search"&amp;gt; &amp;lt;input
													type="search" class="form-control form-control-dark
													text-bg-dark" placeholder="Search..."
													aria-label="Search"&amp;gt; &amp;lt;/form&amp;gt;
													&amp;lt;div class="text-end"&amp;gt; &amp;lt;button
													type="button" class="btn btn-outline-light
													me-2"&amp;gt;Login&amp;lt;/button&amp;gt; &amp;lt;button
													type="button" class="btn
													btn-danger"&amp;gt;Sign-up&amp;lt;/button&amp;gt;
													&amp;lt;/div&amp;gt; &amp;lt;/div&amp;gt;
													&amp;lt;/div&amp;gt; &amp;lt;/header&amp;gt; &amp;lt;div
													class="main"&amp;gt; &amp;lt;div class="p-5 mb-4
													bg-body-tertiary rounded-3"&amp;gt; &amp;lt;div
													class="container-fluid py-5"&amp;gt; &amp;lt;h1
													class="display-5 fw-bold"&amp;gt;킹덤&amp;lt;/h1&amp;gt;
													&amp;lt;p class="col-md-8 fs-4"&amp;gt;병든 왕을 둘러싸고 흉흉한 소문이
													떠돈다. 어둠에 뒤덮인 조선, 기이한 역병에 신음하는 산하. 정체 모를 악에 맞서 백성을 구원할 희망은
													오직 세자뿐이다.&amp;lt;/p&amp;gt; &amp;lt;button
													onclick="openclose()" type="button" class="btn
													btn-outline-light"&amp;gt;영화 기록하기&amp;lt;/button&amp;gt;
													&amp;lt;button type="button" class="btn
													btn-outline-light"&amp;gt;상세정보&amp;lt;/button&amp;gt;
													&amp;lt;/div&amp;gt; &amp;lt;/div&amp;gt;
													&amp;lt;/div&amp;gt; &amp;lt;div class="mypostingbox"
													id="postingbox"&amp;gt; &amp;lt;div class="form-floating
													mb-3"&amp;gt; &amp;lt;input type="email"
													class="form-control" id="image" placeholder="영화 이미지
													주소"&amp;gt; &amp;lt;label for="floatingInput"&amp;gt;영화 이미지
													주소&amp;lt;/label&amp;gt; &amp;lt;/div&amp;gt; &amp;lt;div
													class="form-floating mb-3"&amp;gt; &amp;lt;input
													type="email" class="form-control" id="title"
													placeholder="영화 제목"&amp;gt; &amp;lt;label
													for="floatingInput"&amp;gt;영화 제목&amp;lt;/label&amp;gt;
													&amp;lt;/div&amp;gt; &amp;lt;div class="input-group
													mb-3"&amp;gt; &amp;lt;label class="input-group-text"
													for="inputGroupSelect01"&amp;gt;별점&amp;lt;/label&amp;gt;
													&amp;lt;select class="form-select" id="star"&amp;gt;
													&amp;lt;option selected&amp;gt;별점선택&amp;lt;/option&amp;gt;
													&amp;lt;option value="⭐"&amp;gt;⭐&amp;lt;/option&amp;gt;
													&amp;lt;option value="⭐⭐"&amp;gt;⭐⭐&amp;lt;/option&amp;gt;
													&amp;lt;option
													value="⭐⭐⭐"&amp;gt;⭐⭐⭐&amp;lt;/option&amp;gt;
													&amp;lt;option
													value="⭐⭐⭐⭐"&amp;gt;⭐⭐⭐⭐&amp;lt;/option&amp;gt;
													&amp;lt;option
													value="⭐⭐⭐⭐⭐"&amp;gt;⭐⭐⭐⭐⭐&amp;lt;/option&amp;gt;
													&amp;lt;/select&amp;gt; &amp;lt;/div&amp;gt; &amp;lt;div
													class="form-floating mb-3"&amp;gt; &amp;lt;input
													type="email" class="form-control" id="comment"
													placeholder="추천 이유"&amp;gt; &amp;lt;label
													for="floatingInput"&amp;gt;추천 이유&amp;lt;/label&amp;gt;
													&amp;lt;/div&amp;gt; &amp;lt;button id="postingbtn"
													type="button" class="btn
													btn-danger"&amp;gt;기록하기&amp;lt;/button&amp;gt;
													&amp;lt;/div&amp;gt; &amp;lt;div class="mycards"&amp;gt;
													&amp;lt;div id="card" class="row row-cols-1 row-cols-md-4
													g-4"&amp;gt; &amp;lt;/div&amp;gt;
													&amp;lt;/div&amp;gt;&amp;lt;/body&amp;gt;&amp;lt;/html</div>
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
										<img
											src="https://media-sparta.s3.ap-northeast-2.amazonaws.com/media/tempfiles/community/1b310f0c-981b-45a4-a87f-e037c254a37fMzMwODU1LjI0Njc1ODk2MDcxNzEyODE4NDk2Nzkz.png"
											class="css-17s6wd5">
									</div>
									<div class="css-99cwur">
										<div class="css-1fhge30">
											<div class="css-aw18wm">
												<span
													style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
													src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
													decoding="async" data-nimg="fill"
													style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%;">
												<noscript></noscript></span>
											</div>
											<div class="css-5zcuov">
												<div class="css-1sika4i">최*경</div>
												<div class="css-1tify6w">
													<svg width="2" height="2" viewBox="0 0 2 2" fill="none"
														xmlns="http://www.w3.org/2000/svg">
														<circle cx="1" cy="1" r="1" fill="#9DA7AE"></circle></svg>
												</div>
												<div class="css-1ry6usa">17시간 전</div>
											</div>
										</div>
										<div class="css-o01lup">
											<div class="css-ts29it">
												<div class="css-1ry6usa">댓글</div>
												<div class="css-1ry6usa">6</div>
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
											4분 만에 튜터 답변 완료
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
											<div class="css-i21m7n">6</div>
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
												<div class="css-cp47oo">makeCard val 값이 undefined로 나와요</div>
												<div class="css-14bssip">이렇게 코드 작성하였는데console 창에는 각
													id의 값이 아니라 undefined로 나옵니다ㅠ</div>
											</div>
											<div class="css-12y9hd">
												<div class="css-cvph88">[왕초보] 웹개발 종합반 v0</div>
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
											src="https://media-sparta.s3.ap-northeast-2.amazonaws.com/media/tempfiles/community/43eabc2e-e012-4ade-bac8-fbf8d50cf678Mzc2MTUxLjQ1NTkyODA4MjMxNzEyODE3NDE1Mzc5.png"
											class="css-17s6wd5">
									</div>
									<div class="css-99cwur">
										<div class="css-1fhge30">
											<div class="css-aw18wm">
												<span
													style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
													sizes="100vw"
													srcset="/_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F6.png&amp;w=640&amp;q=75 640w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F6.png&amp;w=750&amp;q=75 750w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F6.png&amp;w=828&amp;q=75 828w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F6.png&amp;w=1080&amp;q=75 1080w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F6.png&amp;w=1200&amp;q=75 1200w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F6.png&amp;w=1920&amp;q=75 1920w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F6.png&amp;w=2048&amp;q=75 2048w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F6.png&amp;w=3840&amp;q=75 3840w"
													src="/_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F6.png&amp;w=3840&amp;q=75"
													decoding="async" data-nimg="fill"
													style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%;"></span>
											</div>
											<div class="css-5zcuov">
												<div class="css-1sika4i">손*영</div>
												<div class="css-1tify6w">
													<svg width="2" height="2" viewBox="0 0 2 2" fill="none"
														xmlns="http://www.w3.org/2000/svg">
														<circle cx="1" cy="1" r="1" fill="#9DA7AE"></circle></svg>
												</div>
												<div class="css-1ry6usa">18시간 전</div>
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
												<div class="css-cp47oo">05-04 소리 및 배경음악 넣기에 대한 문제가
													발생했습니다!</div>
												<div class="css-14bssip">안녕하세요!강의를 보면서 Audio Source에
													카드가 뒤집힐때마다 소리가 날 수 있게끔 filp 사운드가 들어갈 수 있도록 스크립트를 만들어 저장까지
													완료 했습니다!저장 후 게임 실행을 해보니 디버그 로그에 There are no audio
													listeners in the scene. Please ensure there is always one
													audio listener in the scene 라고 뜨더라구요...Scene에 오디오 리스너가 존재하지
													않아서 발생하는 문제라고 하는데 강의나 노션 학습자료를 살펴보면 Card 프리펩에 사운드가 잘 들어가면
													된다고 해서이 부분을 잘 모르겠습니다! 혹시 제가 놓치고 있는 부분이 있을까요?? Card.cs

													AudioSource audioSource; public AudioClip clip; public
													SpriteRenderer FrontImage; void Start() { audioSource =
													GetComponent&amp;lt;AudioSource&amp;gt;(); } public void
													OpenCard() { if (GameManger.Instance.secondCard != null)
													return; audioSource.PlayOneShot(clip);


													anim.SetBool("isOpen", true); front.SetActive(true);
													back.SetActive(false); if(GameManger.Instance.firstCard ==
													null) { GameManger.Instance.firstCard = this; } else {
													GameManger.Instance.secondCard = this;
													GameManger.Instance.checkMetched(); } 에러 메세지: There are no
													audio listeners in the scene. Please ensure there is always
													one audio listener in the scene</div>
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
												<div class="css-1mmjn2r">5주차</div>
											</div>
										</div>
										<div class="css-bt1qy"></div>
										<img
											src="https://media-sparta.s3.ap-northeast-2.amazonaws.com/media/tempfiles/community/c8786806-5e63-4e3c-be9d-d06711b8d669OTkzODk2LjU0MDgyMDExOTIxNzEyODE1MjgwNjMx.png"
											class="css-17s6wd5">
									</div>
									<div class="css-99cwur">
										<div class="css-1fhge30">
											<div class="css-aw18wm">
												<span
													style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
													sizes="100vw"
													srcset="/_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F20.png&amp;w=640&amp;q=75 640w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F20.png&amp;w=750&amp;q=75 750w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F20.png&amp;w=828&amp;q=75 828w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F20.png&amp;w=1080&amp;q=75 1080w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F20.png&amp;w=1200&amp;q=75 1200w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F20.png&amp;w=1920&amp;q=75 1920w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F20.png&amp;w=2048&amp;q=75 2048w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F20.png&amp;w=3840&amp;q=75 3840w"
													src="/_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F20.png&amp;w=3840&amp;q=75"
													decoding="async" data-nimg="fill"
													style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%;"></span>
											</div>
											<div class="css-5zcuov">
												<div class="css-1sika4i">정*현</div>
												<div class="css-1tify6w">
													<svg width="2" height="2" viewBox="0 0 2 2" fill="none"
														xmlns="http://www.w3.org/2000/svg">
														<circle cx="1" cy="1" r="1" fill="#9DA7AE"></circle></svg>
												</div>
												<div class="css-1ry6usa">18시간 전</div>
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
												<div class="css-1ry6usa">0</div>
											</div>
											<div class="css-dbc8ke">・</div>
											<div class="css-ts29it">
												<div class="css-1ry6usa">조회수</div>
												<div class="css-1ry6usa">11</div>
											</div>
										</div>
										<div class="css-1vkj2s1">
											<div class="css-1ry6usa">조회수</div>
											<div class="css-1ry6usa">11</div>
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
												<div class="css-cp47oo">구글 애드센스 신청</div>
												<div class="css-14bssip">'블로그(글 위주)+여러 가지 알림'으로 홈페이지를
													만들어도 구글 애드센스 신청할 수 있는지 궁금합니다.</div>
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
									</div>
									<div class="css-99cwur">
										<div class="css-1fhge30">
											<div class="css-aw18wm">
												<span
													style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
													src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
													decoding="async" data-nimg="fill"
													style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%;">
												<noscript></noscript></span>
											</div>
											<div class="css-5zcuov">
												<div class="css-1sika4i">이*욱</div>
												<div class="css-1tify6w">
													<svg width="2" height="2" viewBox="0 0 2 2" fill="none"
														xmlns="http://www.w3.org/2000/svg">
														<circle cx="1" cy="1" r="1" fill="#9DA7AE"></circle></svg>
												</div>
												<div class="css-1ry6usa">18시간 전</div>
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
												<div class="css-1ry6usa">9</div>
											</div>
										</div>
										<div class="css-1vkj2s1">
											<div class="css-1ry6usa">조회수</div>
											<div class="css-1ry6usa">9</div>
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
											7분 만에 튜터 답변 완료
										</div>
									</div>
									<div class="css-kem115">
										<div class="css-12i5occ">
											<div class="css-1jibmi3">
												<div class="css-cp47oo">5-2 데이터가 안넣어져요</div>
												<div class="css-14bssip">영화이미지,제목,별점,추천이유 넣고 기록하기 버튼을
													클릭하면 파이어베이스에 movies도 생성이 안되고화면에 저장완료! 팝업도 안떠요
													&amp;lt;!DOCTYPE html&amp;gt;&amp;lt;html
													lang="en"&amp;gt;&amp;lt;head&amp;gt; &amp;lt;meta
													charset="UTF-8"&amp;gt; &amp;lt;meta name="viewport"
													content="width=device-width, initial-scale=1.0"&amp;gt;
													&amp;lt;title&amp;gt;스파르타플릭스&amp;lt;/title&amp;gt;
													&amp;lt;script
													src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"&amp;gt;&amp;lt;/script&amp;gt;
													&amp;lt;link
													href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
													rel="stylesheet"
													integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
													crossorigin="anonymous"&amp;gt; &amp;lt;style&amp;gt;
													@import
													url('https://fonts.googleapis.com/css2?family=Stylish&amp;amp;display=swap');
													* { font-family: "Stylish", serif; font-weight: 400;
													font-style: normal; } .main { color: white;
													background-image:
													url('https://occ-0-1123-1217.1.nflxso.net/dnm/api/v6/6AYY37jfdO6hpXcMjf9Yu5cnmO0/AAAABeIfo7VL_VDyKnljV66IkR-4XLb6xpZqhpLSo3JUtbivnEW4s60PD27muH1mdaANM_8rGpgbm6L2oDgA_iELHZLZ2IQjG5lvp5d2.jpg?r=e6e.jpg');
													background-position: center; background-size: cover; } body
													{ background-color: black; } .mycards { width: 1200px;
													margin: 20px auto 20px auto; } .mypostingbox { width:
													500px; margin: 20px auto 20px auto; border: 1px solid
													white; padding: 20px; border: radius 5px; }
													.form-floating&amp;gt;input { background-color:
													transparent; color: white; } .form-floating&amp;gt;label {
													color: white; } .input-group&amp;gt;label {
													background-color: transparent; color: white; }
													.mypostingbox&amp;gt;button { width: 100%; }
													&amp;lt;/style&amp;gt; &amp;lt;script type="module"&amp;gt;
													// Firebase SDK 라이브러리 가져오기 import { initializeApp } from
													"https://www.gstatic.com/firebasejs/9.22.0/firebase-app.js";
													import { getFirestore } from
													"https://www.gstatic.com/firebasejs/9.22.0/firebase-firestore.js";
													import { collection, addDoc } from
													"https://www.gstatic.com/firebasejs/9.22.0/firebase-firestore.js";
													import { getDocs } from
													"https://www.gstatic.com/firebasejs/9.22.0/firebase-firestore.js";
													// For Firebase JS SDK v7.20.0 and later, measurementId is
													optional const firebaseConfig = { apiKey:
													"AIzaSyAtsPLv_5UEdv5bUZO71bacVtc65xNQe0I", authDomain:
													"sparta-4ac24.firebaseapp.com", projectId: "sparta-4ac24",
													storageBucket: "sparta-4ac24.appspot.com",
													messagingSenderId: "280269543132", appId:
													"1:280269543132:web:af4e2d6caf4c67d1c28619", measurementId:
													"G-46D8T30NYX" }; // Firebase 인스턴스 초기화 const app =
													initializeApp(firebaseConfig); const db =
													getFirestore(app); let url =
													"http://spartacodingclub.shop/sparta_api/weather/seoul";
													fetch(url).then(res =&amp;gt; res.json()).then(data
													=&amp;gt; { let temp = data['temp']; if (temp &amp;gt; 20)
													{ $('#msg').text('더워요'); } else { $('#msg').text('추워요');
													$("#postingbtn").click(async function () { let image =
													$('#image').val(); let title = $('#title').val(); let star
													= $('#star').val(); let comment = $('#comment').val(); let
													doc = { 'image': image, 'title': title, 'star': star,
													'comment': comment }; await addDoc(collection(db,
													"albums"), doc); alert('저장 완료!'); window.location.reload();
													}) let docs = await getDocs(collection(db, "albums"));
													docs.forEach((doc) =&amp;gt; { let row = doc.data();
													console.log(row) }; $("#savebtn").click(async function () {
													$('#postingbox').toggle(); }) } function openclose() {
													$('#postingbox').toggle(); } function makeCard() { let
													image = $('#image').val(); let title = $('#title').val();
													let comment = $('#comment').val(); let star =
													$('#star').val(); let temp_html = `&amp;lt;div
													class="col"&amp;gt; &amp;lt;div class="card"&amp;gt;
													&amp;lt;img src="${image}" class="card-img-top"
													alt="..."&amp;gt; &amp;lt;div class="card-body"&amp;gt;
													&amp;lt;h5
													class="card-title"&amp;gt;${title}&amp;lt;/h5&amp;gt;
													&amp;lt;p
													class="card-text"&amp;gt;${star}&amp;lt;/p&amp;gt;
													&amp;lt;p
													class="card-text"&amp;gt;${comment}&amp;lt;/p&amp;gt;
													&amp;lt;/div&amp;gt; &amp;lt;/div&amp;gt;
													&amp;lt;/div&amp;gt;`; $('#card').append(temp_html); }
													&amp;lt;/script&amp;gt;&amp;lt;/head&amp;gt;&amp;lt;body&amp;gt;
													&amp;lt;header class="p-3 text-bg-dark"&amp;gt; &amp;lt;div
													class="container"&amp;gt; &amp;lt;div class="d-flex
													flex-wrap align-items-center justify-content-center
													justify-content-lg-start"&amp;gt; &amp;lt;a href="/"
													class="d-flex align-items-center mb-2 mb-lg-0 text-white
													text-decoration-none"&amp;gt; &amp;lt;svg class="bi me-2"
													width="40" height="32" role="img"
													aria-label="Bootstrap"&amp;gt; &amp;lt;use
													xlink:href="#bootstrap"&amp;gt;&amp;lt;/use&amp;gt;
													&amp;lt;/svg&amp;gt; &amp;lt;/a&amp;gt; &amp;lt;ul
													class="nav col-12 col-lg-auto me-lg-auto mb-2
													justify-content-center mb-md-0"&amp;gt;
													&amp;lt;li&amp;gt;&amp;lt;a href="#" class="nav-link px-2
													text-danger"&amp;gt;spartaflix&amp;lt;/a&amp;gt;&amp;lt;/li&amp;gt;
													&amp;lt;li&amp;gt;&amp;lt;a href="#" class="nav-link px-2
													text-white"&amp;gt;홈&amp;lt;/a&amp;gt;&amp;lt;/li&amp;gt;
													&amp;lt;li&amp;gt;&amp;lt;a href="#" class="nav-link px-2
													text-white"&amp;gt;시리즈&amp;lt;/a&amp;gt;&amp;lt;/li&amp;gt;
													&amp;lt;li&amp;gt;&amp;lt;a href="#" class="nav-link px-2
													text-white"&amp;gt;영화&amp;lt;/a&amp;gt;&amp;lt;/li&amp;gt;
													&amp;lt;li&amp;gt;&amp;lt;a href="#" class="nav-link px-2
													text-white"&amp;gt;내가 찜한
													콘센트&amp;lt;/a&amp;gt;&amp;lt;/li&amp;gt;
													&amp;lt;li&amp;gt;&amp;lt;a href="#" class="nav-link px-2
													text-white"&amp;gt;현재기온: &amp;lt;span
													id="ta"&amp;gt;20.00&amp;lt;/span&amp;gt;도&amp;lt;/a&amp;gt;&amp;lt;/li&amp;gt;
													&amp;lt;/ul&amp;gt; &amp;lt;form class="col-12 col-lg-auto
													mb-3 mb-lg-0 me-lg-3" role="search"&amp;gt; &amp;lt;input
													type="search" class="form-control form-control-dark
													text-bg-dark" placeholder="Search..."
													aria-label="Search"&amp;gt; &amp;lt;/form&amp;gt;
													&amp;lt;div class="text-end"&amp;gt; &amp;lt;button
													type="button" class="btn btn-outline-light
													me-2"&amp;gt;Login&amp;lt;/button&amp;gt; &amp;lt;button
													type="button" class="btn
													btn-danger"&amp;gt;Sign-up&amp;lt;/button&amp;gt;
													&amp;lt;/div&amp;gt; &amp;lt;/div&amp;gt;
													&amp;lt;/div&amp;gt; &amp;lt;/header&amp;gt; &amp;lt;div
													class="main"&amp;gt; &amp;lt;div class="p-5 mb-4
													bg-body-tertiary rounded-3"&amp;gt; &amp;lt;div
													class="container-fluid py-5"&amp;gt; &amp;lt;h1
													class="display-5 fw-bold"&amp;gt;킹덤&amp;lt;/h1&amp;gt;
													&amp;lt;p class="col-md-8 fs-4"&amp;gt;병든 왕을 둘러싸고 흉흉한 소문이
													떠돈다. 어둠에 뒤덮인 조선, 기이한 역병에 신음하는 산하. 정체 모를 악에 맞서 백성을 구원할 희망은
													오직 세자뿐이다.&amp;lt;/p&amp;gt; &amp;lt;button
													onclick="openclose()" type="button" class="btn
													btn-outline-light"&amp;gt;영화 기록하기&amp;lt;/button&amp;gt;
													&amp;lt;button type="button" class="btn
													btn-outline-light"&amp;gt;상세정보&amp;lt;/button&amp;gt;
													&amp;lt;/div&amp;gt; &amp;lt;/div&amp;gt;
													&amp;lt;/div&amp;gt; &amp;lt;div class="mypostingbox"
													id="postingbox"&amp;gt; &amp;lt;div class="form-floating
													mb-3"&amp;gt; &amp;lt;input type="email"
													class="form-control" id="image" placeholder="영화 이미지
													주소"&amp;gt; &amp;lt;label for="floatingInput"&amp;gt;영화 이미지
													주소&amp;lt;/label&amp;gt; &amp;lt;/div&amp;gt; &amp;lt;div
													class="form-floating mb-3"&amp;gt; &amp;lt;input
													type="email" class="form-control" id="titlet"
													placeholder="영화 제목"&amp;gt; &amp;lt;label
													for="floatingInput"&amp;gt;영화 제목&amp;lt;/label&amp;gt;
													&amp;lt;/div&amp;gt; &amp;lt;div class="input-group
													mb-3"&amp;gt; &amp;lt;label class="input-group-text"
													for="inputGroupSelect01"&amp;gt;별점&amp;lt;/label&amp;gt;
													&amp;lt;select class="form-select" id="star"&amp;gt;
													&amp;lt;option selected&amp;gt;별점선택&amp;lt;/option&amp;gt;
													&amp;lt;option value="⭐"&amp;gt;⭐&amp;lt;/option&amp;gt;
													&amp;lt;option value="⭐⭐"&amp;gt;⭐⭐&amp;lt;/option&amp;gt;
													&amp;lt;option
													value="⭐⭐⭐"&amp;gt;⭐⭐⭐&amp;lt;/option&amp;gt;
													&amp;lt;option
													value="⭐⭐⭐⭐"&amp;gt;⭐⭐⭐⭐&amp;lt;/option&amp;gt;
													&amp;lt;option
													value="⭐⭐⭐⭐⭐"&amp;gt;⭐⭐⭐⭐⭐&amp;lt;/option&amp;gt;
													&amp;lt;/select&amp;gt; &amp;lt;/div&amp;gt; &amp;lt;div
													class="form-floating mb-3"&amp;gt; &amp;lt;input
													type="email" class="form-control" id="comment"
													placeholder="추천 이유"&amp;gt; &amp;lt;label
													for="floatingInput"&amp;gt;추천 이유&amp;lt;/label&amp;gt;
													&amp;lt;/div&amp;gt; &amp;lt;button id="postingbtn"
													type="button" class="btn
													btn-danger"&amp;gt;기록하기&amp;lt;/button&amp;gt;
													&amp;lt;/div&amp;gt; &amp;lt;div class="mycards"&amp;gt;
													&amp;lt;div id="card" class="row row-cols-1 row-cols-md-4
													g-4"&amp;gt; &amp;lt;div class="col"&amp;gt; &amp;lt;div
													class="card"&amp;gt; &amp;lt;img
													src="https://movie-phinf.pstatic.net/20210728_221/1627440327667GyoYj_JPEG/movie_image.jpg"
													class="card-img-top" alt="..."&amp;gt; &amp;lt;div
													class="card-body"&amp;gt; &amp;lt;h5
													class="card-title"&amp;gt;영화 제목&amp;lt;/h5&amp;gt;
													&amp;lt;p class="card-text"&amp;gt;⭐⭐⭐&amp;lt;/p&amp;gt;
													&amp;lt;p class="card-text"&amp;gt;영화 내용&amp;lt;/p&amp;gt;
													&amp;lt;/div&amp;gt; &amp;lt;/div&amp;gt;
													&amp;lt;/div&amp;gt; &amp;lt;div class="col"&amp;gt;
													&amp;lt;div class="card"&amp;gt; &amp;lt;img
													src="https://movie-phinf.pstatic.net/20210728_221/1627440327667GyoYj_JPEG/movie_image.jpg"
													class="card-img-top" alt="..."&amp;gt; &amp;lt;div
													class="card-body"&amp;gt; &amp;lt;h5
													class="card-title"&amp;gt;영화 제목&amp;lt;/h5&amp;gt;
													&amp;lt;p class="card-text"&amp;gt;⭐⭐⭐&amp;lt;/p&amp;gt;
													&amp;lt;p class="card-text"&amp;gt;영화 내용&amp;lt;/p&amp;gt;
													&amp;lt;/div&amp;gt; &amp;lt;/div&amp;gt;
													&amp;lt;/div&amp;gt; &amp;lt;div class="col"&amp;gt;
													&amp;lt;div class="card"&amp;gt; &amp;lt;img
													src="https://movie-phinf.pstatic.net/20210728_221/1627440327667GyoYj_JPEG/movie_image.jpg"
													class="card-img-top" alt="..."&amp;gt; &amp;lt;div
													class="card-body"&amp;gt; &amp;lt;h5
													class="card-title"&amp;gt;영화 제목&amp;lt;/h5&amp;gt;
													&amp;lt;p class="card-text"&amp;gt;⭐⭐⭐&amp;lt;/p&amp;gt;
													&amp;lt;p class="card-text"&amp;gt;영화 내용&amp;lt;/p&amp;gt;
													&amp;lt;/div&amp;gt; &amp;lt;/div&amp;gt;
													&amp;lt;/div&amp;gt; &amp;lt;div class="col"&amp;gt;
													&amp;lt;div class="card"&amp;gt; &amp;lt;img
													src="https://movie-phinf.pstatic.net/20210728_221/1627440327667GyoYj_JPEG/movie_image.jpg"
													class="card-img-top" alt="..."&amp;gt; &amp;lt;div
													class="card-body"&amp;gt; &amp;lt;h5
													class="card-title"&amp;gt;영화 제목&amp;lt;/h5&amp;gt;
													&amp;lt;p class="card-text"&amp;gt;⭐⭐⭐&amp;lt;/p&amp;gt;
													&amp;lt;p class="card-text"&amp;gt;영화 내용&amp;lt;/p&amp;gt;
													&amp;lt;/div&amp;gt; &amp;lt;/div&amp;gt;
													&amp;lt;/div&amp;gt; &amp;lt;/div&amp;gt;
													&amp;lt;/div&amp;gt;&amp;lt;/body&amp;gt;&amp;lt;/html&amp;gt;</div>
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
													src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
													decoding="async" data-nimg="fill"
													style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%;">
												<noscript></noscript></span>
											</div>
											<div class="css-5zcuov">
												<div class="css-1sika4i">최*경</div>
												<div class="css-1tify6w">
													<svg width="2" height="2" viewBox="0 0 2 2" fill="none"
														xmlns="http://www.w3.org/2000/svg">
														<circle cx="1" cy="1" r="1" fill="#9DA7AE"></circle></svg>
												</div>
												<div class="css-1ry6usa">19시간 전</div>
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
											7분 만에 튜터 답변 완료
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
											10분 만에 튜터 답변 완료
										</div>
									</div>
									<div class="css-kem115">
										<div class="css-1473tav">
											<div class="css-1jibmi3">
												<div class="css-cp47oo">숙제</div>
												<div class="css-14bssip">저기 이미지 옆에 검은색 배경이 너무 커서 오른쪽
													메인에 있는 글자들이 너무 떨어져 있어서 그런데 저기 이미지 검은색 배경 크기를 이미지랑 똑같은 크기로
													만들 수는 없나요?한마디로 그냥 저기 이미지랑 글자가 붙을 수 있는 방법을 알려주세요!!
													&amp;lt;!DOCTYPE html&amp;gt; &amp;lt;html
													lang="en"&amp;gt; &amp;lt;head&amp;gt; &amp;lt;meta
													charset="UTF-8"&amp;gt; &amp;lt;meta
													http-equiv="X-UA-Compatible" content="IE=edge"&amp;gt;
													&amp;lt;meta name="viewport" content="width=device-width,
													initial-scale=1.0"&amp;gt; &amp;lt;link rel="stylesheet"
													href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"
													/&amp;gt; &amp;lt;link
													href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
													rel="stylesheet"
													integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ"
													crossorigin="anonymous"&amp;gt; &amp;lt;link
													rel="stylesheet" href="reset.css"&amp;gt; &amp;lt;link
													rel="stylesheet" href="detail.css"&amp;gt;
													&amp;lt;title&amp;gt;무신사 상품 상세 페이지
													클론코딩&amp;lt;/title&amp;gt; &amp;lt;/head&amp;gt;


													&amp;lt;body&amp;gt; &amp;lt;body&amp;gt;
													&amp;lt;header&amp;gt; &amp;lt;!-- header contents
													--&amp;gt; &amp;lt;div class="badge"&amp;gt;
													&amp;lt;span&amp;gt;한정 판매&amp;lt;/span&amp;gt;
													&amp;lt;/div&amp;gt; &amp;lt;h1
													class="product-title"&amp;gt;상품 제목&amp;lt;/h1&amp;gt;
													&amp;lt;/header&amp;gt; &amp;lt;main&amp;gt; &amp;lt;div
													class="main-left"&amp;gt; &amp;lt;!-- main-left contents
													--&amp;gt; &amp;lt;img
													src="https://cdn.pixabay.com/photo/2024/01/20/01/50/ai-generated-8520178_1280.jpg"
													alt="상품 이미지" width="500" height="600"&amp;gt; &amp;lt;div
													class="thumbnails"&amp;gt; &amp;lt;img
													src="https://cdn.pixabay.com/photo/2024/01/20/01/50/ai-generated-8520178_1280.jpg"
													alt="썸네일 1" width="60" height="72"&amp;gt; &amp;lt;img
													src="https://cdn.pixabay.com/photo/2024/01/20/01/50/ai-generated-8520178_1280.jpg"
													alt="썸네일 2" width="60" height="72"&amp;gt; &amp;lt;img
													src="https://cdn.pixabay.com/photo/2024/01/20/01/50/ai-generated-8520178_1280.jpg"
													alt="썸네일 3" width="60" height="72"&amp;gt; &amp;lt;img
													src="https://cdn.pixabay.com/photo/2024/01/20/01/50/ai-generated-8520178_1280.jpg"
													alt="썸네일 4" width="60" height="72"&amp;gt; &amp;lt;img
													src="https://cdn.pixabay.com/photo/2024/01/20/01/50/ai-generated-8520178_1280.jpg"
													alt="썸네일 5" width="60" height="72"&amp;gt; &amp;lt;img
													src="https://cdn.pixabay.com/photo/2024/01/20/01/50/ai-generated-8520178_1280.jpg"
													alt="썸네일 6" width="60" height="72"&amp;gt; &amp;lt;img
													src="https://cdn.pixabay.com/photo/2024/01/20/01/50/ai-generated-8520178_1280.jpg"
													alt="썸네일 7" width="60" height="72"&amp;gt;
													&amp;lt;/div&amp;gt; &amp;lt;/div&amp;gt; &amp;lt;div
													class="main-right"&amp;gt; &amp;lt;!-- main-right contents
													--&amp;gt; &amp;lt;div class="product-info"&amp;gt;
													&amp;lt;h2&amp;gt;Product Info&amp;lt;/h2&amp;gt;
													&amp;lt;div class="info-item"&amp;gt; &amp;lt;span
													class="info-title"&amp;gt;제조사:&amp;lt;/span&amp;gt;
													&amp;lt;span class="info-content"&amp;gt;테스트
													제조사&amp;lt;/span&amp;gt; &amp;lt;/div&amp;gt; &amp;lt;div
													class="info-item"&amp;gt; &amp;lt;span
													class="info-title"&amp;gt;모델명:&amp;lt;/span&amp;gt;
													&amp;lt;span class="info-content"&amp;gt;테스트
													모델명&amp;lt;/span&amp;gt; &amp;lt;/div&amp;gt; &amp;lt;!--
													Add more info items as needed --&amp;gt;
													&amp;lt;/div&amp;gt; &amp;lt;div
													class="delivery-info"&amp;gt; &amp;lt;h2&amp;gt;Delivery
													Info&amp;lt;/h2&amp;gt; &amp;lt;div
													class="info-item"&amp;gt; &amp;lt;span
													class="info-title"&amp;gt;배송비:&amp;lt;/span&amp;gt;
													&amp;lt;span
													class="info-content"&amp;gt;무료&amp;lt;/span&amp;gt;
													&amp;lt;/div&amp;gt; &amp;lt;div class="info-item"&amp;gt;
													&amp;lt;span class="info-title"&amp;gt;배송
													방법:&amp;lt;/span&amp;gt; &amp;lt;span
													class="info-content"&amp;gt;CJ 대한통운 택배&amp;lt;/span&amp;gt;
													&amp;lt;/div&amp;gt; &amp;lt;!-- Add more delivery items as
													needed --&amp;gt; &amp;lt;/div&amp;gt; &amp;lt;div
													class="price-info"&amp;gt; &amp;lt;h2&amp;gt;Price
													Info&amp;lt;/h2&amp;gt; &amp;lt;div
													class="info-item"&amp;gt; &amp;lt;span
													class="info-title"&amp;gt;판매 가격:&amp;lt;/span&amp;gt;
													&amp;lt;span
													class="info-content"&amp;gt;1000000원&amp;lt;/span&amp;gt;
													&amp;lt;/div&amp;gt; &amp;lt;div class="info-item"&amp;gt;
													&amp;lt;span
													class="info-title"&amp;gt;적립금:&amp;lt;/span&amp;gt;
													&amp;lt;span
													class="info-content"&amp;gt;10000원&amp;lt;/span&amp;gt;
													&amp;lt;/div&amp;gt; &amp;lt;!-- Add more price items as
													needed --&amp;gt; &amp;lt;/div&amp;gt; &amp;lt;div
													class="purchase"&amp;gt; &amp;lt;select&amp;gt;
													&amp;lt;option value=""&amp;gt;옵션 선택&amp;lt;/option&amp;gt;
													&amp;lt;option value="option1"&amp;gt;옵션
													1&amp;lt;/option&amp;gt; &amp;lt;option
													value="option2"&amp;gt;옵션 2&amp;lt;/option&amp;gt;
													&amp;lt;option value="option3"&amp;gt;옵션
													3&amp;lt;/option&amp;gt; &amp;lt;!-- Add more options as
													needed --&amp;gt; &amp;lt;/select&amp;gt; &amp;lt;div
													class="total-price"&amp;gt; &amp;lt;span&amp;gt;총
													금액&amp;lt;/span&amp;gt;
													&amp;lt;span&amp;gt;1000000원&amp;lt;/span&amp;gt;
													&amp;lt;/div&amp;gt;
													&amp;lt;button&amp;gt;구매하기&amp;lt;/button&amp;gt;
													&amp;lt;/div&amp;gt; &amp;lt;/div&amp;gt;
													&amp;lt;/main&amp;gt; &amp;lt;/body&amp;gt;
													&amp;lt;/body&amp;gt; &amp;lt;/html&amp;gt; header {
													display: flex; justify-content: center; /* 가로 중앙 정렬 */
													align-items: center; padding: 20px; } .badge { height:
													26px; background-color: black; /* 배지 배경색 */ padding: 0
													10px; border-radius: 5px; margin-right: 10px; /* 우측 여백 추가
													*/ } .badge span { font-size: 14px; font-weight: bold;
													color: #ffffff; /* 배지 텍스트 색상 */ } .product-title {
													font-size: 24px; font-weight: bold; } main { max-width:
													1200px; margin: 0 auto; display: flex; justify-content:
													space-between; padding: 50px 0; /* 가로 중앙 정렬 */ } .main-left
													{ width: 400px; flex: 1; padding: 20px 10px; /* 상하로는 그대로 두고
													좌우로만 간격을 줄임 */ background-color: black; /* 이미지와 같은 크기의 배경색
													적용 */ } .product-image { width: 500px; height: 600px;
													background-color: black; /* 이미지와 같은 크기의 배경색 적용 */
													margin-bottom: 20px; } .product-image img { width: 100%;
													height: 100%; object-fit: cover; } .thumbnails { display:
													flex; } .thumbnails img { width: 60px; height: 72px;
													margin-right: 13.3px; } .thumbnails img:last-child {
													margin-right: 0; /* 마지막 이미지의 우측 여백 제거 */ } .main-right {
													width: 400px; padding: 20px; margin-left: 20px; /* 적당한 여백
													추가 */ margin-right: 20px; /* 적당한 여백 추가 */ } .product-info,
													.delivery-info, .price-info, .purchase { margin-bottom:
													20px; /* 각 영역 아래에 여백 추가 */ } .product-info h2,
													.delivery-info h2, .price-info h2 { font-weight: bold; }


													.info-item { display: flex; justify-content: space-between;
													margin-top: 5px; } .info-title { font-weight: bold; }


													.select { margin-bottom: 10px; } .total-price { margin-top:
													10px; display: flex; justify-content: space-between; }


													.purchase button { width: 25%; padding: 10px;
													background-color: black; color: #fff; border: none; cursor:
													pointer; } .purchase button:hover { background-color:
													#0056b3; }</div>
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
												<div class="css-1mmjn2r">6주차</div>
											</div>
										</div>
										<div class="css-bt1qy"></div>
										<img
											src="https://media-sparta.s3.ap-northeast-2.amazonaws.com/media/tempfiles/community/46c464d4-dbd5-4531-a876-d86807e95209MTg1MTYwLjI4NzA1NzY3NDA1MTcxMjgwOTg2NDM3Nw=.png"
											class="css-17s6wd5">
									</div>
									<div class="css-99cwur">
										<div class="css-1fhge30">
											<div class="css-aw18wm">
												<span
													style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
													sizes="100vw"
													srcset="/_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F6.png&amp;w=640&amp;q=75 640w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F6.png&amp;w=750&amp;q=75 750w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F6.png&amp;w=828&amp;q=75 828w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F6.png&amp;w=1080&amp;q=75 1080w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F6.png&amp;w=1200&amp;q=75 1200w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F6.png&amp;w=1920&amp;q=75 1920w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F6.png&amp;w=2048&amp;q=75 2048w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F6.png&amp;w=3840&amp;q=75 3840w"
													src="/_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F6.png&amp;w=3840&amp;q=75"
													decoding="async" data-nimg="fill"
													style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%;"></span>
											</div>
											<div class="css-5zcuov">
												<div class="css-1sika4i">신*은</div>
												<div class="css-1tify6w">
													<svg width="2" height="2" viewBox="0 0 2 2" fill="none"
														xmlns="http://www.w3.org/2000/svg">
														<circle cx="1" cy="1" r="1" fill="#9DA7AE"></circle></svg>
												</div>
												<div class="css-1ry6usa">20시간 전</div>
											</div>
										</div>
										<div class="css-o01lup">
											<div class="css-ts29it">
												<div class="css-1ry6usa">댓글</div>
												<div class="css-1ry6usa">6</div>
											</div>
											<div class="css-dbc8ke">・</div>
											<div class="css-ts29it">
												<div class="css-1ry6usa">추천</div>
												<div class="css-1ry6usa">0</div>
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
											10분 만에 튜터 답변 완료
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
											<div class="css-i21m7n">6</div>
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
