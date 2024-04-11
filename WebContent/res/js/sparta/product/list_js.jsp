<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script type="text/javascript">
$j(()=>{
	
	$j('.catalog-product-list').on('click','.product-list-item',e=>location.href="/sparta/product/"+$j(e.target).closest('.product-list-item').data('pno')+'/view.do')
	
	const sortCatalogProducts = $filter=>{
		const orderBy = $filter.data('order-by')
		const isDesc = orderBy === 'isFree' ? true : $filter.data('order-direction') === 'desc'
		const $pList = $j('.catalog-product-list:first')
		const sortedElArr = Array.from($pList.children().get()).sort((a,b)=>{
			a = $j(a)
			b = $j(b)
			let comp
			let priceComp = a.data('price')-b.data('price')
			let pnoComp = a.data('pno')-b.data('pno')
			if(isDesc){
				const tmp = a.data(orderBy)
				a= b.data(orderBy)
				b= tmp
			}
			if(orderBy === 'isFree'){
				comp = a.localeCompare(b)	
			}else{
				comp= a-b
			}
			if (comp === 0){
				comp = priceComp !== 0 ? priceComp : pnoComp
			}
			
			return comp
		})
		sortedElArr.forEach(el => {
			$pList.append(el)
	    });
	}
	sortCatalogProducts($j('.catalog-filter-div').first())
	$j('#main').on('click','#searchCloseBtn',e=>$j('#categoryTab').children(':first').remove())
		.on('click','.catalog-filter-div',function(e){
			const $selectedFilter = $j(this).closest('.catalog-filter-div')
			if($selectedFilter.hasClass('selected')){
				return
			}
			const selectedFitlerIndex = $selectedFilter.index()
			$j('.catalog-filter-div').each((i,filter)=>{
				const isSelected = i === selectedFitlerIndex ? true : false
				const $f = $j(filter)
				if(isSelected){
					$f.addClass('selected')
					$f.find('.catalog-filter-p').addClass('selected')
					$f.find('.catalog-filter-icon').addClass('selected')
				}else{
					$f.removeClass('selected')
					$f.find('.catalog-filter-p').removeClass('selected')
					$f.find('.catalog-filter-icon').removeClass('selected')
				}
			})
			sortCatalogProducts($selectedFilter)
		})
	
	$j('#catalogSearch').click(e=>$j('#categoryTab').prepend(`
			<div class="css-1i5imq5">
				<div class="css-1lux50g">
					<div class="css-z8j4mv">
						<div class="css-1is6fqw">
							<input placeholder="어떤 강의를 찾고 계신가요?" class="css-1ur5giy" value="">
						</div>
						<div class="css-fhfdu8">
							<span class="css-7h5x6p">인기 검색어</span>
							<div class="css-oxspne">
								<button class="css-s1iz0o">파이썬</button>
								<button class="css-s1iz0o">SQL</button>
								<button class="css-s1iz0o">ChatGPT</button>
								<button class="css-s1iz0o">데이터</button>
							</div>
						</div>
					</div>
					<button id="searchCloseBtn" class="css-2s8b32">
						<img
							src="https://static.spartacodingclub.kr/TeamSparta-Inc/scc-frontend/assets/images/catalogv2/exit.svg"
							class="css-hr47l6">닫기
					</button>
				</div>
				<div class="css-7d6p11">
					<div class="css-1lq1kcv">
						<div class="css-1cc75w2">
							<div class="css-1ml6we1">
								<div class="css-ognhcl">
									<div class="css-u66erx">가장 많이 들었어요</div>
								</div>
							</div>
							<div class="css-16zffci">
								<div class="css-1jylheg">
									<div class="css-wrxt4q">
										<svg width="40" height="40" viewBox="0 0 40 40" fill="none"
											xmlns="http://www.w3.org/2000/svg">
											<rect x="1" y="1" width="38" height="38" rx="7"
												fill="url(#paint0_linear_1368_172443)"></rect>
											<path
												d="M23.004 27.7733H19.2706V16.0933H17.4573V13.4267C18.4528 13.4267 19.5551 12.5556 19.5551 11.6133H23.004V27.7733Z"
												fill="#923315"></path>
											<rect x="1" y="1" width="38" height="38" rx="7" stroke="white"
												stroke-width="2"></rect>
											<defs>
											<linearGradient id="paint0_linear_1368_172443" x1="37" y1="36.5"
												x2="4.5" y2="3" gradientUnits="userSpaceOnUse">
											<stop stop-color="#FFFBE4"></stop>
											<stop offset="1" stop-color="#FFD600"></stop></linearGradient></defs></svg>
									</div>
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
												<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20"
													viewBox="0 0 20 20" fill="none">
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
								<div class="css-1jylheg">
									<div class="css-wrxt4q">
										<svg width="40" height="40" viewBox="0 0 40 40" fill="none"
											xmlns="http://www.w3.org/2000/svg">
											<rect x="1" y="1" width="38" height="38" rx="7"
												fill="url(#paint0_linear_1368_173076)"></rect>
											<path
												d="M20.8563 15.8444V15.1333C20.8563 14.5644 20.5719 14.1022 20.003 14.1022C19.4341 14.1022 19.1497 14.5644 19.1497 15.1333V16.4311H15.5941V15.1333C15.5941 12.6089 17.4963 11.2578 20.003 11.2578C22.5097 11.2578 24.5897 12.6089 24.5897 15.1333V15.8444C24.5897 18.0489 23.7008 19.1511 21.7985 21.1956C19.8785 23.2578 19.3274 23.6489 19.3274 24.52V24.84H24.5897V27.6844H15.4163V24.52C15.4163 23.2222 15.5408 22.2444 18.6519 19.5067C20.5541 17.8533 20.8563 16.9822 20.8563 15.8444Z"
												fill="#5F666B"></path>
											<rect x="1" y="1" width="38" height="38" rx="7" stroke="white"
												stroke-width="2"></rect>
											<defs>
											<linearGradient id="paint0_linear_1368_173076" x1="0" y1="0"
												x2="40" y2="40" gradientUnits="userSpaceOnUse">
											<stop stop-color="#C2D5E2"></stop>
											<stop offset="1" stop-color="#F3FAFF"></stop></linearGradient></defs></svg>
									</div>
									<div class="css-1fgk266">
										<img
											src="https://static.spartacodingclub.kr/TeamSparta-Inc/scc-frontend/assets/images/catalog/cards/v2/data_v2.png"
											class="css-19wdngt">
									</div>
									<div class="css-1s0hhm2">
										<div class="css-1blrgae">
											<b class="css-1gvvhuc">데이터 분석 종합반</b>
											<p class="css-nc8pqs">데이터 기반 사고는 물론, 코딩을 통한 분석 스킬까지 갖출 수
												있습니다.</p>
										</div>
										<div class="css-1nwej3g">
											<div class="css-7q2n07">
												<p class="css-zmgixm">22%</p>
												<p class="css-1snc3x8">390,000원</p>
											</div>
											<div class="css-q7g3jq">
												<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20"
													viewBox="0 0 20 20" fill="none">
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
								<div class="css-1jylheg">
									<div class="css-wrxt4q">
										<svg width="40" height="40" viewBox="0 0 40 40" fill="none"
											xmlns="http://www.w3.org/2000/svg">
											<rect x="1" y="1" width="38" height="38" rx="7"
												fill="url(#paint0_linear_1368_173144)"></rect>
											<path
												d="M19.2404 20.4844V17.64L20.4138 17.5511C20.9471 17.4978 21.5337 17.0889 21.5337 16.52V14.9556C21.5337 14.3867 21.0715 13.9244 20.5026 13.9244C19.9337 13.9244 19.4715 14.3867 19.4715 14.9556V16.2533H15.916V15.1333C15.916 12.6089 17.996 11.2578 20.5026 11.2578C23.0093 11.2578 25.0893 12.6089 25.0893 15.1333V16.3422C25.0893 17.6933 24.556 18.5289 23.7026 19.0444C24.6449 19.56 25.2671 20.4133 25.2671 21.7822V24.2533C25.2671 26.7778 23.0093 28.1289 20.5026 28.1289C17.996 28.1289 15.7382 26.7778 15.7382 24.2533V22.3156H19.4715V24.2533C19.4715 24.8222 19.9337 25.2844 20.5026 25.2844C21.0715 25.2844 21.5337 24.8222 21.5337 24.2533V21.6044C21.5337 21.0356 20.8938 20.5733 20.3249 20.5733L19.2404 20.4844Z"
												fill="#5F666B"></path>
											<rect x="1" y="1" width="38" height="38" rx="7" stroke="white"
												stroke-width="2"></rect>
											<defs>
											<linearGradient id="paint0_linear_1368_173144" x1="0" y1="0"
												x2="40" y2="40" gradientUnits="userSpaceOnUse">
											<stop stop-color="#C2D5E2"></stop>
											<stop offset="1" stop-color="#F3FAFF"></stop></linearGradient></defs></svg>
									</div>
									<div class="css-1fgk266">
										<img
											src="https://static.spartacodingclub.kr/TeamSparta-Inc/scc-frontend/assets/images/catalog/cards/v2/sql_v2.png"
											class="css-19wdngt">
									</div>
									<div class="css-1s0hhm2">
										<div class="css-1blrgae">
											<b class="css-1gvvhuc">엑셀보다 쉽고 빠른 SQL</b>
											<p class="css-nc8pqs">SQL 쿼리 한 줄로 필요한 데이터를 편하게 확인해보세요.</p>
										</div>
										<div class="css-1nwej3g">
											<div class="css-7q2n07">
												<p class="css-zmgixm">22%</p>
												<p class="css-1snc3x8">390,000원</p>
											</div>
										</div>
									</div>
								</div>
								<div class="css-1jylheg">
									<div class="css-wrxt4q">
										<svg width="40" height="40" viewBox="0 0 40 40" fill="none"
											xmlns="http://www.w3.org/2000/svg">
											<rect x="1" y="1" width="38" height="38" rx="7"
												fill="url(#paint0_linear_1368_173196)"></rect>
											<path
												d="M19.2197 11.6133H24.4286V22.5111H25.6731V25.5333H24.4286V27.7733H21.0686V25.5333H15.5042V22.5111L19.2197 11.6133ZM21.0508 22.5111V15.5244L18.8464 22.5111H21.0508Z"
												fill="#5F666B"></path>
											<rect x="1" y="1" width="38" height="38" rx="7" stroke="white"
												stroke-width="2"></rect>
											<defs>
											<linearGradient id="paint0_linear_1368_173196" x1="0" y1="0"
												x2="40" y2="40" gradientUnits="userSpaceOnUse">
											<stop stop-color="#C2D5E2"></stop>
											<stop offset="1" stop-color="#F3FAFF"></stop></linearGradient></defs></svg>
									</div>
									<div class="css-1fgk266">
										<img
											src="https://static.spartacodingclub.kr/TeamSparta-Inc/scc-frontend/assets/images/catalog/cards/v2/app.png"
											class="css-19wdngt">
									</div>
									<div class="css-1s0hhm2">
										<div class="css-1blrgae">
											<b class="css-1gvvhuc">앱개발 종합반</b>
											<p class="css-nc8pqs">내가 만든 앱을 세상에 선보이고 싶은 분들에게 추천하는 강의입니다.</p>
										</div>
										<div class="css-1nwej3g">
											<div class="css-7q2n07">
												<p class="css-zmgixm">22%</p>
												<p class="css-1snc3x8">390,000원</p>
											</div>
											<div class="css-q7g3jq">
												<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20"
													viewBox="0 0 20 20" fill="none">
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
							</div>
						</div>
						<div class="css-1cc75w2">
							<div class="css-1ml6we1">
								<div class="css-ognhcl">
									<div class="css-u66erx">인기 무료 강의</div>
								</div>
							</div>
							<div class="css-16zffci">
								<div class="css-1jylheg">
									<div class="css-wrxt4q">
										<svg width="40" height="40" viewBox="0 0 40 40" fill="none"
											xmlns="http://www.w3.org/2000/svg">
											<rect x="1" y="1" width="38" height="38" rx="7"
												fill="url(#paint0_linear_1368_172443)"></rect>
											<path
												d="M23.004 27.7733H19.2706V16.0933H17.4573V13.4267C18.4528 13.4267 19.5551 12.5556 19.5551 11.6133H23.004V27.7733Z"
												fill="#923315"></path>
											<rect x="1" y="1" width="38" height="38" rx="7" stroke="white"
												stroke-width="2"></rect>
											<defs>
											<linearGradient id="paint0_linear_1368_172443" x1="37" y1="36.5"
												x2="4.5" y2="3" gradientUnits="userSpaceOnUse">
											<stop stop-color="#FFFBE4"></stop>
											<stop offset="1" stop-color="#FFD600"></stop></linearGradient></defs></svg>
									</div>
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
								<div class="css-1jylheg">
									<div class="css-wrxt4q">
										<svg width="40" height="40" viewBox="0 0 40 40" fill="none"
											xmlns="http://www.w3.org/2000/svg">
											<rect x="1" y="1" width="38" height="38" rx="7"
												fill="url(#paint0_linear_1368_173076)"></rect>
											<path
												d="M20.8563 15.8444V15.1333C20.8563 14.5644 20.5719 14.1022 20.003 14.1022C19.4341 14.1022 19.1497 14.5644 19.1497 15.1333V16.4311H15.5941V15.1333C15.5941 12.6089 17.4963 11.2578 20.003 11.2578C22.5097 11.2578 24.5897 12.6089 24.5897 15.1333V15.8444C24.5897 18.0489 23.7008 19.1511 21.7985 21.1956C19.8785 23.2578 19.3274 23.6489 19.3274 24.52V24.84H24.5897V27.6844H15.4163V24.52C15.4163 23.2222 15.5408 22.2444 18.6519 19.5067C20.5541 17.8533 20.8563 16.9822 20.8563 15.8444Z"
												fill="#5F666B"></path>
											<rect x="1" y="1" width="38" height="38" rx="7" stroke="white"
												stroke-width="2"></rect>
											<defs>
											<linearGradient id="paint0_linear_1368_173076" x1="0" y1="0"
												x2="40" y2="40" gradientUnits="userSpaceOnUse">
											<stop stop-color="#C2D5E2"></stop>
											<stop offset="1" stop-color="#F3FAFF"></stop></linearGradient></defs></svg>
									</div>
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
								<div class="css-1jylheg">
									<div class="css-wrxt4q">
										<svg width="40" height="40" viewBox="0 0 40 40" fill="none"
											xmlns="http://www.w3.org/2000/svg">
											<rect x="1" y="1" width="38" height="38" rx="7"
												fill="url(#paint0_linear_1368_173144)"></rect>
											<path
												d="M19.2404 20.4844V17.64L20.4138 17.5511C20.9471 17.4978 21.5337 17.0889 21.5337 16.52V14.9556C21.5337 14.3867 21.0715 13.9244 20.5026 13.9244C19.9337 13.9244 19.4715 14.3867 19.4715 14.9556V16.2533H15.916V15.1333C15.916 12.6089 17.996 11.2578 20.5026 11.2578C23.0093 11.2578 25.0893 12.6089 25.0893 15.1333V16.3422C25.0893 17.6933 24.556 18.5289 23.7026 19.0444C24.6449 19.56 25.2671 20.4133 25.2671 21.7822V24.2533C25.2671 26.7778 23.0093 28.1289 20.5026 28.1289C17.996 28.1289 15.7382 26.7778 15.7382 24.2533V22.3156H19.4715V24.2533C19.4715 24.8222 19.9337 25.2844 20.5026 25.2844C21.0715 25.2844 21.5337 24.8222 21.5337 24.2533V21.6044C21.5337 21.0356 20.8938 20.5733 20.3249 20.5733L19.2404 20.4844Z"
												fill="#5F666B"></path>
											<rect x="1" y="1" width="38" height="38" rx="7" stroke="white"
												stroke-width="2"></rect>
											<defs>
											<linearGradient id="paint0_linear_1368_173144" x1="0" y1="0"
												x2="40" y2="40" gradientUnits="userSpaceOnUse">
											<stop stop-color="#C2D5E2"></stop>
											<stop offset="1" stop-color="#F3FAFF"></stop></linearGradient></defs></svg>
									</div>
									<div class="css-1fgk266">
										<img
											src="https://static.spartacodingclub.kr/TeamSparta-Inc/scc-frontend/assets/images/catalog/cards/v2/photos.png"
											class="css-19wdngt">
									</div>
									<div class="css-1s0hhm2">
										<div class="css-1blrgae">
											<b class="css-1gvvhuc">인생사진 쏙쏙 코딩네컷</b>
											<p class="css-nc8pqs">1시간만에 코딩을 배워 네컷 사진을 만들어 보세요.</p>
										</div>
										<div class="css-1nwej3g">
											<div class="css-7q2n07">
												<p class="css-g5r6vh">무료</p>
											</div>
										</div>
									</div>
								</div>
								<div class="css-1jylheg">
									<div class="css-wrxt4q">
										<svg width="40" height="40" viewBox="0 0 40 40" fill="none"
											xmlns="http://www.w3.org/2000/svg">
											<rect x="1" y="1" width="38" height="38" rx="7"
												fill="url(#paint0_linear_1368_173196)"></rect>
											<path
												d="M19.2197 11.6133H24.4286V22.5111H25.6731V25.5333H24.4286V27.7733H21.0686V25.5333H15.5042V22.5111L19.2197 11.6133ZM21.0508 22.5111V15.5244L18.8464 22.5111H21.0508Z"
												fill="#5F666B"></path>
											<rect x="1" y="1" width="38" height="38" rx="7" stroke="white"
												stroke-width="2"></rect>
											<defs>
											<linearGradient id="paint0_linear_1368_173196" x1="0" y1="0"
												x2="40" y2="40" gradientUnits="userSpaceOnUse">
											<stop stop-color="#C2D5E2"></stop>
											<stop offset="1" stop-color="#F3FAFF"></stop></linearGradient></defs></svg>
									</div>
									<div class="css-1fgk266">
										<img
											src="https://static.spartacodingclub.kr/TeamSparta-Inc/scc-frontend/assets/images/catalog/cards/v2/chatgpt.png"
											class="css-19wdngt">
									</div>
									<div class="css-1s0hhm2">
										<div class="css-1blrgae">
											<b class="css-1gvvhuc">chatGPT로 10분 만에 웹사이트 만들기</b>
											<p class="css-nc8pqs">chatGPT를 나만의 코딩 비서로 활용해 웹사이트를 만들어보세요.</p>
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
			`))
			

})
</script>