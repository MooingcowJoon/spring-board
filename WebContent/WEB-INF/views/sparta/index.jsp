<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="common/indexheader.jsp"%>
<style>
/*! CSS Used from: https://spartacodingclub.kr/_next/static/css/a68d89039227ee7e.css */
h1{-webkit-margin-start:unset;margin-inline-start:unset;-webkit-margin-end:unset;margin-inline-end:unset;-webkit-margin-before:unset;margin-block-start:unset;-webkit-margin-after:unset;margin-block-end:unset;}
*{line-height:1.5;box-sizing:border-box;letter-spacing:normal;}
/*! CSS Used from: Embedded */
*{margin:0;line-height:1.5;}
h1{font-size:2.4rem;}
@media (min-width: 1024px){
h1{font-size:4rem;}
}
.css-16wypob{font-family:Pretendard;font-style:normal;font-weight:700;font-size:20px;line-height:28px;color:rgb(20, 22, 23);}
@media (min-width: 820px){
.css-16wypob{font-family:Pretendard;font-style:normal;font-weight:700;font-size:40px;line-height:56px;color:rgb(20, 22, 23);}
}
/*! CSS Used from: https://spartacodingclub.kr/_next/static/css/a68d89039227ee7e.css */
h1{-webkit-margin-start:unset;margin-inline-start:unset;-webkit-margin-end:unset;margin-inline-end:unset;-webkit-margin-before:unset;margin-block-start:unset;-webkit-margin-after:unset;margin-block-end:unset;}
*{line-height:1.5;box-sizing:border-box;letter-spacing:normal;}
/*! CSS Used from: Embedded */
*{margin:0;line-height:1.5;}
h1{font-size:2.4rem;}
@media (min-width: 1024px){
h1{font-size:4rem;}
}
/*! CSS Used from: Embedded */
.css-16wypob{font-family:Pretendard;font-style:normal;font-weight:700;font-size:20px;line-height:28px;color:rgb(20, 22, 23);}
@media (min-width: 820px){
.css-16wypob{font-family:Pretendard;font-style:normal;font-weight:700;font-size:40px;line-height:56px;color:rgb(20, 22, 23);}
}
.css-1cvbm22{display:flex;flex-direction:column;position:relative;height:56px;transform:translateY(-200%);transition:transform 0.3s ease-in-out 0s;}
/*! CSS Used fontfaces */
.css-1aokzse{display:flex;flex-direction:column;position:relative;height:56px;transform:translateY(0%);transition:transform 0.3s ease-in-out 0s;}

</style>
<script>
$j(()=>{
	
setInterval(function(){
	const  el = $j(titleBanner)
	const index = parseInt(el.data('index'))
	el.data('index',(index+1)%el.children().length)
	el.css('transform','translateY(-'+(index*100)+'%)')
},2000)
})

