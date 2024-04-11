<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/res/js/sparta/common/common_js.jsp"%>  
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/res/css/sparta/common.css">
<style>
/* 헤더 css */
.css-huvhzc{width:86px;height:100%;}
.css-w7kb9x{display:-webkit-box;display:-webkit-flex;display:-ms-flexbox;display:flex;height:32px;padding:16px 12px;-webkit-box-pack:center;-ms-flex-pack:center;-webkit-justify-content:center;justify-content:center;-webkit-align-items:center;-webkit-box-align:center;-ms-flex-align:center;align-items:center;gap:10px;border-radius:4px;border:1px solid #E8344E;background:#FFFFFF;cursor:pointer;}
.css-7oag7h{font-family:Pretendard;font-style:normal;font-weight:400;font-size:13px;line-height:20px;color:#141617;color:#E8344E;text-align:center;}
.css-1butcu{position:relative;display:flex;gap:16px;-webkit-box-align:center;align-items:center;}
.header-menu{z-index:20;display:flex;flex-direction:column;transition:all 0.4s ease 0s;background-color:white;height:60px;width:100%;border-bottom:1px solid rgb(228, 235, 240);position:fixed;}
.header-menu *{word-break:normal;white-space:nowrap;box-sizing:border-box;}
.header-menu ::before,.header-menu ::after{box-sizing:inherit;}
.css-we70d5{z-index:20;width:100%;height:34px;max-width:1200px;padding:0px 24px;display:flex;-webkit-box-pack:justify;justify-content:space-between;gap:20px;flex-wrap:nowrap;min-width:820px;margin:14px auto 12px;}
.header-logo{display:flex;-webkit-box-align:center;align-items:center;cursor:pointer;}.header-menu-btn{font-family:Pretendard;font-style:normal;font-weight:600;font-size:16px;line-height:26px;padding:9px 10px 8px;color:rgb(20, 22, 23);cursor:pointer;display:flex;flex-direction:row;gap:6px;-webkit-box-align:center;align-items:center;}
.header-menu-btn:hover{display:inline-flex;padding:9px 10px 8px;border-radius:6px;background:rgb(242, 246, 248);}
.css-17uj2d3{display:flex;padding:1px 4px;-webkit-box-pack:center;justify-content:center;-webkit-box-align:center;align-items:center;border-radius:4px;background:rgb(238, 243, 246);color:rgb(129, 137, 143);cursor:pointer;font-size:10px;font-style:normal;font-weight:600;line-height:160%;}
@media (min-width: 820px){
.css-17uj2d3{height:18px;}
}

</style>
<title>스파르타코딩클럽 - 코딩, 5주만에 왕초보 탈출!</title>
</head>
<body>
	<div id="headerDiv">
		<div class="header-menu">
			<div class="css-we70d5">
				<div class="css-1butcu">
					<div class="header-logo">
						<img
							src="/res/static.spartacodingclub.kr/TeamSparta-Inc/scc-frontend/assets/icons/logo-active.png"
							alt="스파르타코딩클럽 로고" class="css-huvhzc">
					</div>
					<div id="listMenu" class="header-menu-btn">전체 강의</div>
					<div class="header-menu-btn">
						부트캠프
						<div class="css-17uj2d3">국비</div>
					</div>
					<div class="header-menu-btn">커뮤니티</div>
					<div class="header-menu-btn">블로그</div>
					<div class="header-menu-btn">이벤트</div>
				</div>
				<div class="css-1butcu">
					<div id="loginDiv" class="css-w7kb9x">
						<div class="css-7oag7h">로그인</div>
					</div>
				</div>
			</div>
		</div>
	</div>
    <div id="modal"></div>
    </body>
</html>
