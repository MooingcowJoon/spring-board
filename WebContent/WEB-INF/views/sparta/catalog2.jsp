<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="common/header.jsp"%>
<%@include file="/res/js/sparta/product/list_js.jsp"%>
<div id="main">
	<div class="css-1hnxdb7">
		<div id="categoryTab" class="css-p22c6q">
			<div class="css-f5pe8b">
				<div class="css-ykn66i">
					<div class="css-ar7myg">
						<button class="css-oymq2f">
							<p class="css-5vlt6b">전체</p>
						</button>
						<button class="css-161buz">
							<p class="css-1tx1in">국비지원</p>
						</button>
						<button class="css-161buz">
							<p class="css-3vjkg8">신규강의</p>
						</button>
						<button class="css-161buz">
							<p class="css-1tx1in">개발</p>
						</button>
						<button class="css-161buz">
							<p class="css-1tx1in">AI ∙ GPT</p>
						</button>
						<button class="css-161buz">
							<p class="css-1tx1in">데이터</p>
						</button>
						<button class="css-161buz">
							<p class="css-1tx1in">취업 ∙ 자격증</p>
						</button>
						<button class="css-161buz">
							<p class="css-1tx1in">디자인</p>
						</button>
						<div class="css-zz3q7t"></div>
					</div>
					<button id="catalogSearch" class="css-h78kdi">
						<svg width="16" height="16" viewBox="0 0 16 16" fill="none"
							xmlns="http://www.w3.org/2000/svg">
							<circle cx="6.66768" cy="6.66768" r="4.58333" stroke="#3A3E41"
								stroke-width="1.5"></circle>
							<path
								d="M10.5303 9.46967C10.2374 9.17678 9.76256 9.17678 9.46967 9.46967C9.17678 9.76256 9.17678 10.2374 9.46967 10.5303L10.5303 9.46967ZM13.4697 14.5303C13.7626 14.8232 14.2374 14.8232 14.5303 14.5303C14.8232 14.2374 14.8232 13.7626 14.5303 13.4697L13.4697 14.5303ZM9.46967 10.5303L13.4697 14.5303L14.5303 13.4697L10.5303 9.46967L9.46967 10.5303Z"
								fill="#3A3E41"></path></svg>
						<p class="css-jcyaqi">검색</p>
					</button>
				</div>
				<div class="css-168vr30">
					<div class="css-1vwgojl">
						<div class="css-1cdtqpu">
							<div class="css-1nc3w3p">
								<div class="css-1xawlld">
									<div data-order-by="createDate" data-order-direction="desc" class="catalog-filter-div">
										<div class="css-1ismo2">
											<div class="catalog-filter-icon selected"></div>
										</div>
										<p class="catalog-filter-p selected">최신순</p>
									</div>
									<div data-order-by="salesCount" data-order-direction="desc" class="catalog-filter-div">
										<div class="css-1ismo2">
											<div class="catalog-filter-icon"></div>
										</div>
										<p class="catalog-filter-p">구매순</p>
									</div>
									<div data-order-by="isFree" data-order-direction="desc"  class="catalog-filter-div">
										<div class="css-1ismo2">
											<div class="catalog-filter-icon"></div>
										</div>
										<p class="catalog-filter-p">무료</p>
									</div>
									<div data-order-by="price" data-order-direction="desc" class="catalog-filter-div">
										<div class="css-1ismo2">
											<div class="catalog-filter-icon"></div>
										</div>
										<p class="catalog-filter-p">국비지원</p>
									</div>
								</div>
							</div>
						</div>  
						<div class="css-4xk843">
							<div class="catalog-product-list">
							<!-- 강의상품 요소 리스트 시작 -->
								<div data-pno="1" data-sales-count="300" data-price="50000" data-is-free="Y" data-create-date="20230205" class="css-1jylheg">
									<div class="css-1fgk266">
										<img
											src="https://static.spartacodingclub.kr/TeamSparta-Inc/scc-frontend/assets/images/catalog/cards/v2/coding101.png"
											class="css-19wdngt">
									</div>
									<div class="css-1s0hhm2">
										<div class="css-1blrgae">
											<b class="css-1gvvhuc">직장인 필수 코딩 용어 해설</b>
											<p class="css-nc8pqs">일하면서 꼭 필요한 코딩용어를 1시간만에 끝낼 수 있습니다.</p>
										</div>
										<div class="css-1nwej3g">
											<div class="css-7q2n07">
												<p class="css-g5r6vh">무료</p>
											</div>
										</div>
									</div>
								</div>
								<div data-pno="2"  data-sales-count="250"  data-price="30000" data-is-free="Y" data-create-date="20230207"  class="css-1jylheg">
									<div class="css-1fgk266">
										<img
											src="https://static.spartacodingclub.kr/TeamSparta-Inc/scc-frontend/assets/images/catalog/cards/v2/chatgpt.png"
											class="css-19wdngt">
									</div>
									<div class="css-1s0hhm2">
										<div class="css-1blrgae">
											<b class="css-1gvvhuc">chatGPT로 10분 만에 웹사이트 만들기</b>
											<p class="css-nc8pqs">chatGPT를 나만의 코딩 비서로 활용해 웹사이트를
												만들어보세요.</p>
										</div>
										<div class="css-1nwej3g">
											<div class="css-7q2n07">
												<p class="css-g5r6vh">무료</p>
											</div>
										</div>
									</div>
								</div>
								<div data-pno="3" data-sales-count="200"  data-price="9900" data-is-free="Y" data-create-date="20230305"  class="css-1jylheg">
									<div class="css-1fgk266">
										<img
											src="https://static.spartacodingclub.kr/TeamSparta-Inc/scc-frontend/assets/images/catalog/cards/v2/developer101.png"
											class="css-19wdngt">
									</div>
									<div class="css-1s0hhm2">
										<div class="css-1blrgae">
											<b class="css-1gvvhuc">개발자 취업 준비의 모든 것</b>
											<p class="css-nc8pqs">개발자 취업 시장을 살펴보고, 취업 로드맵을 그립니다.</p>
										</div>
										<div class="css-1nwej3g">
											<div class="css-7q2n07">
												<p class="css-g5r6vh">무료</p>
											</div>
										</div>
									</div>
								</div>
								<div data-pno="4" data-sales-count="150"  data-price="390000" data-is-free="N" data-create-date="20240302"  class="css-1jylheg">
									<div class="css-1fgk266">
										<img
											src="https://static.spartacodingclub.kr/TeamSparta-Inc/scc-frontend/assets/images/catalog/cards/v2/web_basic.png"
											class="css-19wdngt">
									</div>
									<div class="css-1s0hhm2">
										<div class="css-1blrgae">
											<b class="css-1gvvhuc">[왕초보] 웹개발 종합반</b>
											<p class="css-nc8pqs">약 4만 명이 인증한 시그니처 강의로 쉽고 재미있게 웹개발에
												입문하세요.</p>
										</div>
										<div class="css-1nwej3g">
											<div class="css-7q2n07">
												<p class="css-zmgixm">22%</p>
												<p class="css-1snc3x8">390,000원</p>
											</div>
											<div class="css-q7g3jq">
												<svg xmlns="http://www.w3.org/2000/svg" width="20"
													height="20" viewBox="0 0 20 20" fill="none">
													<path
														d="M15.3029 10.8348C14.681 9.3395 13.1604 7.86461 11.0988 6.95173C9.03709 6.03885 6.92273 5.90507 5.39787 6.44897L4.37663 5.99678L3.42681 8.1419C2.489 10.2599 4.40319 13.1606 7.70267 14.6216C11.0022 16.0826 14.4365 15.5501 15.3743 13.4321L16.3242 11.287L15.3029 10.8348Z"
														fill="#FF9040"></path>
													<path
														d="M8.65218 12.4764C11.9514 13.9372 15.3861 13.4047 16.3239 11.2869C17.2616 9.1691 15.3472 6.26804 12.048 4.8072C8.74876 3.34636 5.31404 3.87892 4.37632 5.99671C3.43859 8.1145 5.35296 11.0156 8.65218 12.4764Z"
														fill="#FFC226"></path></svg>
												<p class="css-csh694">국비지원 시 49,000원</p>
											</div>
										</div>
									</div>
								</div>
								<div data-pno="5" data-sales-count="100"  data-price="89000" data-is-free="N" data-create-date="20230505"  class="css-1jylheg">
									<div class="css-1fgk266">
										<img
											src="https://static.spartacodingclub.kr/TeamSparta-Inc/scc-frontend/assets/images/catalog/cards/v2/free_myprofile.png"
											class="css-19wdngt">
									</div>
									<div class="css-1s0hhm2">
										<div class="css-1blrgae">
											<b class="css-1gvvhuc">나만의 프로필 링크 만들기</b>
											<p class="css-nc8pqs">포트폴리오와 이력서를 담은 페이지를 직접 만들어보세요.</p>
										</div>
										<div class="css-1nwej3g">
											<div class="css-7q2n07">
												<p class="css-1snc3x8">89,000원</p>
											</div>
										</div>
									</div>
								</div>
								<div data-pno="6" data-sales-count="50"  data-price="9900" data-is-free="Y" data-create-date="20230605"  class="css-1jylheg">
									<div class="css-1fgk266">
										<img
											src="https://static.spartacodingclub.kr/TeamSparta-Inc/scc-frontend/assets/images/catalog/cards/v2/ai_report_automation.png"
											class="css-19wdngt">
									</div>
									<div class="css-1s0hhm2">
										<div class="css-1blrgae">
											<b class="css-1gvvhuc">AI로 10분만에 보고서 만들기</b>
											<p class="css-nc8pqs">아이디어 한 줄과 AI로 기획서부터 PPT까지 10분만에
												만들어보세요!</p>
										</div>
										<div class="css-1nwej3g">
											<div class="css-7q2n07">
												<p class="css-g5r6vh">무료</p>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="css-twhhv7"></div>
		</div>
	</div>
</div>
<%@include file="common/footer.jsp"%>