</script>
<div id="main">
	<div class="css-16z0wya">
		<div class="css-ppdf1p">
			<section class="css-p22c6q">
				<div class="css-1bj2jr5">
					<div class="css-130d6tq"></div>
				</div>
				<div class="css-gme0ob">
					<div class="css-1mzwlld">
						<div class="css-1slt03f">
							<div class="css-1bku0gi">
								<div class="css-1dr1vfe">
									<div height="56" class="css-tp2tac" data-index="0">
										<div id="titleBanner" data-index="0" height="56" class="css-1cvbm22">
											<h1 class="css-16wypob">반복되는 업무가 지겨운 지원이도</h1>
											<h1 class="css-16wypob">내 아이디어로 돈 벌고 싶은 정현이도</h1>
											<h1 class="css-16wypob">개발자 없이 앱 만들고 싶은 소영이도</h1>
											<h1 class="css-16wypob">ChatGPT 잘 쓰고 싶은 동현이도</h1>
											<h1 class="css-16wypob">대한민국을 코딩의 땅으로</h1>
										</div>
									</div>
								</div>
								<h1 class="css-mm6ge2">
									스파르타코딩클럽
									<div class="css-11y22ec">
										<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
											viewBox="0 0 16 16" fill="none">
											<g clip-path="url(#clip0_802_44610)">
											<path
												d="M11.7523 0.299927L1.78934 2.48414L0 8.34601L4.04774 13.0069L7.113 12.3342L8.0012 15.6999L12.0448 11.3686L14.0107 10.825L15.8 4.96083L11.7523 0.299927Z"
												fill="#E8344E"></path>
											<path
												d="M11.5324 5.09998V5.64916H12.0564V6.19835H12.5805V6.74754H13.1041V7.29673H12.5805V7.84591H12.0564V8.3951H11.5329V8.94429H10.4852V8.3951H11.0088V7.84591H11.5324V7.29673H12.0564V6.74754H11.5329V6.19789H11.0093V5.6487H10.4857V5.09998H11.5324Z"
												fill="white"></path>
											<path
												d="M9.81596 5.19702H8.90234V5.72718H8.38615V6.26615H7.89769V6.79584H7.3815V7.33528H6.89257V7.86497H6.37638V8.40441H5.88745V8.94338H6.80153V8.40441H7.29V7.87425H7.80619V7.33528H8.29465V6.80559H8.81131V6.26615H9.29977V5.73646H9.81596V5.19702Z"
												fill="white"></path>
											<path
												d="M4.17166 8.99207V8.44288H3.64761V7.89369H3.12356V7.3445H2.59998V6.79532H3.12356V6.24613H3.64761V5.69694H4.1712V5.14868H5.21883V5.69787H4.69524V6.24706H4.17166V6.79624H3.64761V7.34543H4.1712V7.89462H4.69478V8.44381H5.21837V8.99299H4.17166V8.99207Z"
												fill="white"></path></g>
											<defs>
											<clipPath id="clip0_802_44610">
											<rect width="15.8" height="15.8" fill="white"
												transform="translate(0 0.0999756)"></rect></clipPath></defs></svg>
									</div>
								</h1>
							</div>
						</div>
						<div class="css-qb9asz">
							<div class="css-ngbrg5">
								<img
									src="https://static.spartacodingclub.kr/TeamSparta-Inc/scc-frontend/assets/images/home/v4/main_icon/menu_codingstudy.webp"
									alt="코딩 스터디-icon" class="css-by3pcg">
								<p class="css-5b05im">코딩 스터디</p>
							</div>
							<div class="css-ngbrg5">
								<img
									src="../static.spartacodingclub.kr/TeamSparta-Inc/scc-frontend/assets/images/home/v4/main_icon/menu_kprt.png"
									alt="IT 자격증-icon" class="css-by3pcg">
								<p class="css-5b05im">IT 자격증</p>
							</div>
							<div class="css-ngbrg5">
								<div class="css-1p49yb2">0원수강</div>
								<img
									src="https://static.spartacodingclub.kr/TeamSparta-Inc/scc-frontend/assets/images/home/v4/main_icon/menu_kdc.svg"
									alt="국비 강의-icon" class="css-by3pcg">
								<p class="css-5b05im">국비 강의</p>
							</div>
							<div class="css-ngbrg5">
								<div class="css-1p49yb2">전액무료</div>
								<img
									src="https://static.spartacodingclub.kr/TeamSparta-Inc/scc-frontend/assets/images/home/v4/main_icon/menu_kdt.svg"
									alt="국비 취업-icon" class="css-by3pcg">
								<p class="css-5b05im">국비 취업</p>
							</div>
							<div class="css-ngbrg5">
								<img
									src="https://static.spartacodingclub.kr/TeamSparta-Inc/scc-frontend/assets/images/home/v4/main_icon/menu_programming.svg"
									alt="개발-icon" class="css-by3pcg">
								<p class="css-5b05im">개발</p>
							</div>
							<div class="css-ngbrg5">
								<img
									src="https://static.spartacodingclub.kr/TeamSparta-Inc/scc-frontend/assets/images/home/v4/main_icon/menu_ai.svg"
									alt="AI ∙ GPT-icon" class="css-by3pcg">
								<p class="css-5b05im">AI ∙ GPT</p>
							</div>
							<div class="css-ngbrg5">
								<img
									src="https://static.spartacodingclub.kr/TeamSparta-Inc/scc-frontend/assets/images/home/v4/main_icon/menu_datav2.svg"
									alt="데이터-icon" class="css-by3pcg">
								<p class="css-5b05im">데이터</p>
							</div>
							<div class="css-ngbrg5">
								<img
									src="https://static.spartacodingclub.kr/TeamSparta-Inc/scc-frontend/assets/images/home/v4/main_icon/menu_job.svg"
									alt="취업 ∙ 자격증-icon" class="css-by3pcg">
								<p class="css-5b05im">취업 ∙ 자격증</p>
							</div>
						</div>
					</div>
				</div>
				<img
					src="https://static.spartacodingclub.kr/TeamSparta-Inc/scc-frontend/assets/images/home/v4/hero_img.png"
					class="css-1i3379r">
			</section>
			<section class="css-1rb6wua">
				<div class="css-snrszc">
					<div class="css-b7x03b"
						style="transform: translate3d(-5455px, 0px, 0px);">
						<div class="css-195brfl">
							<div class="css-1k0s4zo">
								<div class="css-cyyhg6">
									<div class="css-4fo6xu">
										개발자 교육을 넘어<br>취업까지 책임지는, 항해99
									</div>
									<div class="css-198h3ji">2023 새해 맞이 얼리버드 할인 중(~1/16)</div>
								</div>
								<img
									src="https://static.spartacodingclub.kr/assets/images/home/carousel/carousel_item_web_hanghae.png"
									class="css-1kk62ig">
							</div>
						</div>
						<div class="css-1mftlg1">
							<div class="css-ndhw6c">
								<div class="css-cyyhg6">
									<div class="css-4fo6xu">
										지금 SQL 수강 신청 시<br>자격증 대비반 무료 참여 기회!
									</div>
									<div class="css-198h3ji">실무 SQL부터 자격증까지 한 번에</div>
								</div>
								<img
									src="https://static.spartacodingclub.kr/assets/images/home/carousel/carousel_item_web_sql.png"
									class="css-1kk62ig">
							</div>
						</div>
						<div class="css-1enrjq2">
							<div class="css-5g9hl1">
								<div class="css-cyyhg6">
									<div class="css-4fo6xu">
										친구랑 버킷리스트 만들고<br>푸짐한 상품까지 받아가세요!
									</div>
									<div class="css-198h3ji">월간코딩 한정, 친구추천 이벤트 진행 중</div>
								</div>
								<img
									src="https://static.spartacodingclub.kr/assets/images/home/carousel/carousel_item_web_rcmdsfree.png"
									class="css-1kk62ig">
							</div>
						</div>
						<div class="css-1mol2qt">
							<div class="css-a61y41">
								<div class="css-cyyhg6">
									<div class="css-4fo6xu">
										"헉 큰일났다"<br>큰일난 사람들의 큰일낸 이야기
									</div>
									<div class="css-198h3ji">실제 수강생들의 이야기와 목소리를 담았습니다.</div>
								</div>
								<img
									src="https://static.spartacodingclub.kr/assets/images/home/carousel/carousel_item_web_big_thing.png"
									class="css-1kk62ig">
							</div>
						</div>
					</div>
					<div class="css-17ixjhm">
						<div class="css-17cp7ro">
							<svg width="16" height="16" viewBox="0 0 16 16" fill="none"
								xmlns="http://www.w3.org/2000/svg">
								<path
									d="M9.86468 4.53033C10.1576 4.23744 10.1576 3.76256 9.86468 3.46967C9.57179 3.17678 9.09691 3.17678 8.80402 3.46967L9.86468 4.53033ZM5.33435 8L4.80402 7.46967C4.51113 7.76256 4.51113 8.23744 4.80402 8.53033L5.33435 8ZM8.80402 12.5303C9.09691 12.8232 9.57179 12.8232 9.86468 12.5303C10.1576 12.2374 10.1576 11.7626 9.86468 11.4697L8.80402 12.5303ZM8.80402 3.46967L4.80402 7.46967L5.86468 8.53033L9.86468 4.53033L8.80402 3.46967ZM4.80402 8.53033L8.80402 12.5303L9.86468 11.4697L5.86468 7.46967L4.80402 8.53033Z"
									fill="rgba(255, 255, 255, 0.2)"></path></svg>
						</div>
						<div class="css-bav8ek">
							<p class="css-1fwjbu3">1</p>
							<p class="css-1mve0np">/</p>
							<p class="css-1mve0np">
								<!-- -->
								4
							</p>
						</div>
						<div class="css-17cp7ro">
							<svg width="16" height="16" viewBox="0 0 16 16" fill="none"
								xmlns="http://www.w3.org/2000/svg">
								<path
									d="M6.13532 11.4697C5.84243 11.7626 5.84243 12.2374 6.13532 12.5303C6.42821 12.8232 6.90309 12.8232 7.19598 12.5303L6.13532 11.4697ZM10.6656 8L11.196 8.53033C11.4889 8.23744 11.4889 7.76256 11.196 7.46967L10.6656 8ZM7.19598 3.46967C6.90309 3.17678 6.42821 3.17678 6.13532 3.46967C5.84243 3.76256 5.84243 4.23744 6.13532 4.53033L7.19598 3.46967ZM7.19598 12.5303L11.196 8.53033L10.1353 7.46967L6.13532 11.4697L7.19598 12.5303ZM11.196 7.46967L7.19598 3.46967L6.13532 4.53033L10.1353 8.53033L11.196 7.46967Z"
									fill="#FFFFFF"></path></svg>
						</div>
					</div>
				</div>
			</section>
				<section class="css-3fq7y5">
		<div class="css-1pv30y5">
			<h2 class="css-hhcb1">처음이라면 무료로 시작해보세요</h2>
			<h2 class="css-lag1gs">따라만 하면 1시간만에 결과물 완성!</h2>
		</div>
		<div class="css-1htzcfr">
			<div class="css-1wu3889">
				<div class="css-x6c4xy">
					<img
						src="https://static.spartacodingclub.kr/TeamSparta-Inc/scc-frontend/assets/images/catalog/cards/v2/codingtest.png"
						class="css-llyx0g">
					<div class="css-1a3owe3">
						<button class="css-10gr060">
							<img
								src="https://static.spartacodingclub.kr/TeamSparta-Inc/scc-frontend/assets/icons/icon_thunder.svg"
								alt="icon_thunder"><span class="css-fv3qmw">바로 수강신청</span>
						</button>
						<div class="css-1lnhilv">
							<h3 class="css-1ktn5fd">1시간 만에 정복하는 코딩테스트 합격법</h3>
							<p class="css-54qi37">막막한 코딩테스트를 시원하게 뚫어줄, 합격의 최단 거리를 소개합니다.</p>
						</div>
						<p class="css-1hx977">무료</p>
					</div>
				</div>
				<div class="css-x6c4xy">
					<img
						src="https://static.spartacodingclub.kr/TeamSparta-Inc/scc-frontend/assets/images/catalog/cards/v2/data_career.png"
						class="css-llyx0g">
					<div class="css-1a3owe3">
						<button class="css-10gr060">
							<img
								src="https://static.spartacodingclub.kr/TeamSparta-Inc/scc-frontend/assets/icons/icon_thunder.svg"
								alt="icon_thunder"><span class="css-fv3qmw">바로 수강신청</span>
						</button>
						<div class="css-1lnhilv">
							<h3 class="css-1ktn5fd">취업, 이직을 위한 데이터 분석의 모든 것</h3>
							<p class="css-54qi37">취준 중이라면 꼭 필요한 데이터 역량 키우는 방법 및 취업 준비의 모든
								것!</p>
						</div>
						<p class="css-1hx977">무료</p>
					</div>
				</div>
				<div class="css-x6c4xy">
					<img
						src="https://static.spartacodingclub.kr/TeamSparta-Inc/scc-frontend/assets/images/catalog/cards/v2/chatgpt.png"
						class="css-llyx0g">
					<div class="css-1a3owe3">
						<button class="css-10gr060">
							<img
								src="https://static.spartacodingclub.kr/TeamSparta-Inc/scc-frontend/assets/icons/icon_thunder.svg"
								alt="icon_thunder"><span class="css-fv3qmw">바로 수강신청</span>
						</button>
						<div class="css-1lnhilv">
							<h3 class="css-1ktn5fd">chatGPT로 10분 만에 웹사이트 만들기</h3>
							<p class="css-54qi37">chatGPT를 활용해 빠르게 웹사이트를 만들어봅니다.</p>
						</div>
						<p class="css-1hx977">무료</p>
					</div>
				</div>
				<div class="css-x6c4xy">
					<img
						src="https://static.spartacodingclub.kr/TeamSparta-Inc/scc-frontend/assets/images/catalog/cards/v2/ai_report_automation.png"
						class="css-llyx0g">
					<div class="css-1a3owe3">
						<button class="css-10gr060">
							<img
								src="https://static.spartacodingclub.kr/TeamSparta-Inc/scc-frontend/assets/icons/icon_thunder.svg"
								alt="icon_thunder"><span class="css-fv3qmw">바로 수강신청</span>
						</button>
						<div class="css-1lnhilv">
							<h3 class="css-1ktn5fd">AI로 10분만에 보고서 만들기</h3>
							<p class="css-54qi37">ChatGPT API와 생성형 AI를 활용해 기획서와 프레젠테이션을
								만듭니다.</p>
						</div>
						<p class="css-1hx977">무료</p>
					</div>
				</div>
			</div>
			<div class="css-19cnljb">
				<div class="css-1jmxdny"></div>
			</div>
		</div>
		<div class="css-116sfrp">
			<div class="css-x6c4xy">
				<img
					src="https://static.spartacodingclub.kr/TeamSparta-Inc/scc-frontend/assets/images/catalog/cards/v2/codingtest.png"
					class="css-llyx0g">
				<div class="css-1a3owe3">
					<button class="css-10gr060">
						<img
							src="https://static.spartacodingclub.kr/TeamSparta-Inc/scc-frontend/assets/icons/icon_thunder.svg"
							alt="icon_thunder"><span class="css-fv3qmw">바로 수강신청</span>
					</button>
					<div class="css-1lnhilv">
						<h3 class="css-1ktn5fd">1시간 만에 정복하는 코딩테스트 합격법</h3>
						<p class="css-54qi37">막막한 코딩테스트를 시원하게 뚫어줄, 합격의 최단 거리를 소개합니다.</p>
					</div>
					<p class="css-1hx977">무료</p>
				</div>
			</div>
			<div class="css-x6c4xy">
				<img
					src="https://static.spartacodingclub.kr/TeamSparta-Inc/scc-frontend/assets/images/catalog/cards/v2/data_career.png"
					class="css-llyx0g">
				<div class="css-1a3owe3">
					<button class="css-10gr060">
						<img
							src="https://static.spartacodingclub.kr/TeamSparta-Inc/scc-frontend/assets/icons/icon_thunder.svg"
							alt="icon_thunder"><span class="css-fv3qmw">바로 수강신청</span>
					</button>
					<div class="css-1lnhilv">
						<h3 class="css-1ktn5fd">취업, 이직을 위한 데이터 분석의 모든 것</h3>
						<p class="css-54qi37">취준 중이라면 꼭 필요한 데이터 역량 키우는 방법 및 취업 준비의 모든
							것!</p>
					</div>
					<p class="css-1hx977">무료</p>
				</div>
			</div>
			<div class="css-x6c4xy">
				<img
					src="https://static.spartacodingclub.kr/TeamSparta-Inc/scc-frontend/assets/images/catalog/cards/v2/chatgpt.png"
					class="css-llyx0g">
				<div class="css-1a3owe3">
					<button class="css-10gr060">
						<img
							src="https://static.spartacodingclub.kr/TeamSparta-Inc/scc-frontend/assets/icons/icon_thunder.svg"
							alt="icon_thunder"><span class="css-fv3qmw">바로 수강신청</span>
					</button>
					<div class="css-1lnhilv">
						<h3 class="css-1ktn5fd">chatGPT로 10분 만에 웹사이트 만들기</h3>
						<p class="css-54qi37">chatGPT를 활용해 빠르게 웹사이트를 만들어봅니다.</p>
					</div>
					<p class="css-1hx977">무료</p>
				</div>
			</div>
			<div class="css-x6c4xy">
				<img
					src="https://static.spartacodingclub.kr/TeamSparta-Inc/scc-frontend/assets/images/catalog/cards/v2/ai_report_automation.png"
					class="css-llyx0g">
				<div class="css-1a3owe3">
					<button class="css-10gr060">
						<img
							src="https://static.spartacodingclub.kr/TeamSparta-Inc/scc-frontend/assets/icons/icon_thunder.svg"
							alt="icon_thunder"><span class="css-fv3qmw">바로 수강신청</span>
					</button>
					<div class="css-1lnhilv">
						<h3 class="css-1ktn5fd">AI로 10분만에 보고서 만들기</h3>
						<p class="css-54qi37">ChatGPT API와 생성형 AI를 활용해 기획서와 프레젠테이션을
							만듭니다.</p>
					</div>
					<p class="css-1hx977">무료</p>
				</div>
			</div>
		</div>
	</section>
			
		</div>
		<section class="css-zea7jz">
			<div class="css-cxhqc8">
				<h1 class="css-u8kxam">50만 수강생이 선택한</h1>
				<h1 class="css-18ok7we">스파르타코딩클럽</h1>
			</div>
			<div class="css-143hej">
				<button class="css-bcb9a9">
					<div class="css-197aby8">
						<div class="css-18zxnkv">
							<p class="css-187mfrw">무료</p>
						</div>
						<p class="css-1r2nemk">무료특강</p>
						<p class="css-12j2poz">재밌게 코딩 맛보고 싶다면? 쉬운 1시간 분량 만들기 강의</p>
					</div>
					<img
						src="https://static.spartacodingclub.kr/TeamSparta-Inc/scc-frontend/assets/images/home/v4/start_to_end_0.webp"
						loading="lazy" class="css-1522xt9">
					<div class="css-15xvgt0">
						<svg width="16" height="16" viewBox="0 0 16 16" fill="none"
							xmlns="http://www.w3.org/2000/svg">
							<path d="M8 2.80005V13.2" stroke="#3A3E41" stroke-width="1.5"
								stroke-linecap="round"></path>
							<path d="M13.2 8L2.79995 8" stroke="#3A3E41" stroke-width="1.5"
								stroke-linecap="round"></path></svg>
					</div>
				</button>
				<button class="css-bcb9a9">
					<div class="css-197aby8">
						<div class="css-crc739">
							<p class="css-187mfrw">국비지원</p>
						</div>
						<p class="css-1r2nemk">온라인 강의</p>
						<p class="css-12j2poz">성취감 가득! 실습으로 익히는 4~6주 과정 기초 강의</p>
					</div>
					<img
						src="https://static.spartacodingclub.kr/TeamSparta-Inc/scc-frontend/assets/images/home/v4/start_to_end_1.webp"
						loading="lazy" class="css-1522xt9">
					<div class="css-15xvgt0">
						<svg width="16" height="16" viewBox="0 0 16 16" fill="none"
							xmlns="http://www.w3.org/2000/svg">
							<path d="M8 2.80005V13.2" stroke="#3A3E41" stroke-width="1.5"
								stroke-linecap="round"></path>
							<path d="M13.2 8L2.79995 8" stroke="#3A3E41" stroke-width="1.5"
								stroke-linecap="round"></path></svg>
					</div>
				</button>
				<button class="css-bcb9a9">
					<div class="css-197aby8">
						<div class="css-crc739">
							<p class="css-187mfrw">국비지원</p>
						</div>
						<p class="css-1r2nemk">취업 부트캠프</p>
						<p class="css-12j2poz">IT 직군 취업을 꿈꾼다면, 4개월 몰입형 부트캠프로</p>
					</div>
					<img
						src="https://static.spartacodingclub.kr/TeamSparta-Inc/scc-frontend/assets/images/home/v4/start_to_end_2.webp"
						loading="lazy" class="css-1522xt9">
					<div class="css-15xvgt0">
						<svg width="16" height="16" viewBox="0 0 16 16" fill="none"
							xmlns="http://www.w3.org/2000/svg">
							<path d="M8 2.80005V13.2" stroke="#3A3E41" stroke-width="1.5"
								stroke-linecap="round"></path>
							<path d="M13.2 8L2.79995 8" stroke="#3A3E41" stroke-width="1.5"
								stroke-linecap="round"></path></svg>
					</div>
				</button>
			</div>
		</section>
	</div>

</div>
<%@include file="common/footer.jsp"%>