<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/sparta/common/header.jsp"%>
<style>
<%@include file="/res/css/sparta/board/free/list.css"%>
</style>
<%@include file="/res/js/sparta/board/list_js.jsp"%>
<div id="main">
	<div class="css-1hnxdb7">
		<div class="css-mbwamd">
			<div class="css-1b9to7p">
				<div class="css-vsssfb">
					<div class="css-110bgim">
						<div id="navTab" class="css-28nsux">
							<div data-link="free" class="css-19831hi">자유게시판</div>
							<div data-link="qna" class="css-nw8p9d">학습 질문</div>
							<div data-link="free" class="css-nw8p9d">개발일지</div>
							<div data-link="free" class="css-17ta9kq"></div>
							<div data-link="free" class="css-nw8p9d">나의 활동</div>
						</div>
					</div>
					<div class="css-16bft0y">
						<div id="writeFree" class="css-804v49">글 남기기</div>
						<div class="css-19klq5c">내일배움카드에 관해 궁금한 점을 물어보세요!</div>
					</div>
				</div>
				<div class="css-33zep3">
					<div class="css-17t7asl">
						<div class="css-1jibmi3">
							<div class="css-1mpmq0i">
								<div class="css-18vdxik">자유게시판</div>
							</div>
							<div class="css-1qzbd5x">나만 놓칠 수 없는 이야기들</div>
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
								<div class="css-t6548q">검색어를 입력해주세요.</div>
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
												<div class="css-nmdn6a">카테고리</div>
												<div class="css-bw1gsw">전체</div>
											</div>
											<svg width="16" height="16" viewBox="0 0 16 16" fill="none"
												xmlns="http://www.w3.org/2000/svg">
												<path
													d="M4.53033 6.13373C4.23744 5.84084 3.76256 5.84084 3.46967 6.13373C3.17678 6.42663 3.17678 6.9015 3.46967 7.19439L4.53033 6.13373ZM8 10.6641L7.46967 11.1944C7.76256 11.4873 8.23744 11.4873 8.53033 11.1944L8 10.6641ZM12.5303 7.19439C12.8232 6.9015 12.8232 6.42663 12.5303 6.13373C12.2374 5.84084 11.7626 5.84084 11.4697 6.13373L12.5303 7.19439ZM3.46967 7.19439L7.46967 11.1944L8.53033 10.1337L4.53033 6.13373L3.46967 7.19439ZM8.53033 11.1944L12.5303 7.19439L11.4697 6.13373L7.46967 10.1337L8.53033 11.1944Z"
													fill="#9DA7AE"></path></svg>
										</div>
									</div>
									<div class="css-g70uuw"></div>
								</div>
							</div>
						</div>
						<div class="css-6ylcwl">
							<div class="css-f7kuwm">
								<div id="sortTab" class="css-1o94c7r">
									<div class="css-1kb98ja" data-sort="date">
										<svg width="4" height="4" viewBox="0 0 4 4" fill="none"
											xmlns="http://www.w3.org/2000/svg">
											<circle cx="2" cy="2" r="2" fill="#e8344e"></circle></svg>
										<div class="css-1619ajl">최신순</div>
									</div>
									<div class="css-bewb21" data-sort="vote">
										<svg width="4" height="4" viewBox="0 0 4 4" fill="none"
											xmlns="http://www.w3.org/2000/svg">
											<circle cx="2" cy="2" r="2" fill="#B4BFC6"></circle></svg>
										<div class="css-1j5hzn7">추천순</div>
									</div>
								</div>
							</div>
						</div>
						<div class="css-1eosagt">
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
									<div class="css-amlmv6">
										<div class="css-1254q6y">답변 대기중</div>
									</div>
									<div class="css-kem115">
										<div class="css-12i5occ">
											<div class="css-1jibmi3">
												<div class="css-cp47oo">마이크로소프트 주최 4.13일 해커톤 참가 팀으로 같이
													하실분 구해요</div>
												<div class="css-14bssip">파이썬 다룰줄 아시면 될듯 하고 다룰줄 모르셔도
													기획자로서 역활만 되시면 같이 팀으로 하실분https://event-us.kr/m/80730/15651</div>
											</div>
											<div class="css-sebsp7"></div>
										</div>
										<div class="css-bt1qy"></div>
									</div>
									<div class="css-99cwur">
										<div class="css-1fhge30">
											<div class="css-aw18wm">
												<span
													style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
													src="/_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F0.png&amp;w=3840&amp;q=75"
													decoding="async" data-nimg="fill"
													style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%;"
													sizes="100vw"
													srcset="/_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F0.png&amp;w=640&amp;q=75 640w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F0.png&amp;w=750&amp;q=75 750w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F0.png&amp;w=828&amp;q=75 828w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F0.png&amp;w=1080&amp;q=75 1080w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F0.png&amp;w=1200&amp;q=75 1200w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F0.png&amp;w=1920&amp;q=75 1920w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F0.png&amp;w=2048&amp;q=75 2048w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F0.png&amp;w=3840&amp;q=75 3840w"></span>
											</div>
											<div class="css-5zcuov">
												<div class="css-1sika4i">이*식</div>
												<div class="css-1tify6w">
													<svg width="2" height="2" viewBox="0 0 2 2" fill="none"
														xmlns="http://www.w3.org/2000/svg">
														<circle cx="1" cy="1" r="1" fill="#9DA7AE"></circle></svg>
												</div>
												<div data-sort="date" class="css-1ry6usa">2024년 4월 5일 오후 11:28</div>
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
												<div data-sort="vote" class="css-1ry6usa">1</div>
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
									<div class="css-z2xt5y"></div>
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
									<div class="css-amlmv6">
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
											20시간 만에 튜터 답변 완료
										</div>
									</div>
									<div class="css-kem115">
										<div class="css-12i5occ">
											<div class="css-1jibmi3">
												<div class="css-cp47oo">토큰화의 예시로 split() 메서드를 제시할 수
													있을까요?</div>
												<div class="css-14bssip">"This is a book"["This",
													"is", "a", "book"]내부는 보통은 단순한 for문을 이용한 구조이다.문자열을 선형
													시간(O(n))에 처리하는 방식이다.효율적인 구분자 검색을 위해 보이어-무어 알고리즘이나 KMP 알고리즘과
													같은 문자열 검색 알고리즘을 사용하는 경우도 있을 수 있다.라는 정보를 기반으로 제목을
													도출하였습니다.실제로 받아들여지는 예시인지 궁금해졌습니다.
													https://verdantjuly.tistory.com/644</div>
											</div>
											<div class="css-sebsp7">
												<div class="css-1ry6usa">#토큰화</div>
												<div class="css-1ry6usa">#split</div>
												<div class="css-1ry6usa">#javascript</div>
											</div>
										</div>
										<div class="css-bt1qy"></div>
									</div>
									<div class="css-99cwur">
										<div class="css-1fhge30">
											<div class="css-aw18wm">
												<span
													style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
													src="/_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F34.png&amp;w=3840&amp;q=75"
													decoding="async" data-nimg="fill"
													style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%;"
													sizes="100vw"
													srcset="/_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F34.png&amp;w=640&amp;q=75 640w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F34.png&amp;w=750&amp;q=75 750w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F34.png&amp;w=828&amp;q=75 828w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F34.png&amp;w=1080&amp;q=75 1080w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F34.png&amp;w=1200&amp;q=75 1200w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F34.png&amp;w=1920&amp;q=75 1920w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F34.png&amp;w=2048&amp;q=75 2048w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F34.png&amp;w=3840&amp;q=75 3840w"></span>
											</div>
											<div class="css-5zcuov">
												<div class="css-1sika4i">이*영</div>
												<div class="css-1tify6w">
													<svg width="2" height="2" viewBox="0 0 2 2" fill="none"
														xmlns="http://www.w3.org/2000/svg">
														<circle cx="1" cy="1" r="1" fill="#9DA7AE"></circle></svg>
												</div>
												<div data-sort="date" class="css-1ry6usa">2024년 4월 2일 오후 1:14</div>
											</div>
										</div>
										<div class="css-o01lup">
											<div class="css-ts29it">
												<div class="css-1ry6usa">댓글</div>
												<div class="css-1ry6usa">2</div>
											</div>
											<div class="css-dbc8ke">・</div>
											<div class="css-ts29it">
												<div class="css-1ry6usa">추천</div>
												<div data-sort="vote"  class="css-1ry6usa">0</div>
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
									<div class="css-z2xt5y"></div>
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
											<div class="css-i21m7n">2</div>
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
									<div class="css-amlmv6">
										<div class="css-1254q6y">답변 대기중</div>
									</div>
									<div class="css-kem115">
										<div class="css-12i5occ">
											<div class="css-1jibmi3">
												<div class="css-cp47oo">퀵정렬의 단점 궁금합니다.</div>
												<div class="css-14bssip">퀵 정렬(Quick Sort)장점기준값에 의한 분할을
													통해서 구현하는 정렬법으로써, 분할 과정에서 logN 이라는 시간이 걸리게되고 전체적으로 보게 되면
													NlogN 으로써 실행시간이 준수한 편이다.단점기준값(Pivot)에 따라서 시간복잡도가 크게 달라진다.
													Pivot이 적당하게 이상적인 값을 선택했다면 NlogN의 시간복잡도를 갖지만, 최악으로 Pivot을
													선택할 경우 이라는 시간복잡도를 갖게 된다.에서 최악으로 Pivot을 선택할 경우 O(N^2)가 맞나요</div>
											</div>
											<div class="css-sebsp7"></div>
										</div>
										<div class="css-bt1qy"></div>
									</div>
									<div class="css-99cwur">
										<div class="css-1fhge30">
											<div class="css-aw18wm">
												<span
													style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
													src="/_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F20.png&amp;w=3840&amp;q=75"
													decoding="async" data-nimg="fill"
													style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%;"
													sizes="100vw"
													srcset="/_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F20.png&amp;w=640&amp;q=75 640w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F20.png&amp;w=750&amp;q=75 750w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F20.png&amp;w=828&amp;q=75 828w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F20.png&amp;w=1080&amp;q=75 1080w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F20.png&amp;w=1200&amp;q=75 1200w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F20.png&amp;w=1920&amp;q=75 1920w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F20.png&amp;w=2048&amp;q=75 2048w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F20.png&amp;w=3840&amp;q=75 3840w"></span>
											</div>
											<div class="css-5zcuov">
												<div class="css-1sika4i">김*석</div>
												<div class="css-1tify6w">
													<svg width="2" height="2" viewBox="0 0 2 2" fill="none"
														xmlns="http://www.w3.org/2000/svg">
														<circle cx="1" cy="1" r="1" fill="#9DA7AE"></circle></svg>
												</div>
												<div data-sort="date" class="css-1ry6usa">2024년 3월 29일 오후 6:40</div>
											</div>
										</div>
										<div class="css-o01lup">
											<div class="css-ts29it">
												<div class="css-1ry6usa">댓글</div>
												<div class="css-1ry6usa">2</div>
											</div>
											<div class="css-dbc8ke">・</div>
											<div class="css-ts29it">
												<div class="css-1ry6usa">추천</div>
												<div data-sort="vote" class="css-1ry6usa">0</div>
											</div>
											<div class="css-dbc8ke">・</div>
											<div class="css-ts29it">
												<div class="css-1ry6usa">조회수</div>
												<div class="css-1ry6usa">31</div>
											</div>
										</div>
										<div class="css-1vkj2s1">
											<div class="css-1ry6usa">조회수</div>
											<div class="css-1ry6usa">31</div>
										</div>
									</div>
									<div class="css-z2xt5y"></div>
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
											<div class="css-i21m7n">2</div>
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
									<div class="css-amlmv6">
										<div class="css-1254q6y">답변 대기중</div>
									</div>
									<div class="css-kem115">
										<div class="css-12i5occ">
											<div class="css-1jibmi3">
												<div class="css-cp47oo">수강 연장</div>
												<div class="css-14bssip">안녕하세요현재 [왕초보]코딩이 처움이어도 쉽게 배우는
													웹개발 AtoZ 외 가의를 듣고 있습니다 개인적인 사정과 왕초보다 보니 모든게 서툴러 수강시간을 연장
													부탁드림니다약 2주간만 연장 부탁드림니다 전번 010-3688-6048</div>
											</div>
											<div class="css-sebsp7"></div>
										</div>
										<div class="css-bt1qy"></div>
									</div>
									<div class="css-99cwur">
										<div class="css-1fhge30">
											<div class="css-aw18wm">
												<span
													style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
													src="/_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F6.png&amp;w=3840&amp;q=75"
													decoding="async" data-nimg="fill"
													style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%;"
													sizes="100vw"
													srcset="/_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F6.png&amp;w=640&amp;q=75 640w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F6.png&amp;w=750&amp;q=75 750w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F6.png&amp;w=828&amp;q=75 828w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F6.png&amp;w=1080&amp;q=75 1080w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F6.png&amp;w=1200&amp;q=75 1200w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F6.png&amp;w=1920&amp;q=75 1920w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F6.png&amp;w=2048&amp;q=75 2048w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F6.png&amp;w=3840&amp;q=75 3840w"></span>
											</div>
											<div class="css-5zcuov">
												<div class="css-1sika4i">한*철</div>
												<div class="css-1tify6w">
													<svg width="2" height="2" viewBox="0 0 2 2" fill="none"
														xmlns="http://www.w3.org/2000/svg">
														<circle cx="1" cy="1" r="1" fill="#9DA7AE"></circle></svg>
												</div>
												<div data-sort="date" class="css-1ry6usa">2024년 3월 27일 오후 12:50</div>
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
												<div data-sort="vote"  class="css-1ry6usa">0</div>
											</div>
											<div class="css-dbc8ke">・</div>
											<div class="css-ts29it">
												<div class="css-1ry6usa">조회수</div>
												<div class="css-1ry6usa">35</div>
											</div>
										</div>
										<div class="css-1vkj2s1">
											<div class="css-1ry6usa">조회수</div>
											<div class="css-1ry6usa">35</div>
										</div>
									</div>
									<div class="css-z2xt5y"></div>
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
									<div class="css-amlmv6">
										<div class="css-1254q6y">답변 대기중</div>
									</div>
									<div class="css-kem115">
										<div class="css-12i5occ">
											<div class="css-1jibmi3">
												<div class="css-cp47oo">100% 수강 2일밖에 안남았는데 빠른 숙제검사 가능?
												</div>
												<div class="css-14bssip">2일남았는데 빠른 숙제검사 부탁요 ㅠ 100%수강하고
													싶어요</div>
											</div>
											<div class="css-sebsp7"></div>
										</div>
										<div class="css-bt1qy"></div>
									</div>
									<div class="css-99cwur">
										<div class="css-1fhge30">
											<div class="css-aw18wm">
												<span
													style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
													src="/_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F34.png&amp;w=3840&amp;q=75"
													decoding="async" data-nimg="fill"
													style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%;"
													sizes="100vw"
													srcset="/_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F34.png&amp;w=640&amp;q=75 640w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F34.png&amp;w=750&amp;q=75 750w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F34.png&amp;w=828&amp;q=75 828w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F34.png&amp;w=1080&amp;q=75 1080w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F34.png&amp;w=1200&amp;q=75 1200w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F34.png&amp;w=1920&amp;q=75 1920w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F34.png&amp;w=2048&amp;q=75 2048w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F34.png&amp;w=3840&amp;q=75 3840w"></span>
											</div>
											<div class="css-5zcuov">
												<div class="css-1sika4i">송*철</div>
												<div class="css-1tify6w">
													<svg width="2" height="2" viewBox="0 0 2 2" fill="none"
														xmlns="http://www.w3.org/2000/svg">
														<circle cx="1" cy="1" r="1" fill="#9DA7AE"></circle></svg>
												</div>
												<div data-sort="date" class="css-1ry6usa">2024년 3월 23일 오후 11:04</div>
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
												<div  data-sort="vote"  class="css-1ry6usa">2</div>
											</div>
											<div class="css-dbc8ke">・</div>
											<div class="css-ts29it">
												<div class="css-1ry6usa">조회수</div>
												<div class="css-1ry6usa">48</div>
											</div>
										</div>
										<div class="css-1vkj2s1">
											<div class="css-1ry6usa">조회수</div>
											<div class="css-1ry6usa">48</div>
										</div>
									</div>
									<div class="css-z2xt5y"></div>
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
									<div class="css-amlmv6">
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
											1일 만에 튜터 답변 완료
										</div>
									</div>
									<div class="css-kem115">
										<div class="css-1473tav">
											<div class="css-1jibmi3">
												<div class="css-cp47oo">파이썬으로 웹 크롤링을 했는데 터미널에 데이터가
													안떠요ㅠ</div>
												<div class="css-14bssip">실행 시켜도 해당 url에서 html이 안불러와져요ㅠ</div>
											</div>
											<div class="css-sebsp7"></div>
										</div>
										<div class="css-bt1qy"></div>
										<img
											src="https://media-sparta.s3.ap-northeast-2.amazonaws.com/media/tempfiles/community/21869250-ddcf-4be5-827b-85d4c97e2826MzUyMTc5LjE1ODE0MTU4ODczMTcxMTE4NjMwMDA5Mw=.png"
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
												<div class="css-1sika4i">김*식</div>
												<div class="css-1tify6w">
													<svg width="2" height="2" viewBox="0 0 2 2" fill="none"
														xmlns="http://www.w3.org/2000/svg">
														<circle cx="1" cy="1" r="1" fill="#9DA7AE"></circle></svg>
												</div>
												<div data-sort="date" class="css-1ry6usa">2024년 3월 23일 오후 6:32</div>
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
												<div data-sort="vote"  class="css-1ry6usa">6</div>
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
									<div class="css-z2xt5y"></div>
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
									<div class="css-amlmv6">
										<div class="css-1254q6y">답변 대기중</div>
									</div>
									<div class="css-kem115">
										<div class="css-12i5occ">
											<div class="css-1jibmi3">
												<div class="css-cp47oo">개발일지작성</div>
												<div class="css-14bssip">처음엔 진도 나가느라 개발일지 생각을 미처 못 했는데
													강의가 종료된 후 복습하면서 개발일지를 써도 가능한가요?</div>
											</div>
											<div class="css-sebsp7"></div>
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
												<div class="css-1sika4i">강*연</div>
												<div class="css-1tify6w">
													<svg width="2" height="2" viewBox="0 0 2 2" fill="none"
														xmlns="http://www.w3.org/2000/svg">
														<circle cx="1" cy="1" r="1" fill="#9DA7AE"></circle></svg>
												</div>
												<div data-sort="date" class="css-1ry6usa">2024년 3월 18일 오후 1:17</div>
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
												<div data-sort="vote"  class="css-1ry6usa">3</div>
											</div>
											<div class="css-dbc8ke">・</div>
											<div class="css-ts29it">
												<div class="css-1ry6usa">조회수</div>
												<div class="css-1ry6usa">42</div>
											</div>
										</div>
										<div class="css-1vkj2s1">
											<div class="css-1ry6usa">조회수</div>
											<div class="css-1ry6usa">42</div>
										</div>
									</div>
									<div class="css-z2xt5y"></div>
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
											<div class="css-i21m7n">1</div>
										</div>
									</div>
								</div>
							</div>
							<div class="css-k59gj9">
								<div class="css-aw1sgr">
									<div class="css-amlmv6">
										<div class="css-1254q6y">답변 대기중</div>
									</div>
									<div class="css-kem115">
										<div class="css-12i5occ">
											<div class="css-1jibmi3">
												<div class="css-cp47oo">강의 완주 완료!</div>
												<div class="css-14bssip">유익한 강의 감사합니다!ㅎㅎ</div>
											</div>
											<div class="css-sebsp7"></div>
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
												<div class="css-1sika4i">이*솔</div>
												<div class="css-1tify6w">
													<svg width="2" height="2" viewBox="0 0 2 2" fill="none"
														xmlns="http://www.w3.org/2000/svg">
														<circle cx="1" cy="1" r="1" fill="#9DA7AE"></circle></svg>
												</div>
												<div data-sort="date" class="css-1ry6usa">2024년 3월 17일 오후 5:22</div>
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
												<div data-sort="vote"  class="css-1ry6usa">7</div>
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
									<div class="css-z2xt5y"></div>
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
									<div class="css-amlmv6">
										<div class="css-1254q6y">답변 대기중</div>
									</div>
									<div class="css-kem115">
										<div class="css-1473tav">
											<div class="css-1jibmi3">
												<div class="css-cp47oo">Unity로 메타버스 3D 게임 만들기 4주차 HW.
													나만의 스테이지 제작</div>
												<div class="css-14bssip">있는 에셋을 열심히 활용해서 스테이지 구성해
													보았습니다. ^^ 이걸 배운 내용을 복습하며 게임 구현까지 도전해 보겠습니다 ㅎㅎㅎ 화이팅!!</div>
											</div>
											<div class="css-sebsp7"></div>
										</div>
										<div class="css-bt1qy"></div>
										<img
											src="https://media-sparta.s3.ap-northeast-2.amazonaws.com/media/tempfiles/community/12e74706-8ba6-4abb-ad1c-66da7f050277스크린샷 2024-03-17 132925.png"
											class="css-17s6wd5">
									</div>
									<div class="css-99cwur">
										<div class="css-1fhge30">
											<div class="css-aw18wm">
												<span
													style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
													src="/_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F20.png&amp;w=3840&amp;q=75"
													decoding="async" data-nimg="fill"
													style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%;"
													sizes="100vw"
													srcset="/_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F20.png&amp;w=640&amp;q=75 640w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F20.png&amp;w=750&amp;q=75 750w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F20.png&amp;w=828&amp;q=75 828w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F20.png&amp;w=1080&amp;q=75 1080w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F20.png&amp;w=1200&amp;q=75 1200w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F20.png&amp;w=1920&amp;q=75 1920w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F20.png&amp;w=2048&amp;q=75 2048w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fprofile%2F20.png&amp;w=3840&amp;q=75 3840w"></span>
											</div>
											<div class="css-5zcuov">
												<div class="css-1sika4i">윤*화</div>
												<div class="css-1tify6w">
													<svg width="2" height="2" viewBox="0 0 2 2" fill="none"
														xmlns="http://www.w3.org/2000/svg">
														<circle cx="1" cy="1" r="1" fill="#9DA7AE"></circle></svg>
												</div>
												<div data-sort="date" class="css-1ry6usa">2024년 3월 17일 오후 1:33</div>
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
												<div data-sort="vote"  class="css-1ry6usa">12</div>
											</div>
											<div class="css-dbc8ke">・</div>
											<div class="css-ts29it">
												<div class="css-1ry6usa">조회수</div>
												<div class="css-1ry6usa">45</div>
											</div>
										</div>
										<div class="css-1vkj2s1">
											<div class="css-1ry6usa">조회수</div>
											<div class="css-1ry6usa">45</div>
										</div>
									</div>
									<div class="css-z2xt5y"></div>
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
									<div class="css-amlmv6">
										<div class="css-1254q6y">답변 대기중</div>
									</div>
									<div class="css-kem115">
										<div class="css-12i5occ">
											<div class="css-1jibmi3">
												<div class="css-cp47oo">숙제 확인 부탁 드립니다.</div>
												<div class="css-14bssip">숙제 올렸는데 확인 부탁 드립니다.</div>
											</div>
											<div class="css-sebsp7"></div>
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
												<div class="css-1sika4i">강*연</div>
												<div class="css-1tify6w">
													<svg width="2" height="2" viewBox="0 0 2 2" fill="none"
														xmlns="http://www.w3.org/2000/svg">
														<circle cx="1" cy="1" r="1" fill="#9DA7AE"></circle></svg>
												</div>
												<div data-sort="date" class="css-1ry6usa">2024년 3월 17일 오전 1:01</div>
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
												<div data-sort="vote"  class="css-1ry6usa">13</div>
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
									<div class="css-z2xt5y"></div>
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
