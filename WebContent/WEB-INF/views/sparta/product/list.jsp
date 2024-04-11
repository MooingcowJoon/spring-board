<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/sparta/common/header.jsp"%>
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
								<div class="product-list-item" data-pno="1" data-sales-count="250" data-price="150000" data-is-free="Y" data-create-date="20240404" ><div class="css-1fgk266"><img src="https://static.spartacodingclub.kr/TeamSparta-Inc/scc-frontend/assets/images/catalog/cards/v2/dev_turnover.png" class="css-19wdngt"></div><div class="css-1s0hhm2"><div class="css-1blrgae"><b class="css-1gvvhuc">2024년 웹 개발자 이직의 모든 것</b><p class="css-nc8pqs">국내 빅테크 3사를 거친 시니어로서, 뽑히는 노하우를 알려드려요.</p></div><div class="css-1nwej3g"><div class="css-7q2n07"><p class="css-g5r6vh">무료</p></div></div></div></div>
								<div class="product-list-item" data-pno="2"  data-sales-count="300"  data-price="150000" data-is-free="Y" data-create-date="20240303" ><div class="css-1fgk266"><img src="https://static.spartacodingclub.kr/TeamSparta-Inc/scc-frontend/assets/images/catalog/cards/v2/dev_strategy.png" class="css-19wdngt"></div><div class="css-1s0hhm2"><div class="css-1blrgae"><b class="css-1gvvhuc">2024년 실패 없는 개발자 취업 전략</b><p class="css-nc8pqs">6개월만에 N사 개발자로 취업 시킨 전문가가 말하는 최신 취업 전략</p></div><div class="css-1nwej3g"><div class="css-7q2n07"><p class="css-g5r6vh">무료</p></div></div></div></div>
								<div class="product-list-item" data-pno="3"  data-sales-count="150"  data-price="300000" data-is-free="N" data-create-date="20240202" ><div class="css-1fgk266"><img src="https://static.spartacodingclub.kr/TeamSparta-Inc/scc-frontend/assets/images/catalog/cards/v2/uxui_ai.png" class="css-19wdngt"></div><div class="css-1s0hhm2"><div class="css-1blrgae"><b class="css-1gvvhuc">디자이너를 위한 인공지능 A to Z</b><p class="css-nc8pqs">AI로 쉽고 빠르게 원하는 디자인을 만들어보세요!</p></div><div class="css-1nwej3g"><div class="css-7q2n07"><p class="css-1snc3x8">300,000원</p></div></div></div></div>
								<div class="product-list-item" data-pno="4"  data-sales-count="100"  data-price="450000" data-is-free="N" data-create-date="20231212"> <div class="css-1fgk266"><img src="https://static.spartacodingclub.kr/TeamSparta-Inc/scc-frontend/assets/images/catalog/cards/v2/cicd.png" class="css-19wdngt"></div><div class="css-1s0hhm2"><div class="css-1blrgae"><b class="css-1gvvhuc">Docker 기반 CI/CD 파이프라인 구축하기</b><p class="css-nc8pqs">개발, 배포 파이프라인에 대한 경험이 없는 분들을 위한 강의입니다.</p></div><div class="css-1nwej3g"><div class="css-7q2n07"><p class="css-zmgixm">10%</p><p class="css-1snc3x8">450,000원</p></div></div></div></div>
								<div class="product-list-item" data-pno="5"  data-sales-count="50"  data-price="450000" data-is-free="N" data-create-date="20231111"><div class="css-1fgk266"><img src="https://static.spartacodingclub.kr/TeamSparta-Inc/scc-frontend/assets/images/catalog/cards/v2/cs.png" class="css-19wdngt"></div><div class="css-1s0hhm2"><div class="css-1blrgae"><b class="css-1gvvhuc">실무에 바로 쓰이는 컴퓨터 공학 기초</b><p class="css-nc8pqs">비전공자를 위한 컴퓨터 공학 기초 강의입니다.</p></div><div class="css-1nwej3g"><div class="css-7q2n07"><p class="css-zmgixm">10%</p><p class="css-1snc3x8">450,000원</p></div></div></div></div>
								<div class="product-list-item" data-pno="6"  data-sales-count="200"  data-price="300000" data-is-free="N" data-create-date="20231010"><div class="css-1fgk266"><img src="https://static.spartacodingclub.kr/TeamSparta-Inc/scc-frontend/assets/images/catalog/cards/v2/aws_cloud.png" class="css-19wdngt"></div><div class="css-1s0hhm2"><div class="css-1blrgae"><b class="css-1gvvhuc">클라우드가 처음이어도 쉽게 배우는 AWS A to Z</b><p class="css-nc8pqs">AWS 기초를 중심으로 Solution Architect에 대해 배웁니다</p></div><div class="css-1nwej3g"><div class="css-7q2n07"><p class="css-1snc3x8">300,000원</p></div></div></div></div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="css-twhhv7"></div>
		</div>
	</div>
</div>
<%@include file="/WEB-INF/views/sparta/common/footer.jsp"%>
