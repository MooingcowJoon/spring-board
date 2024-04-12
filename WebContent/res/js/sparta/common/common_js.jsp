<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="s" uri="http://www.springframework.org/tags"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>스파르타코딩클럽 클론</title>
</head>
<script src="/res/js/jquery-1.10.2.js"></script>
<script type="text/javascript">
	var $j = jQuery.noConflict();
	var idFind =(elementId)=>document.getElementById(elementId)
	var focusEnd = (input)=>{
		input.focus()
		input.setSelectionRange(input.value.length, input.value.length);
	}
</script>
<script>
$j(()=>{
	/* 최상단 메뉴 관련 기능  */
	$j('#headerDiv').on('click','.header-logo',()=>location.href='/sparta/index.do')
	$j('#headerDiv').on('click','#listMenu',()=>location.href='/sparta/product/list.do')
	const joinPage = $j('#joinPage').clone().css('display','flex')
	$j('#joinPage').remove()
	
	const g_modal = idFind('modal')
	
	$j(g_modal).on('click','.backBtn',()=>$j(g_modal).children(':last').remove())
	$j(g_modal).on('click','.closeBtn',()=>setModal())
	$j(g_modal).on('click','.modal-join',()=>setModal(joinPage))
	
								
	$j(loginDiv).click(()=>{setModal(`<div class="modal-login"><div class="css-4oebd2"><div class="css-1n1k95p"><div class="css-myjkxi"><svg class="closeBtn" width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M4.16663 4.16669L15.8333 15.8334" stroke="#3A3E41" stroke-width="1.75" stroke-linecap="round"></path><path d="M15.8334 4.16669L4.16671 15.8334" stroke="#3A3E41" stroke-width="1.75" stroke-linecap="round"></path></svg></div></div><div class="css-1xpr18p"><div class="css-kcgo1q"><div class="css-gxukgu"><span>대한민국을 코딩의 땅으로</span><br>스파르타코딩클럽</div><div direction="vertical" size="12" class="css-j86f64"></div><div class="css-1hal8c">쉽고 재밌는 코딩 입문 강의부터
			IT 역량 탄탄하게 갖추는 부트캠프까지!</div><div direction="vertical" size="40" class="css-ygt1wz"></div><button color="#141617" class="css-18wq8ro"><svg width="18" height="18" viewBox="0 0 18 18" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M9.00043 2.16699C4.80722 2.16699 1.4082 4.7989 1.4082 8.04735C1.4082 10.161 2.84752 12.0135 5.00935 13.0499C4.85022 13.63 4.43449 15.1538 4.35134 15.4796C4.24812 15.8841 4.50187 15.8785 4.66959 15.7703C4.80005 15.6846 6.74972 14.3855 7.59123 13.8252C8.04854 13.8912 8.51875 13.9263 9.00043 13.9263C13.1937 13.9263 16.5927 11.2944 16.5927 8.04735C16.5927 4.8003 13.1937 2.16699 9.00043 2.16699Z" fill="#141617"></path></svg> 카카오로 3초만에 시작하기</button><div direction="vertical" size="16" class="css-10vhklm"></div><button color="#141617" class="css-fqtlj">이메일로 시작하기</button><div direction="vertical" size="32" class="css-h23ofx"></div>
			<span color="#81898F"  class="modal-join" style="text-decoration: underline;">회원가입</span>
			</div><div class="css-1sfln3b"></div></div></div></div>
			`)
			 }
			)
	var setModal = (html='') =>{
		if(!html){
			g_modal.innerHTML=''
			$j('body').removeClass('overflow-hidden')
		}
		$j(g_modal).append(html)
		html && $j('body').addClass('overflow-hidden')
	}
	
// 	const validation = {
// 			email : /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/
			
// 	}
	
// 	const inputCheck = input=>{
// 		const reg = validation[input.]
		
// 	}
	$j(document).on({'input':e=>{
		const val = e.target.value
		}
	,'focus':e=>{
		
	}
	,'blur':e=>{
		
	}
	},'.login-custom-input')
	
})

</script>

<body>
	<div style="display: none;" id="joinPage" class="css-12gtq4k">
		<div class="css-1k8rayr">
			<div class="css-1n1k95p">
				<div class="modal-join-back backBtn">
					<svg width="20" height="20" viewBox="0 0 20 20" fill="none"
						xmlns="http://www.w3.org/2000/svg">
					<path d="M9.16699 5L4.16699 10L9.16699 15" stroke="#3A3E41"
						stroke-width="1.75" stroke-linecap="round" stroke-linejoin="round">
					</path> <path d="M5 10L15.8333 10" stroke="#3A3E41" stroke-width="1.75"
						stroke-linecap="round" stroke-linejoin="round"></path></svg>
					뒤로
				</div>
				<div class="modal-join-close closeBtn">
					<svg width="20" height="20" viewBox="0 0 20 20" fill="none"
						xmlns="http://www.w3.org/2000/svg">
					<path d="M4.16663 4.16669L15.8333 15.8334" stroke="#3A3E41"
						stroke-width="1.75" stroke-linecap="round"></path>
					<path d="M15.8334 4.16669L4.16671 15.8334" stroke="#3A3E41"
						stroke-width="1.75" stroke-linecap="round"></path></svg>
				</div>
			</div>
			<div class="css-111ukc0">
				<div class="css-1wlmsap">
					<div class="css-bbe5fx">
						하나의 계정으로<br>더욱 간편하게
					</div>
					<div direction="vertical" size="12" class="css-j86f64"></div>
					<div class="css-1hal8c">
						스파르타에서 제공하는 서비스를<br>하나의 계정으로 모두 이용할 수 있어요.
					</div>
					<div direction="vertical" size="20" class="css-1i0k62c"></div>
					<img src="https://static.spartacodingclub.kr/login/logos.png"
						class="css-1k8svhy">
					<div direction="vertical" size="60" class="css-1bisjhm"></div>
					<div id="emailDiv" class="css-666rgn">
						<div class="css-hg8qtm">이메일</div>
						<input placeholder="이메일 입력" type="string" autocapitalize="off"
							class="login-custom-input css-ownijh" value="">
					</div>
					<div direction="vertical" size="20" class="css-1i0k62c"></div>
					<div class="css-dfxgr5">
						<div class="css-hg8qtm">비밀번호</div>
						<input placeholder="6자 이상, 숫자와 영문자 조합" type="password"
							autocapitalize="off" class="login-custom-input css-162yza3"
							value="">
						<div class="css-1ap4l8j"></div>
						<input placeholder="비밀번호 재입력" type="password" autocapitalize="off"
							class="login-custom-input css-162yza3" value="">
					</div>
					<div direction="vertical" size="20" class="css-1i0k62c"></div>
					<div class="css-666rgn">
						<div class="css-hg8qtm">이름</div>
						<input placeholder="이름 입력" type="string" autocapitalize="off"
							class="login-custom-input css-1f4y3nx" value="">
					</div>
					<div direction="vertical" size="20" class="css-1i0k62c"></div>
					<div class="css-dfxgr5">
						<div class="css-hg8qtm">휴대폰 번호</div>
						<div class="css-14plio2">
							<button class="css-1rn8qac">
								대한민국 +82
								<div class="css-gkmg7l">
									<svg width="24" height="24" viewBox="0 0 24 24" fill="none"
										xmlns="http://www.w3.org/2000/svg">
									<path
										d="M6.70711 9.29289C6.31658 8.90237 5.68342 8.90237 5.29289 9.29289C4.90237 9.68342 4.90237 10.3166 5.29289 10.7071L6.70711 9.29289ZM12 16L11.2929 16.7071C11.6834 17.0976 12.3166 17.0976 12.7071 16.7071L12 16ZM18.7071 10.7071C19.0976 10.3166 19.0976 9.68342 18.7071 9.29289C18.3166 8.90237 17.6834 8.90237 17.2929 9.29289L18.7071 10.7071ZM5.29289 10.7071L11.2929 16.7071L12.7071 15.2929L6.70711 9.29289L5.29289 10.7071ZM12.7071 16.7071L18.7071 10.7071L17.2929 9.29289L11.2929 15.2929L12.7071 16.7071Z"
										fill="#5F666B"></path></svg>
								</div>
							</button>
							<ul class="css-1srbb7s">
								<li value="82" class="css-mdav2q">대한민국 +82<svg width="16"
										height="16" viewBox="0 0 16 16" fill="none"
										xmlns="http://www.w3.org/2000/svg">
									<path d="M2.66565 8L5.99898 11.3333L13.3323 4" stroke="#E8344E"
										stroke-width="1.5" stroke-linecap="round"
										stroke-linejoin="round"></path></svg></li>
								<li value="93" class="css-8e4sdk">Afghanistan +93</li>
								<li value="355" class="css-8e4sdk">Albania +355</li>
								<li value="213" class="css-8e4sdk">Algeria +213</li>
								<li value="1" class="css-8e4sdk">American Samoa +1</li>
								<li value="376" class="css-8e4sdk">Andorra +376</li>
								<li value="244" class="css-8e4sdk">Angola +244</li>
								<li value="1" class="css-8e4sdk">Anguilla +1</li>
								<li value="1" class="css-8e4sdk">Antigua and Barbuda +1</li>
								<li value="54" class="css-8e4sdk">Argentina +54</li>
								<li value="374" class="css-8e4sdk">Armenia +374</li>
								<li value="297" class="css-8e4sdk">Aruba +297</li>
								<li value="61" class="css-8e4sdk">Australia +61</li>
								<li value="43" class="css-8e4sdk">Austria +43</li>
								<li value="994" class="css-8e4sdk">Azerbaijan +994</li>
								<li value="1" class="css-8e4sdk">Bahamas +1</li>
								<li value="973" class="css-8e4sdk">Bahrain +973</li>
								<li value="880" class="css-8e4sdk">Bangladesh +880</li>
								<li value="1" class="css-8e4sdk">Barbados +1</li>
								<li value="375" class="css-8e4sdk">Belarus +375</li>
								<li value="32" class="css-8e4sdk">Belgium +32</li>
								<li value="501" class="css-8e4sdk">Belize +501</li>
								<li value="229" class="css-8e4sdk">Benin +229</li>
								<li value="1" class="css-8e4sdk">Bermuda +1</li>
								<li value="975" class="css-8e4sdk">Bhutan +975</li>
								<li value="591" class="css-8e4sdk">Bolivia +591</li>
								<li value="387" class="css-8e4sdk">Bosnia and Herzegovina
									+387</li>
								<li value="267" class="css-8e4sdk">Botswana +267</li>
								<li value="55" class="css-8e4sdk">Brazil +55</li>
								<li value="246" class="css-8e4sdk">British Indian Ocean
									Territory +246</li>
								<li value="673" class="css-8e4sdk">Brunei Darussalam +673</li>
								<li value="359" class="css-8e4sdk">Bulgaria +359</li>
								<li value="226" class="css-8e4sdk">Burkina Faso +226</li>
								<li value="257" class="css-8e4sdk">Burundi +257</li>
								<li value="855" class="css-8e4sdk">Cambodia +855</li>
								<li value="237" class="css-8e4sdk">Cameroon +237</li>
								<li value="1" class="css-8e4sdk">Canada +1</li>
								<li value="238" class="css-8e4sdk">Cape Verde +238</li>
								<li value="1" class="css-8e4sdk">Cayman Islands +1</li>
								<li value="236" class="css-8e4sdk">Central African Republic
									+236</li>
								<li value="235" class="css-8e4sdk">Chad +235</li>
								<li value="56" class="css-8e4sdk">Chile +56</li>
								<li value="86" class="css-8e4sdk">People's Republic of
									China +86</li>
								<li value="61" class="css-8e4sdk">Christmas Island +61</li>
								<li value="61" class="css-8e4sdk">Cocos (Keeling) Islands
									+61</li>
								<li value="57" class="css-8e4sdk">Colombia +57</li>
								<li value="269" class="css-8e4sdk">Comoros +269</li>
								<li value="242" class="css-8e4sdk">Republic of the Congo
									+242</li>
								<li value="243" class="css-8e4sdk">Democratic Republic of
									the Congo +243</li>
								<li value="682" class="css-8e4sdk">Cook Islands +682</li>
								<li value="506" class="css-8e4sdk">Costa Rica +506</li>
								<li value="225" class="css-8e4sdk">Cote D'Ivoire +225</li>
								<li value="385" class="css-8e4sdk">Croatia +385</li>
								<li value="53" class="css-8e4sdk">Cuba +53</li>
								<li value="357" class="css-8e4sdk">Cyprus +357</li>
								<li value="420" class="css-8e4sdk">Czech Republic +420</li>
								<li value="45" class="css-8e4sdk">Denmark +45</li>
								<li value="253" class="css-8e4sdk">Djibouti +253</li>
								<li value="1" class="css-8e4sdk">Dominica +1</li>
								<li value="1" class="css-8e4sdk">Dominican Republic +1</li>
								<li value="593" class="css-8e4sdk">Ecuador +593</li>
								<li value="20" class="css-8e4sdk">Egypt +20</li>
								<li value="503" class="css-8e4sdk">El Salvador +503</li>
								<li value="240" class="css-8e4sdk">Equatorial Guinea +240</li>
								<li value="291" class="css-8e4sdk">Eritrea +291</li>
								<li value="372" class="css-8e4sdk">Estonia +372</li>
								<li value="251" class="css-8e4sdk">Ethiopia +251</li>
								<li value="500" class="css-8e4sdk">Falkland Islands
									(Malvinas) +500</li>
								<li value="298" class="css-8e4sdk">Faroe Islands +298</li>
								<li value="679" class="css-8e4sdk">Fiji +679</li>
								<li value="358" class="css-8e4sdk">Finland +358</li>
								<li value="33" class="css-8e4sdk">France +33</li>
								<li value="594" class="css-8e4sdk">French Guiana +594</li>
								<li value="689" class="css-8e4sdk">French Polynesia +689</li>
								<li value="241" class="css-8e4sdk">Gabon +241</li>
								<li value="220" class="css-8e4sdk">Republic of The Gambia
									+220</li>
								<li value="995" class="css-8e4sdk">Georgia +995</li>
								<li value="49" class="css-8e4sdk">Germany +49</li>
								<li value="233" class="css-8e4sdk">Ghana +233</li>
								<li value="350" class="css-8e4sdk">Gibraltar +350</li>
								<li value="30" class="css-8e4sdk">Greece +30</li>
								<li value="299" class="css-8e4sdk">Greenland +299</li>
								<li value="1" class="css-8e4sdk">Grenada +1</li>
								<li value="590" class="css-8e4sdk">Guadeloupe +590</li>
								<li value="1" class="css-8e4sdk">Guam +1</li>
								<li value="502" class="css-8e4sdk">Guatemala +502</li>
								<li value="224" class="css-8e4sdk">Guinea +224</li>
								<li value="245" class="css-8e4sdk">Guinea-Bissau +245</li>
								<li value="592" class="css-8e4sdk">Guyana +592</li>
								<li value="509" class="css-8e4sdk">Haiti +509</li>
								<li value="39" class="css-8e4sdk">Holy See (Vatican City
									State) +39</li>
								<li value="504" class="css-8e4sdk">Honduras +504</li>
								<li value="852" class="css-8e4sdk">Hong Kong +852</li>
								<li value="36" class="css-8e4sdk">Hungary +36</li>
								<li value="354" class="css-8e4sdk">Iceland +354</li>
								<li value="91" class="css-8e4sdk">India +91</li>
								<li value="62" class="css-8e4sdk">Indonesia +62</li>
								<li value="98" class="css-8e4sdk">Islamic Republic of Iran
									+98</li>
								<li value="964" class="css-8e4sdk">Iraq +964</li>
								<li value="353" class="css-8e4sdk">Ireland +353</li>
								<li value="972" class="css-8e4sdk">Israel +972</li>
								<li value="39" class="css-8e4sdk">Italy +39</li>
								<li value="1" class="css-8e4sdk">Jamaica +1</li>
								<li value="81" class="css-8e4sdk">Japan +81</li>
								<li value="962" class="css-8e4sdk">Jordan +962</li>
								<li value="7" class="css-8e4sdk">Kazakhstan +7</li>
								<li value="254" class="css-8e4sdk">Kenya +254</li>
								<li value="686" class="css-8e4sdk">Kiribati +686</li>
								<li value="850" class="css-8e4sdk">North Korea +850</li>
								<li value="965" class="css-8e4sdk">Kuwait +965</li>
								<li value="996" class="css-8e4sdk">Kyrgyzstan +996</li>
								<li value="856" class="css-8e4sdk">Lao People's Democratic
									Republic +856</li>
								<li value="371" class="css-8e4sdk">Latvia +371</li>
								<li value="961" class="css-8e4sdk">Lebanon +961</li>
								<li value="266" class="css-8e4sdk">Lesotho +266</li>
								<li value="231" class="css-8e4sdk">Liberia +231</li>
								<li value="218" class="css-8e4sdk">Libya +218</li>
								<li value="423" class="css-8e4sdk">Liechtenstein +423</li>
								<li value="370" class="css-8e4sdk">Lithuania +370</li>
								<li value="352" class="css-8e4sdk">Luxembourg +352</li>
								<li value="853" class="css-8e4sdk">Macao +853</li>
								<li value="261" class="css-8e4sdk">Madagascar +261</li>
								<li value="265" class="css-8e4sdk">Malawi +265</li>
								<li value="60" class="css-8e4sdk">Malaysia +60</li>
								<li value="960" class="css-8e4sdk">Maldives +960</li>
								<li value="223" class="css-8e4sdk">Mali +223</li>
								<li value="356" class="css-8e4sdk">Malta +356</li>
								<li value="692" class="css-8e4sdk">Marshall Islands +692</li>
								<li value="596" class="css-8e4sdk">Martinique +596</li>
								<li value="222" class="css-8e4sdk">Mauritania +222</li>
								<li value="230" class="css-8e4sdk">Mauritius +230</li>
								<li value="262" class="css-8e4sdk">Mayotte +262</li>
								<li value="52" class="css-8e4sdk">Mexico +52</li>
								<li value="691" class="css-8e4sdk">Micronesia, Federated
									States of +691</li>
								<li value="373" class="css-8e4sdk">Moldova, Republic of
									+373</li>
								<li value="377" class="css-8e4sdk">Monaco +377</li>
								<li value="976" class="css-8e4sdk">Mongolia +976</li>
								<li value="1" class="css-8e4sdk">Montserrat +1</li>
								<li value="212" class="css-8e4sdk">Morocco +212</li>
								<li value="258" class="css-8e4sdk">Mozambique +258</li>
								<li value="95" class="css-8e4sdk">Myanmar +95</li>
								<li value="264" class="css-8e4sdk">Namibia +264</li>
								<li value="674" class="css-8e4sdk">Nauru +674</li>
								<li value="977" class="css-8e4sdk">Nepal +977</li>
								<li value="31" class="css-8e4sdk">Netherlands +31</li>
								<li value="687" class="css-8e4sdk">New Caledonia +687</li>
								<li value="64" class="css-8e4sdk">New Zealand +64</li>
								<li value="505" class="css-8e4sdk">Nicaragua +505</li>
								<li value="227" class="css-8e4sdk">Niger +227</li>
								<li value="234" class="css-8e4sdk">Nigeria +234</li>
								<li value="683" class="css-8e4sdk">Niue +683</li>
								<li value="672" class="css-8e4sdk">Norfolk Island +672</li>
								<li value="389" class="css-8e4sdk">The Republic of North
									Macedonia +389</li>
								<li value="1" class="css-8e4sdk">Northern Mariana Islands
									+1</li>
								<li value="47" class="css-8e4sdk">Norway +47</li>
								<li value="968" class="css-8e4sdk">Oman +968</li>
								<li value="92" class="css-8e4sdk">Pakistan +92</li>
								<li value="680" class="css-8e4sdk">Palau +680</li>
								<li value="970" class="css-8e4sdk">State of Palestine +970</li>
								<li value="507" class="css-8e4sdk">Panama +507</li>
								<li value="675" class="css-8e4sdk">Papua New Guinea +675</li>
								<li value="595" class="css-8e4sdk">Paraguay +595</li>
								<li value="51" class="css-8e4sdk">Peru +51</li>
								<li value="63" class="css-8e4sdk">Philippines +63</li>
								<li value="48" class="css-8e4sdk">Poland +48</li>
								<li value="351" class="css-8e4sdk">Portugal +351</li>
								<li value="1" class="css-8e4sdk">Puerto Rico +1</li>
								<li value="974" class="css-8e4sdk">Qatar +974</li>
								<li value="262" class="css-8e4sdk">Reunion +262</li>
								<li value="40" class="css-8e4sdk">Romania +40</li>
								<li value="7" class="css-8e4sdk">Russian Federation +7</li>
								<li value="250" class="css-8e4sdk">Rwanda +250</li>
								<li value="290" class="css-8e4sdk">Saint Helena +290</li>
								<li value="1" class="css-8e4sdk">Saint Kitts and Nevis +1</li>
								<li value="1" class="css-8e4sdk">Saint Lucia +1</li>
								<li value="508" class="css-8e4sdk">Saint Pierre and
									Miquelon +508</li>
								<li value="1" class="css-8e4sdk">Saint Vincent and the
									Grenadines +1</li>
								<li value="685" class="css-8e4sdk">Samoa +685</li>
								<li value="378" class="css-8e4sdk">San Marino +378</li>
								<li value="239" class="css-8e4sdk">Sao Tome and Principe
									+239</li>
								<li value="966" class="css-8e4sdk">Saudi Arabia +966</li>
								<li value="221" class="css-8e4sdk">Senegal +221</li>
								<li value="248" class="css-8e4sdk">Seychelles +248</li>
								<li value="232" class="css-8e4sdk">Sierra Leone +232</li>
								<li value="65" class="css-8e4sdk">Singapore +65</li>
								<li value="421" class="css-8e4sdk">Slovakia +421</li>
								<li value="386" class="css-8e4sdk">Slovenia +386</li>
								<li value="677" class="css-8e4sdk">Solomon Islands +677</li>
								<li value="252" class="css-8e4sdk">Somalia +252</li>
								<li value="27" class="css-8e4sdk">South Africa +27</li>
								<li value="34" class="css-8e4sdk">Spain +34</li>
								<li value="94" class="css-8e4sdk">Sri Lanka +94</li>
								<li value="249" class="css-8e4sdk">Sudan +249</li>
								<li value="597" class="css-8e4sdk">Suriname +597</li>
								<li value="47" class="css-8e4sdk">Svalbard and Jan Mayen
									+47</li>
								<li value="268" class="css-8e4sdk">Eswatini +268</li>
								<li value="46" class="css-8e4sdk">Sweden +46</li>
								<li value="41" class="css-8e4sdk">Switzerland +41</li>
								<li value="963" class="css-8e4sdk">Syrian Arab Republic
									+963</li>
								<li value="886" class="css-8e4sdk">Taiwan, Province of
									China +886</li>
								<li value="992" class="css-8e4sdk">Tajikistan +992</li>
								<li value="255" class="css-8e4sdk">United Republic of
									Tanzania +255</li>
								<li value="66" class="css-8e4sdk">Thailand +66</li>
								<li value="670" class="css-8e4sdk">Timor-Leste +670</li>
								<li value="228" class="css-8e4sdk">Togo +228</li>
								<li value="690" class="css-8e4sdk">Tokelau +690</li>
								<li value="676" class="css-8e4sdk">Tonga +676</li>
								<li value="1" class="css-8e4sdk">Trinidad and Tobago +1</li>
								<li value="216" class="css-8e4sdk">Tunisia +216</li>
								<li value="90" class="css-8e4sdk">Türkiye +90</li>
								<li value="993" class="css-8e4sdk">Turkmenistan +993</li>
								<li value="1" class="css-8e4sdk">Turks and Caicos Islands
									+1</li>
								<li value="688" class="css-8e4sdk">Tuvalu +688</li>
								<li value="256" class="css-8e4sdk">Uganda +256</li>
								<li value="380" class="css-8e4sdk">Ukraine +380</li>
								<li value="971" class="css-8e4sdk">United Arab Emirates
									+971</li>
								<li value="44" class="css-8e4sdk">United Kingdom +44</li>
								<li value="1" class="css-8e4sdk">United States of America
									+1</li>
								<li value="598" class="css-8e4sdk">Uruguay +598</li>
								<li value="998" class="css-8e4sdk">Uzbekistan +998</li>
								<li value="678" class="css-8e4sdk">Vanuatu +678</li>
								<li value="58" class="css-8e4sdk">Venezuela +58</li>
								<li value="84" class="css-8e4sdk">Vietnam +84</li>
								<li value="1" class="css-8e4sdk">Virgin Islands, British +1</li>
								<li value="1" class="css-8e4sdk">Virgin Islands, U.S. +1</li>
								<li value="681" class="css-8e4sdk">Wallis and Futuna +681</li>
								<li value="212" class="css-8e4sdk">Western Sahara +212</li>
								<li value="967" class="css-8e4sdk">Yemen +967</li>
								<li value="260" class="css-8e4sdk">Zambia +260</li>
								<li value="263" class="css-8e4sdk">Zimbabwe +263</li>
								<li value="358" class="css-8e4sdk">Åland Islands +358</li>
								<li value="599" class="css-8e4sdk">Bonaire, Sint Eustatius
									and Saba +599</li>
								<li value="599" class="css-8e4sdk">Curaçao +599</li>
								<li value="44" class="css-8e4sdk">Guernsey +44</li>
								<li value="44" class="css-8e4sdk">Isle of Man +44</li>
								<li value="44" class="css-8e4sdk">Jersey +44</li>
								<li value="382" class="css-8e4sdk">Montenegro +382</li>
								<li value="590" class="css-8e4sdk">Saint Barthélemy +590</li>
								<li value="590" class="css-8e4sdk">Saint Martin (French
									part) +590</li>
								<li value="381" class="css-8e4sdk">Serbia +381</li>
								<li value="1" class="css-8e4sdk">Sint Maarten (Dutch part)
									+1</li>
								<li value="211" class="css-8e4sdk">South Sudan +211</li>
								<li value="383" class="css-8e4sdk">Kosovo +383</li>
							</ul>
						</div>
						<div class="css-1ap4l8j"></div>
						<div class="css-8iqjz0">
							<input placeholder="휴대폰 번호 입력 (- 제외)" type="number"
								maxlength="14" autocapitalize="off"
								class="login-custom-input css-162yza3" value="">
						</div>
						<div class="css-1ap4l8j"></div>
						<div class="css-8iqjz0">
							<input placeholder="인증번호 입력" type="number" maxlength="4"
								autocapitalize="off" class="login-custom-input css-162yza3"
								value="">
						</div>
					</div>
					<div direction="vertical" size="20" class="css-1i0k62c"></div>
					<div class="css-666rgn">
						<div class="css-hg8qtm">
							생년월일<span>생일에 엄청난 일이 벌어질지도 몰라요!</span>
						</div>
						<input placeholder="ex. 19990101" type="number" maxlength="8"
							autocapitalize="off" class="login-custom-input css-1f4y3nx"
							value="">
					</div>
					<div direction="vertical" size="32" class="css-h23ofx"></div>
					<div class="css-3yxmd9">
						<div class="css-1bfv1c0">성별</div>
						<div direction="vertical" size="12" class="css-j86f64"></div>
						<div class="css-10oczdc">
							<button class="css-rc3otg">남자</button>
							<button class="css-rc3otg">여자</button>
							<button class="css-rc3otg">선택 안함</button>
						</div>
					</div>
					<div direction="vertical" size="40" class="css-ygt1wz"></div>
					<div class="css-17w7nyr"></div>
					<div direction="vertical" size="40" class="css-ygt1wz"></div>
					<div class="css-8luw5u">
						<button class="css-27eumk">
							<svg width="20" height="20" viewBox="0 0 20 20" fill="none"
								xmlns="http://www.w3.org/2000/svg">
							<rect x="3.33331" y="3.33331" width="13.3333" height="13.3333"
								rx="2" stroke="#9DA7AE" stroke-width="1.75"></rect></svg>
							전체 약관 동의
						</button>
						<div class="css-1jf7ho2">
							<div class="css-d650kt">
								<button class="css-7hwvbl">
									<svg width="20" height="20" viewBox="0 0 20 20" fill="none"
										xmlns="http://www.w3.org/2000/svg">
									<path d="M3.33301 10L7.49967 14.1667L16.6663 5"
										stroke="#B4BFC6" stroke-width="1.75" stroke-linecap="round"
										stroke-linejoin="round"></path></svg>
									<div class="css-w2z16z">[필수] 만 14세 이상</div>
								</button>
							</div>
							<div class="css-d650kt">
								<button class="css-7hwvbl">
									<svg width="20" height="20" viewBox="0 0 20 20" fill="none"
										xmlns="http://www.w3.org/2000/svg">
									<path d="M3.33301 10L7.49967 14.1667L16.6663 5"
										stroke="#B4BFC6" stroke-width="1.75" stroke-linecap="round"
										stroke-linejoin="round"></path></svg>
									<div class="css-w2z16z">[필수] 서비스 약관 동의</div>
								</button>
								<a class="css-1rvdgmi">보기</a>
							</div>
							<div class="css-d650kt">
								<button class="css-7hwvbl">
									<svg width="20" height="20" viewBox="0 0 20 20" fill="none"
										xmlns="http://www.w3.org/2000/svg">
									<path d="M3.33301 10L7.49967 14.1667L16.6663 5"
										stroke="#B4BFC6" stroke-width="1.75" stroke-linecap="round"
										stroke-linejoin="round"></path></svg>
									<div class="css-w2z16z">[필수] 개인정보처리방침 및 제3자 제공 동의</div>
								</button>
								<a class="css-1rvdgmi">보기</a>
							</div>
							<div class="css-d650kt">
								<button class="css-7hwvbl">
									<svg width="20" height="20" viewBox="0 0 20 20" fill="none"
										xmlns="http://www.w3.org/2000/svg">
									<path d="M3.33301 10L7.49967 14.1667L16.6663 5"
										stroke="#B4BFC6" stroke-width="1.75" stroke-linecap="round"
										stroke-linejoin="round"></path></svg>
									<div class="css-w2z16z">[선택] 광고성 정보 수신 동의</div>
								</button>
							</div>
							<div class="css-1v77z3r">
								<div></div>
								수신 동의 시 스파르타코딩클럽 강의 전용<br>
								<span>20,000원 할인쿠폰</span>즉시 지급!
							</div>
						</div>
					</div>
					<div direction="vertical" size="40" class="css-ygt1wz"></div>
					<button color="#FFFFFF" class="css-j27xag">가입하기</button>
				</div>
			</div>
		</div>
	</div>

</body>
</html>