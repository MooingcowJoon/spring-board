<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <!-- Mirrored from spartacodingclub.kr/ by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 08 Apr 2024 03:58:01 GMT -->
    <!-- Added by HTTrack -->
    <meta http-equiv="content-type" content="text/html;charset=utf-8"/>
    <!-- /Added by HTTrack -->
    <head>
        <meta charSet="utf-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no, user-scalable=no"/>
        <link rel="shortcut icon" href="css/images/favicon.png"/>
        <meta name="robots" content="index, follow"/>
        <meta name="googlebot" content="index, follow"/>
        <meta name="yeti" content="index, follow"/>
        <meta name="author" content="Sparta Coding Club"/>
        <meta property="og:site_name" content="스파르타코딩클럽"/>
        <meta property="og:type" content="article"/>
        <meta property="og:locale" content="ko_KR"/>
        <link rel="preconnect" href="#"/>
        <link rel="preconnect" href="https://t1.daumcdn.net/" crossorigin="anonymous"/>
        <link rel="preconnect" href="https://cdn.channel.io/" crossorigin="anonymous"/>
        <script>
            (function(w, d, s, l, i) {
                w[l] = w[l] || [];
                w[l].push({
                    'gtm.start': new Date().getTime(),
                    event: 'gtm.js'
                });
                var f = d.getElementsByTagName(s)[0]
                  , j = d.createElement(s)
                  , dl = l != 'dataLayer' ? '&l=' + l : '';
                j.async = true;
                j.src = '../www.googletagmanager.com/gtm5445.html?id=' + i + dl;
                f.parentNode.insertBefore(j, f);
            }
            )(window, document, 'script', 'dataLayer', 'GTM-5DJWLLCK');
        </script>
        <script type="text/javascript" async="">
            (function(w, d, a) {
                w.__beusablerumclient__ = {
                    load: function(src) {
                        var b = d.createElement("script");
                        b.src = src;
                        b.async = true;
                        b.type = "text/javascript";
                        d.getElementsByTagName("head")[0].appendChild(b);
                    }
                };
                w.__beusablerumclient__.load(a + "?url=" + encodeURIComponent(d.URL));
            }
            )(window, document, "//rum.beusable.net/load/b230718e115944u323");
        </script>
        <style data-emotion="css-global 1orzfga">
            * {
                margin: 0;
                line-height: 1.5;
            }

            html {
                font-size: 10px;
                scroll-behavior: smooth;
            }

            body {
                height: 100%;
                margin: 0;
                overflow-x: hidden;
                font-size: 1.4rem;
                box-sizing: border-box;
            }

            @media screen and (max-width: 320px) {
                body {
                    width:352px;
                    box-sizing: content-box;
                }
            }

            a,button {
                -webkit-text-decoration: none;
                text-decoration: none;
                cursor: pointer;
            }

            input:-webkit-autofill,input:-webkit-autofill:focus {
                -webkit-transition: background-color 600000s 0s,color 600000s 0s;
                transition: background-color 600000s 0s,color 600000s 0s;
            }

            h1 {
                font-size: 2.4rem;
            }

            @media (min-width: 1024px) {
                h1 {
                    font-size:4rem;
                }
            }

            h2 {
                font-size: 2.2rem;
            }

            @media (min-width: 1024px) {
                h2 {
                    font-size:3.2rem;
                }
            }

            h3 {
                font-size: 1.8rem;
            }

            @media (min-width: 1024px) {
                h3 {
                    font-size:2.2rem;
                }
            }

            h4 {
                font-size: 1.6rem;
            }

            @media (min-width: 1024px) {
                h4 {
                    font-size:2rem;
                }
            }

            h5 {
                font-size: 1.4rem;
            }

            @media (min-width: 1024px) {
                h5 {
                    font-size:1.8rem;
                }
            }

            h6 {
                font-size: 1.4rem;
            }

            @media (min-width: 1024px) {
                h6 {
                    font-size:1.4rem;
                }
            }

            ul {
                margin-block-start:0;margin-block-end:0;-webkit-padding-start: 0;
                padding-inline-start:0;}

            @media (min-width: 1024px) {
                .mobile-only {
                    display:none;
                }
            }
        </style>
        <style>
            @font-face {
                font-display: swap;
                font-family: &#x27;
                SpoqaHanSansNeo&#x27;; font-style: normal;
                font-weight: 400;
                src: url(%27https_/static.spartacodingclub.kr/static/fonts/SpoqaHanSansNeo/404) format(&#x27;
                woff&#x27;), url(%27https_/static.spartacodingclub.kr/static/fonts/SpoqaHanSansNeo/404-2) format(&#x27;otf&#x27;) }

            @font-face {
                font-display: swap;
                font-family: &#x27;
                GmarketSans&#x27;; font-weight: 300;
                font-style: normal;
                src: url(%27https_/static.spartacodingclub.kr/static/fonts/GmarketSans/404) format(&quot;
                woff2&quot;), url(%27https_/static.spartacodingclub.kr/static/fonts/GmarketSans/404-2) format(&quot;woff&quot;); }

            @font-face {
                font-display: swap;
                font-family: &#x27;
                GmarketSans&#x27;; font-weight: 400;
                font-style: normal;
                src: url(%27https_/static.spartacodingclub.kr/static/fonts/GmarketSans/404-3) format(&quot;
                woff2&quot;), url(%27https_/static.spartacodingclub.kr/static/fonts/GmarketSans/404-4) format(&quot;woff&quot;); }

            @font-face {
                font-display: swap;
                font-family: &#x27;
                GmarketSans&#x27;; font-weight: 700;
                font-style: normal;
                src: url(%27https_/static.spartacodingclub.kr/static/fonts/GmarketSans/404-5) format(&quot;
                woff2&quot;), url(%27https_/static.spartacodingclub.kr/static/fonts/GmarketSans/404-6) format(&quot;woff&quot;); }

            @font-face {
                font-display: swap;
                font-family: &#x27;
                Pretendard&#x27;; font-weight: 100;
                font-style: normal;
                src: local(Pretendard Thin), url(%27https_/static.spartacodingclub.kr/static/fonts/Pretendard/404) format(&quot;
                woff2&quot;), url(%27https_/static.spartacodingclub.kr/static/fonts/Pretendard/404-2) format(&quot;woff&quot;), url(%27https_/static.spartacodingclub.kr/static/fonts/Pretendard/404-3); }

            @font-face {
                font-display: swap;
                font-family: &#x27;
                Pretendard&#x27;; font-weight: 200;
                font-style: normal;
                src: local(Pretendard ExtraLight), url(%27https_/static.spartacodingclub.kr/static/fonts/Pretendard/404-4) format(&quot;
                woff2&quot;), url(%27https_/static.spartacodingclub.kr/static/fonts/Pretendard/404-5) format(&quot;woff&quot;), url(%27https_/static.spartacodingclub.kr/static/fonts/Pretendard/404-6); }

            @font-face {
                font-display: swap;
                font-family: &#x27;
                Pretendard&#x27;; font-weight: 300;
                font-style: normal;
                src: local(Pretendard Light), url(%27https_/static.spartacodingclub.kr/static/fonts/Pretendard/404-7) format(&quot;
                woff2&quot;), url(%27https_/static.spartacodingclub.kr/static/fonts/Pretendard/404-8) format(&quot;woff&quot;), url(%27https_/static.spartacodingclub.kr/static/fonts/Pretendard/404-9); }

            @font-face {
                font-display: swap;
                font-family: &#x27;
                Pretendard&#x27;; font-weight: 400;
                font-style: normal;
                src: local(Pretendard Regular), url(%27https_/static.spartacodingclub.kr/static/fonts/Pretendard/404-10) format(&quot;
                woff2&quot;), url(%27https_/static.spartacodingclub.kr/static/fonts/Pretendard/404-11) format(&quot;woff&quot;), url(%27https_/static.spartacodingclub.kr/static/fonts/Pretendard/404-12); }

            @font-face {
                font-display: swap;
                font-family: &#x27;
                Pretendard&#x27;; font-weight: 500;
                font-style: normal;
                src: local(Pretendard Medium), url(%27https_/static.spartacodingclub.kr/static/fonts/Pretendard/404-13) format(&quot;
                woff2&quot;), url(%27https_/static.spartacodingclub.kr/static/fonts/Pretendard/404-14) format(&quot;woff&quot;), url(%27https_/static.spartacodingclub.kr/static/fonts/Pretendard/404-15); }

            @font-face {
                font-display: swap;
                font-family: &#x27;
                Pretendard&#x27;; font-weight: 600;
                font-style: normal;
                src: local(Pretendard SemiBold), url(%27https_/static.spartacodingclub.kr/static/fonts/Pretendard/404-16) format(&quot;
                woff2&quot;), url(%27https_/static.spartacodingclub.kr/static/fonts/Pretendard/404-17) format(&quot;woff&quot;), url(%27https_/static.spartacodingclub.kr/static/fonts/Pretendard/404-18); }

            @font-face {
                font-display: swap;
                font-family: &#x27;
                Pretendard&#x27;; font-weight: 700;
                font-style: normal;
                src: local(Pretendard Bold), url(%27https_/static.spartacodingclub.kr/static/fonts/Pretendard/404-19) format(&quot;
                woff2&quot;), url(%27https_/static.spartacodingclub.kr/static/fonts/Pretendard/404-20) format(&quot;woff&quot;), url(%27https_/static.spartacodingclub.kr/static/fonts/Pretendard/404-21); }

            @font-face {
                font-display: swap;
                font-family: &#x27;
                Pretendard&#x27;; font-weight: 800;
                font-style: normal;
                src: url(%27https_/static.spartacodingclub.kr/static/fonts/Pretendard/404-22) format(&quot;
                woff2&quot;), url(%27https_/static.spartacodingclub.kr/static/fonts/Pretendard/404-23) format(&quot;woff&quot;), url(%27https_/static.spartacodingclub.kr/static/fonts/Pretendard/404-24); }

            @font-face {
                font-display: swap;
                font-family: &#x27;
                Pretendard&#x27;; font-weight: 900;
                font-style: normal;
                src: url(%27https_/static.spartacodingclub.kr/static/fonts/Pretendard/404-25) format(&quot;
                woff2&quot;), url(%27https_/static.spartacodingclub.kr/static/fonts/Pretendard/404-26) format(&quot;woff&quot;), url(%27https_/static.spartacodingclub.kr/static/fonts/Pretendard/404-27); }

            @font-face {
                font-display: swap;
                font-family: &#x27;
                SpoqaHanSans&#x27;; font-weight: 300;
                font-style: normal;
                src: url(%27https_/static.spartacodingclub.kr/static/fonts/SpoqaHanSans/404) format(&#x27;
                woff&#x27;); }

            @font-face {
                font-display: swap;
                font-family: &#x27;
                SpoqaHanSans&#x27;; font-weight: 400;
                font-style: normal;
                src: url(%27https_/static.spartacodingclub.kr/static/fonts/SpoqaHanSans/404-2) format(&#x27;
                woff&#x27;); }

            @font-face {
                font-display: swap;
                font-family: &#x27;
                SpoqaHanSans&#x27;; font-weight: 700;
                font-style: normal;
                src: url(%27https_/static.spartacodingclub.kr/static/fonts/SpoqaHanSans/404-3) format(&#x27;
                woff&#x27;); }

            @font-face {
                font-display: swap;
                font-family: &#x27;
                Cafe24Ohsquare&#x27;; font-weight: 500;
                font-style: normal;
                src: url(%27https_/static.spartacodingclub.kr/static/fonts/Cafe24Ohsquare/404) format(&quot;
                woff2&quot;), url(%27https_/static.spartacodingclub.kr/static/fonts/Cafe24Ohsquare/404-2) format(&quot;woff&quot;), url(%27https_/static.spartacodingclub.kr/static/fonts/Cafe24Ohsquare/404-3); }

            @font-face {
                font-family: &#x27;
                NanumHandWritingDaughter&#x27;; font-style: normal;
                font-weight: 400;
                src: url(%27https_/static.spartacodingclub.kr/static/fonts/404) format(&quot;
                woff2&quot;); }

            @font-face {
                font-family: &#x27;
                ThefaceshopInklipquid&#x27;; font-style: normal;
                font-weight: 400;
                src: url(%27https_/static.spartacodingclub.kr/static/fonts/ThefaceshopInklipquid/404) format(&quot;
                woff&quot;), url(%27https_/static.spartacodingclub.kr/static/fonts/ThefaceshopInklipquid/404-2); }

            @font-face {
                font-family: &#x27;
                SbAggroBold&#x27;; font-weight: 700;
                font-style: normal;
                src: url(%27https_/static.spartacodingclub.kr/static/fonts/SbAggro/404) format(&quot;
                woff2&quot;), url(%27https_/static.spartacodingclub.kr/static/fonts/SbAggro/404-2) format(&quot;woff&quot;), url(%27https_/static.spartacodingclub.kr/static/fonts/SbAggro/404-3); }

            @font-face {
                font-family: &#x27;
                DungGeunMo&#x27;; font-style: normal;
                font-weight: 400;
                src: url(%27https_/static.spartacodingclub.kr/static/fonts/DungGeunMo/404) format(&quot;
                woff&quot;), url(%27https_/static.spartacodingclub.kr/static/fonts/DungGeunMo/404-2); }

            @font-face {
                font-family: &#x27;
                Tmoney RoundWind&#x27;; font-style: normal;
                font-weight: 400;
                src: url(%27https_/static.spartacodingclub.kr/static/fonts/404-2) format(&quot;
                woff2&quot;), url(%27https_/static.spartacodingclub.kr/static/fonts/404-3); }

            @font-face {
                font-family: &#x27;
                Cafe24Surround&#x27;; font-style: normal;
                font-weight: 400;
                src: url(%27https_/static.spartacodingclub.kr/static/fonts/404-4) format(&quot;
                woff2&quot;), url(%27https_/static.spartacodingclub.kr/static/fonts/404-5) }

            @font-face {
                font-family: &#x27;
                EBSHunminjeongeumSBA&#x27;; src: url(%27https_/cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_one%401.0/404) format(&#x27;
                woff&#x27;); font-weight: normal;
                font-style: normal;
            }

            @font-face {
                font-family: &#x27;
                Dokrip&#x27;; src: url(%27https_/cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_twelve%401.1/404) format(&#x27;
                woff&#x27;); font-weight: normal;
                font-style: normal;
            }

            @font-face {
                font-family: &#x27;
                DsDigital&#x27;; src: url(%27/fonts/DsDigital/404) format(&#x27;
                truetype&#x27;); font-weight: normal;
                font-style: normal;
            }

            @font-face {
                font-family: &#x27;
                YoonDokrip&#x27;; font-style: normal;
                font-weight: 500;
                src: url(%27https_/cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_twelve%401.1/404) format(&#x27;
                woff&#x27;); url(%27https_/static.spartacodingclub.kr/static/fonts/404-6) format(&#x27;woff&#x27;), url(%27https_/static.spartacodingclub.kr/static/fonts/404-7) format(&#x27;otf&#x27;); }
        </style>
        <title>스파르타코딩클럽 - 코딩, 5주만에 왕초보 탈출!</title>
        <meta name="description" content="2023 올해의 브랜드 대상 코딩 교육 부문 1위! 코딩 왕초보를 위한 쉽고 재밌는 강의로 스파르타코딩클럽에서 지금 코딩 시작하세요."/>
        <meta name="keywords" content="웹개발, 코딩공부, 프로그래밍, 파이썬, 코딩학원, 코딩, 코딩 스터디, 컴퓨터, 부트캠프, 개발자, 취업, 사이드 프로젝트, 개발자, 개발자 취업, 스터디, AWS, 웹서버, 왕초보, 서버, 클라이언트, 자바스크립트, html, css"/>
        <meta name="naver-site-verification" content="0a8a7f208437cf8e9bc8861b6cdfe859fe0b2787"/>
        <meta property="og:url" content="https://spartacodingclub.kr"/>
        <meta property="og:title" content="스파르타코딩클럽"/>
        <meta property="og:description" content="5주 완성! 코딩을 전혀 모르는 비개발자 대상의 웹개발 강의"/>
        <meta property="og:image" content="/css/images/scc-og.jpg"/>
        <script type="application/ld+json">
            {
                "@context": "http://schema.org",
                "@type": "Product",
                "name": "스파르타코딩클럽",
                "image": "https://static.spartacodingclub.kr/meta/scc-og.jpg",
                "description": "누구나 큰일 내는 세상을 위한, 모두를 위한 SW교육. 스파르타코딩클럽이 함께하겠습니다",
                "url": "https://spartacodingclub.kr/",
                "brand": {
                    "@type": "Brand",
                    "name": "스파르타코딩클럽",
                    "logo": "https://static.spartacodingclub.kr/meta/scc-logo.png"
                },
                "offers": {
                    "@type": "Offer",
                    "priceCurrency": "KRW",
                    "price": "0"
                },
                "sameAs": [
                    "https://www.youtube.com/channel/UC2Fh3XoQYNYTba-cigq5cAA",
                    "https://www.youtube.com/channel/UCi2LvS1cmM8mCZwBC1DiOPg",
                    "https://www.youtube.com/channel/UCUHPD2E7FtSBcQO4KRd_yQg",
                    "https://www.instagram.com/spartacodingclub",
                    "https://www.instagram.com/iamrtanny/",
                    "https://www.instagram.com/hanghae99/",
                    "https://www.facebook.com/spartacodingclub",
                    "https://blog.naver.com/spartacoding",
                    "https://brunch.co.kr/@sparta"
                ]
            }</script>
        <meta name="next-head-count" content="27"/>
        <link rel="manifest" href="manifest.json"/>
        <link rel="stylesheet" type="text/css" href="css/nprogress.css"/>
        <link rel="shortcut icon" href="css/images/favicon.png"/>
        <link rel="apple-touch-icon" href="assets/icons/icon-192x192.png"/>
        <link rel="apple-touch-startup-image" href="css/images/splashscreens/iphone5_splash.png" media="screen and (device-width: 320px) and (device-height: 568px) and (-webkit-device-pixel-ratio: 2) and (orientation: portrait)"/>
        <link rel="apple-touch-startup-image" href="css/images/splashscreens/iphone6_splash.png" media="screen and (device-width: 375px) and (device-height: 667px) and (-webkit-device-pixel-ratio: 2) and (orientation: portrait)"/>
        <link rel="apple-touch-startup-image" href="css/images/splashscreens/iphoneplus_splash.png" media="screen and (device-width: 414px) and (device-height: 736px) and (-webkit-device-pixel-ratio: 3) and (orientation: portrait)"/>
        <link rel="apple-touch-startup-image" href="css/images/splashscreens/iphonex_splash.png" media="screen and (device-width: 375px) and (device-height: 812px) and (-webkit-device-pixel-ratio: 3) and (orientation: portrait)"/>
        <link rel="apple-touch-startup-image" href="css/images/splashscreens/ipad_splash.png" media="screen and (min-device-width: 768px) and (max-device-width: 1024px) and (-webkit-min-device-pixel-ratio: 2) and (orientation: portrait)"/>
        <link rel="apple-touch-startup-image" href="css/images/splashscreens/ipadpro1_splash.png" media="screen and (min-device-width: 834px) and (max-device-width: 834px) and (-webkit-min-device-pixel-ratio: 2) and (orientation: portrait)"/>
        <link rel="apple-touch-startup-image" href="css/images/splashscreens/ipadpro2_splash.png" media="(min-device-width: 1024px) and (max-device-width: 1024px) and (-webkit-min-device-pixel-ratio: 2) and (orientation: portrait)"/>
        <meta name="msapplication-TileColor" content="#e8344e"/>
        <meta name="theme-color" content="#ffffff"/>
        <meta name="mobile-web-app-capable" content="yes"/>
        <meta name="apple-touch-fullscreen" content="yes"/>
        <meta name="apple-mobile-web-app-title" content="MobileSparta"/>
        <meta name="apple-mobile-web-app-capable" content="yes"/>
        <meta name="apple-mobile-web-app-status-bar-style" content="default"/>
        <link rel="preload" href="_next/static/css/a68d89039227ee7e.css" as="style"/>
        <link rel="stylesheet" href="_next/static/css/a68d89039227ee7e.css" data-n-g=""/>
        <noscript data-n-css=""></noscript>
        <script defer="" nomodule="" src="_next/static/chunks/polyfills-c67a75d1b6f99dc8.js"></script>
        <script defer="" src="_next/static/chunks/8818.35d3d0f1bca63933.js"></script>
        <script src="_next/static/chunks/webpack-5f91d44e86ff3cfb.js" defer=""></script>
        <script src="_next/static/chunks/framework-c7566a87c14ec62f.js" defer=""></script>
        <script src="_next/static/chunks/main-d701c7a13e9ec635.js" defer=""></script>
        <script src="_next/static/chunks/pages/_app-b4532d877f699213.js" defer=""></script>
        <script src="_next/static/chunks/488-17129eb964ce3e6e.js" defer=""></script>
        <script src="_next/static/chunks/pages/index-a63ed41e9520e420.js" defer=""></script>
        <script src="_next/static/QR_8_Hgv6WHR9hmsiOMFh/_buildManifest.js" defer=""></script>
        <script src="_next/static/QR_8_Hgv6WHR9hmsiOMFh/_ssgManifest.js" defer=""></script>
    </head>
    <body>
        <div id="__next">
            <meta charSet="utf-8"/>
            <noscript>
                <iframe src="https://www.googletagmanager.com/ns.html?id=GTM-5DJWLLCK" height="0" width="0" style="display:none;visibility:hidden"></iframe>
            </noscript>
            <div id="modal"></div>
            <script>
                (function() {
                    var w = window;
                    if (w.ChannelIO) {
                        return (window.console.error || window.console.log || function() {}
                        )('ChannelIO script included twice.');
                    }
                    var ch = function() {
                        ch.c(arguments);
                    };
                    ch.q = [];
                    ch.c = function(args) {
                        ch.q.push(args);
                    }
                    ;
                    w.ChannelIO = ch;

                    function l() {
                        if (w.ChannelIOInitialized) {

                            return;
                        }
                        w.ChannelIOInitialized = true;
                        var s = document.createElement('script');
                        s.type = 'text/javascript';
                        s.async = true;
                        s.src = '../cdn.channel.io/plugin/ch-plugin-web.js';
                        s.charset = 'UTF-8';
                        var x = document.getElementsByTagName('script')[0];
                        x.parentNode.insertBefore(s, x);
                    }

                    if (document.readyState === 'complete') {
                        l();
                    } else if (window.attachEvent) {
                        window.attachEvent('onload', l);
                    } else {
                        window.addEventListener('DOMContentLoaded', l, false);
                        window.addEventListener('load', l, false);
                    }
                }
                )();
            </script>
            <style data-emotion="css 1lj3l42">
                .css-1lj3l42 {
                    position: fixed;
                    z-index: 20;
                    display: -webkit-box;
                    display: -webkit-flex;
                    display: -ms-flexbox;
                    display: flex;
                    -webkit-flex-direction: column;
                    -ms-flex-direction: column;
                    flex-direction: column;
                    height: -webkit-fit-content;
                    height: -moz-fit-content;
                    height: fit-content;
                    overflow: hidden;
                    width: 100%;
                    box-shadow: inset 0px -2px 0px #eef3f6;
                }

                .css-1lj3l42 * {
                    word-break: normal;
                    white-space: nowrap;
                    box-sizing: border-box;
                }

                .css-1lj3l42 *:before,.css-1lj3l42 *:after {
                    -webkit-box-sizing: inherit;
                    -moz-box-sizing: inherit;
                    box-sizing: inherit;
                }
            </style>
            <div class="css-1lj3l42">
                <style data-emotion="css 1ehw6bj">
                    .css-1ehw6bj {
                        display: -webkit-box;
                        display: -webkit-flex;
                        display: -ms-flexbox;
                        display: flex;
                        -webkit-box-pack: justify;
                        -webkit-justify-content: space-between;
                        justify-content: space-between;
                        -webkit-align-items: center;
                        -webkit-box-align: center;
                        -ms-flex-align: center;
                        align-items: center;
                        height: 50px;
                        padding: 0 16px;
                        z-index: 20;
                        box-shadow: inset 0px -2px 0px #eef3f6;
                        background-color: white;
                        -webkit-flex-shrink: 0;
                        -ms-flex-negative: 0;
                        flex-shrink: 0;
                    }
                </style>
                <div class="css-1ehw6bj">
                    <style data-emotion="css 1dk7iwp">
                        .css-1dk7iwp {
                            display: -webkit-box;
                            display: -webkit-flex;
                            display: -ms-flexbox;
                            display: flex;
                            -webkit-align-items: center;
                            -webkit-box-align: center;
                            -ms-flex-align: center;
                            align-items: center;
                            width: 54px;
                            -webkit-box-pack: start;
                            -ms-flex-pack: start;
                            -webkit-justify-content: flex-start;
                            justify-content: flex-start;
                        }
                    </style>
                    <div class="css-1dk7iwp">
                        <svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <path d="M3.33203 5H16.6654" stroke="#141617" stroke-width="1.75" stroke-linecap="round"></path>
                            <path d="M3.33203 10H16.6654" stroke="#141617" stroke-width="1.75" stroke-linecap="round"></path>
                            <path d="M3.33203 15H16.6654" stroke="#141617" stroke-width="1.75" stroke-linecap="round"></path>
                        </svg>
                    </div>
                    <style data-emotion="css 1sg2lsz">
                        .css-1sg2lsz {
                            display: -webkit-box;
                            display: -webkit-flex;
                            display: -ms-flexbox;
                            display: flex;
                            -webkit-align-items: center;
                            -webkit-box-align: center;
                            -ms-flex-align: center;
                            align-items: center;
                        }
                    </style>
                    <div class="css-1sg2lsz">
                        <style data-emotion="css huvhzc">
                            .css-huvhzc {
                                width: 86px;
                                height: 100%;
                            }
                        </style>
                        <img src="../static.spartacodingclub.kr/TeamSparta-Inc/scc-frontend/assets/icons/logo-active.png" alt="스파르타코딩클럽 로고" class="css-huvhzc"/>
                    </div>
                    <style data-emotion="css fqb2g8">
                        .css-fqb2g8 {
                            display: -webkit-box;
                            display: -webkit-flex;
                            display: -ms-flexbox;
                            display: flex;
                            -webkit-box-pack: end;
                            -ms-flex-pack: end;
                            -webkit-justify-content: flex-end;
                            justify-content: flex-end;
                            -webkit-align-items: center;
                            -webkit-box-align: center;
                            -ms-flex-align: center;
                            align-items: center;
                            gap: 16px;
                        }
                    </style>
                    <div class="css-fqb2g8">
                        <style data-emotion="css w7kb9x">
                            .css-w7kb9x {
                                display: -webkit-box;
                                display: -webkit-flex;
                                display: -ms-flexbox;
                                display: flex;
                                height: 32px;
                                padding: 16px 12px;
                                -webkit-box-pack: center;
                                -ms-flex-pack: center;
                                -webkit-justify-content: center;
                                justify-content: center;
                                -webkit-align-items: center;
                                -webkit-box-align: center;
                                -ms-flex-align: center;
                                align-items: center;
                                gap: 10px;
                                border-radius: 4px;
                                border: 1px solid #E8344E;
                                background: #FFFFFF;
                                cursor: pointer;
                            }

                            @media (min-width: 820px) {
                                .css-w7kb9x {
                                    height:36px;
                                }
                            }
                        </style>
                        <div class="css-w7kb9x">
                            <style data-emotion="css 7oag7h">
                                .css-7oag7h {
                                    font-family: Pretendard;
                                    font-style: normal;
                                    font-weight: 400;
                                    font-size: 13px;
                                    line-height: 20px;
                                    color: #141617;
                                    color: #E8344E;
                                    text-align: center;
                                }
                            </style>
                            <div class="css-7oag7h">로그인</div>
                        </div>
                    </div>
                </div>
                <style data-emotion="css fazohs">
                    .css-fazohs {
                        background: linear-gradient(90deg, #fff6dd 0%, #fff1f4 100%);
                        margin-top: -1px;
                        white-space: nowrap;
                        height: 0;
                        overflow: hidden;
                        -webkit-transition: height 0.4s;
                        transition: height 0.4s;
                        position: relative;
                        z-index: 0;
                        min-width: 360px;
                    }

                    @media (min-width: 768px) {
                        .css-fazohs {
                            height:0;
                        }
                    }
                </style>
                <div class="css-fazohs">
                    <style data-emotion="css 1klcaje">
                        .css-1klcaje {
                            padding: 12px 16px;
                            height: 100%;
                            display: -webkit-box;
                            display: -webkit-flex;
                            display: -ms-flexbox;
                            display: flex;
                            -webkit-box-pack: justify;
                            -webkit-justify-content: space-between;
                            justify-content: space-between;
                            color: white;
                            -webkit-align-items: flex-start;
                            -webkit-box-align: flex-start;
                            -ms-flex-align: flex-start;
                            align-items: flex-start;
                        }

                        @media (min-width: 768px) {
                            .css-1klcaje {
                                padding:16px;
                                max-width: 1184px;
                                margin: auto;
                                display: -webkit-box;
                                display: -webkit-flex;
                                display: -ms-flexbox;
                                display: flex;
                                -webkit-align-items: center;
                                -webkit-box-align: center;
                                -ms-flex-align: center;
                                align-items: center;
                            }
                        }
                    </style>
                    <div class="css-1klcaje">
                        <style data-emotion="css 3u8r53">
                            .css-3u8r53 {
                                cursor: pointer;
                                width: 100%;
                                display: -webkit-box;
                                display: -webkit-flex;
                                display: -ms-flexbox;
                                display: flex;
                                -webkit-flex-direction: row;
                                -ms-flex-direction: row;
                                flex-direction: row;
                                -webkit-align-items: center;
                                -webkit-box-align: center;
                                -ms-flex-align: center;
                                align-items: center;
                                -webkit-box-pack: center;
                                -ms-flex-pack: center;
                                -webkit-justify-content: center;
                                justify-content: center;
                                font-weight: 700;
                                line-height: 1.5;
                                color: white;
                                font-size: 14px;
                                gap: 4px;
                            }

                            font-family:@font-face {
                                font-display: swap;
                                font-family: 'Pretendard';
                                font-weight: 100;
                                font-style: normal;
                                src: local(Pretendard Thin),url('https://static.spartacodingclub.kr/static/fonts/Pretendard/Pretendard-Thin.subset.woff2') format("woff2"),url('https://static.spartacodingclub.kr/static/fonts/Pretendard/Pretendard-Thin.subset.woff') format("woff"),url('https://static.spartacodingclub.kr/static/fonts/Pretendard/Pretendard-Thin.otf');
                            }

                            @font-face {
                                font-display: swap;
                                font-family: 'Pretendard';
                                font-weight: 200;
                                font-style: normal;
                                src: local(Pretendard ExtraLight),url('https://static.spartacodingclub.kr/static/fonts/Pretendard/Pretendard-ExtraLight.subset.woff2') format("woff2"),url('https://static.spartacodingclub.kr/static/fonts/Pretendard/Pretendard-ExtraLight.subset.woff') format("woff"),url('https://static.spartacodingclub.kr/static/fonts/Pretendard/Pretendard-ExtraLight.otf');
                            }

                            @font-face {
                                font-display: swap;
                                font-family: 'Pretendard';
                                font-weight: 300;
                                font-style: normal;
                                src: local(Pretendard Light),url('https://static.spartacodingclub.kr/static/fonts/Pretendard/Pretendard-Light.subset.woff2') format("woff2"),url('https://static.spartacodingclub.kr/static/fonts/Pretendard/Pretendard-Light.subset.woff') format("woff"),url('https://static.spartacodingclub.kr/static/fonts/Pretendard/Pretendard-Light.otf');
                            }

                            @font-face {
                                font-display: swap;
                                font-family: 'Pretendard';
                                font-weight: 400;
                                font-style: normal;
                                src: local(Pretendard Regular),url('https://static.spartacodingclub.kr/static/fonts/Pretendard/Pretendard-Regular.subset.woff2') format("woff2"),url('https://static.spartacodingclub.kr/static/fonts/Pretendard/Pretendard-Regular.subset.woff') format("woff"),url('https://static.spartacodingclub.kr/static/fonts/Pretendard/Pretendard-Regular.otf');
                            }

                            @font-face {
                                font-display: swap;
                                font-family: 'Pretendard';
                                font-weight: 500;
                                font-style: normal;
                                src: local(Pretendard Medium),url('https://static.spartacodingclub.kr/static/fonts/Pretendard/Pretendard-Medium.subset.woff2') format("woff2"),url('https://static.spartacodingclub.kr/static/fonts/Pretendard/Pretendard-Medium.subset.woff') format("woff"),url('https://static.spartacodingclub.kr/static/fonts/Pretendard/Pretendard-Medium.otf');
                            }

                            @font-face {
                                font-display: swap;
                                font-family: 'Pretendard';
                                font-weight: 600;
                                font-style: normal;
                                src: local(Pretendard SemiBold),url('https://static.spartacodingclub.kr/static/fonts/Pretendard/Pretendard-SemiBold.subset.woff2') format("woff2"),url('https://static.spartacodingclub.kr/static/fonts/Pretendard/Pretendard-SemiBold.subset.woff') format("woff"),url('https://static.spartacodingclub.kr/static/fonts/Pretendard/Pretendard-SemiBold.otf');
                            }

                            @font-face {
                                font-display: swap;
                                font-family: 'Pretendard';
                                font-weight: 700;
                                font-style: normal;
                                src: local(Pretendard Bold),url('https://static.spartacodingclub.kr/static/fonts/Pretendard/Pretendard-Bold.subset.woff2') format("woff2"),url('https://static.spartacodingclub.kr/static/fonts/Pretendard/Pretendard-Bold.subset.woff') format("woff"),url('https://static.spartacodingclub.kr/static/fonts/Pretendard/Pretendard-Bold.otf');
                            }

                            @font-face {
                                font-display: swap;
                                font-family: 'Pretendard';
                                font-weight: 800;
                                font-style: normal;
                                src: url('https://static.spartacodingclub.kr/static/fonts/Pretendard/Pretendard-ExtraBold.subset.woff2') format("woff2"),url('https://static.spartacodingclub.kr/static/fonts/Pretendard/Pretendard-ExtraBold.subset.woff') format("woff"),url('https://static.spartacodingclub.kr/static/fonts/Pretendard/Pretendard-ExtraBold.otf');
                            }

                            @font-face {
                                font-display: swap;
                                font-family: 'Pretendard';
                                font-weight: 900;
                                font-style: normal;
                                src: url('https://static.spartacodingclub.kr/static/fonts/Pretendard/Pretendard-Black.subset.woff2') format("woff2"),url('https://static.spartacodingclub.kr/static/fonts/Pretendard/Pretendard-Black.subset.woff') format("woff"),url('https://static.spartacodingclub.kr/static/fonts/Pretendard/Pretendard-Black.otf');
                            }

                            @media (min-width: 768px) {
                                .css-3u8r53 {
                                    font-size:16px;
                                    gap: 6px;
                                }
                            }
                        </style>
                        <a href="https://online.spartacodingclub.kr/mypage/mycoupon" class="css-3u8r53">
                            <style data-emotion="css 1hkxqrx">
                                .css-1hkxqrx {
                                    display: -webkit-box;
                                    display: -webkit-flex;
                                    display: -ms-flexbox;
                                    display: flex;
                                    -webkit-align-items: center;
                                    -webkit-box-align: center;
                                    -ms-flex-align: center;
                                    align-items: center;
                                    -webkit-flex-direction: column;
                                    -ms-flex-direction: column;
                                    flex-direction: column;
                                    gap: 4px;
                                }

                                @media (min-width: 768px) {
                                    .css-1hkxqrx {
                                        -webkit-flex-direction:row;
                                        -ms-flex-direction: row;
                                        flex-direction: row;
                                        gap: 16px;
                                    }
                                }
                            </style>
                            <div class="css-1hkxqrx">
                                <style data-emotion="css 5oxg9r">
                                    .css-5oxg9r {
                                        border-radius: 16px;
                                        background-color: rgba(255, 255, 255, 0.8);
                                        display: -webkit-box;
                                        display: -webkit-flex;
                                        display: -ms-flexbox;
                                        display: flex;
                                        padding: 2px 8px;
                                        -webkit-align-items: center;
                                        -webkit-box-align: center;
                                        -ms-flex-align: center;
                                        align-items: center;
                                    }

                                    .css-5oxg9r div {
                                        background: linear-gradient(90deg, #fcbd18 0%, #e8344e 100%);
                                        -webkit-background-clip: text;
                                        background-clip: text;
                                        -webkit-background-clip: text;
                                        -webkit-text-fill-color: transparent;
                                    }

                                    @media (min-width: 768px) {
                                        .css-5oxg9r {
                                            padding:2px 12px;
                                        }
                                    }
                                </style>
                                <div class="css-5oxg9r">
                                    <div>에듀윌 × 스파르타</div>
                                </div>
                                <style data-emotion="css 1u9hu8i">
                                    .css-1u9hu8i {
                                        display: -webkit-box;
                                        display: -webkit-flex;
                                        display: -ms-flexbox;
                                        display: flex;
                                        -webkit-align-items: center;
                                        -webkit-box-align: center;
                                        -ms-flex-align: center;
                                        align-items: center;
                                        font-family: Pretendard;
                                        font-style: normal;
                                        font-weight: 600;
                                        font-size: 14px;
                                        line-height: 22px;
                                        color: #141617;
                                        color: #3A3E41;
                                    }

                                    @media (min-width: 768px) {
                                        .css-1u9hu8i {
                                            font-family:Pretendard;
                                            font-style: normal;
                                            font-weight: 600;
                                            font-size: 18px;
                                            line-height: 29px;
                                            color: #141617;
                                            color: #3A3E41;
                                        }
                                    }

                                    .css-1u9hu8i span {
                                        line-height: 1;
                                        color: #E8344E;
                                        margin-left: 4px;
                                    }
                                </style>
                                <div class="css-1u9hu8i">
                                    오직 에듀윌러만! <span>50% 할인 쿠폰팩 받으러 가기</span>
                                    <svg width="16" height="16" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                                        <path d="M6.13532 11.4697C5.84243 11.7626 5.84243 12.2374 6.13532 12.5303C6.42821 12.8232 6.90309 12.8232 7.19598 12.5303L6.13532 11.4697ZM10.6656 8L11.196 8.53033C11.4889 8.23744 11.4889 7.76256 11.196 7.46967L10.6656 8ZM7.19598 3.46967C6.90309 3.17678 6.42821 3.17678 6.13532 3.46967C5.84243 3.76256 5.84243 4.23744 6.13532 4.53033L7.19598 3.46967ZM7.19598 12.5303L11.196 8.53033L10.1353 7.46967L6.13532 11.4697L7.19598 12.5303ZM11.196 7.46967L7.19598 3.46967L6.13532 4.53033L10.1353 8.53033L11.196 7.46967Z" fill="#E8344E"></path>
                                    </svg>
                                </div>
                            </div>
                        </a>
                        <style data-emotion="css 1hd57dg">
                            .css-1hd57dg {
                                cursor: pointer;
                                display: -webkit-box;
                                display: -webkit-flex;
                                display: -ms-flexbox;
                                display: flex;
                                -webkit-box-pack: center;
                                -ms-flex-pack: center;
                                -webkit-justify-content: center;
                                justify-content: center;
                                -webkit-align-items: center;
                                -webkit-box-align: center;
                                -ms-flex-align: center;
                                align-items: center;
                                margin-right: 0;
                            }

                            @media (min-width: 768px) {
                                .css-1hd57dg {
                                    padding:auto 0 auto undefined;
                                    -webkit-box-pack: right;
                                    -ms-flex-pack: right;
                                    -webkit-justify-content: right;
                                    justify-content: right;
                                }
                            }
                        </style>
                        <div class="css-1hd57dg">
                            <svg width="16" height="16" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M3.33435 3.33435L12.6677 12.6677" stroke="#3A3E41" stroke-width="1.5" stroke-linecap="round"></path>
                                <path d="M12.6656 3.33435L3.33232 12.6677" stroke="#3A3E41" stroke-width="1.5" stroke-linecap="round"></path>
                            </svg>
                        </div>
                    </div>
                </div>
                <style data-emotion="css 1wfygt3">
                    .css-1wfygt3 {
                        padding: 0;
                        z-index: 22;
                        width: 100%;
                        height: 100dvh;
                        position: fixed;
                        left: -72%;
                        overflow: scroll;
                        background: white;
                        opacity: 0;
                        visibility: hidden;
                    }
                </style>
                <div class="css-1wfygt3">
                    <style data-emotion="css 1l47v8f">
                        .css-1l47v8f {
                            position: relative;
                            width: 100%;
                            height: calc( 50px + 0px );
                            overflow: hidden;
                            padding: 0 16px;
                        }
                    </style>
                    <div class="css-1l47v8f">
                        <style data-emotion="css 1bs14t3">
                            .css-1bs14t3 {
                                cursor: pointer;
                                display: -webkit-box;
                                display: -webkit-flex;
                                display: -ms-flexbox;
                                display: flex;
                                -webkit-align-items: center;
                                -webkit-box-align: center;
                                -ms-flex-align: center;
                                align-items: center;
                                -webkit-box-pack: center;
                                -ms-flex-pack: center;
                                -webkit-justify-content: center;
                                justify-content: center;
                                height: 100%;
                            }
                        </style>
                        <div class="css-1bs14t3">
                            <style data-emotion="css apputp">
                                .css-apputp {
                                    position: relative;
                                    width: 100px;
                                    height: 34px;
                                }

                                .css-apputp::-moz-selection {
                                    background: rgba(0, 0, 0, 0);
                                }

                                .css-apputp::selection {
                                    background: rgba(0, 0, 0, 0);
                                }

                                @media (min-width: 768px) {
                                    .css-apputp {
                                        width:100px;
                                        height: 34px;
                                    }
                                }
                            </style>
                            <div class="css-apputp">
                                <div class="css-7zhfhb">
                                    <span style="box-sizing:border-box;display:block;overflow:hidden;width:initial;height:initial;background:none;opacity:1;border:0;margin:0;padding:0;position:absolute;top:0;left:0;bottom:0;right:0">
                                        <img src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" decoding="async" data-nimg="fill" style="position:absolute;top:0;left:0;bottom:0;right:0;box-sizing:border-box;padding:0;border:none;margin:auto;display:block;width:0;height:0;min-width:100%;max-width:100%;min-height:100%;max-height:100%"/>
                                        <noscript>
                                            <img loading="lazy" decoding="async" data-nimg="fill" style="position:absolute;top:0;left:0;bottom:0;right:0;box-sizing:border-box;padding:0;border:none;margin:auto;display:block;width:0;height:0;min-width:100%;max-width:100%;min-height:100%;max-height:100%" sizes="100vw" srcSet="/_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Ficons%2Flogo-active.png&amp;w=640&amp;q=100 640w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Ficons%2Flogo-active.png&amp;w=750&amp;q=100 750w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Ficons%2Flogo-active.png&amp;w=828&amp;q=100 828w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Ficons%2Flogo-active.png&amp;w=1080&amp;q=100 1080w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Ficons%2Flogo-active.png&amp;w=1200&amp;q=100 1200w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Ficons%2Flogo-active.png&amp;w=1920&amp;q=100 1920w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Ficons%2Flogo-active.png&amp;w=2048&amp;q=100 2048w, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Ficons%2Flogo-active.png&amp;w=3840&amp;q=100 3840w" src="_next/logo-activefcdf.png?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Ficons%2Flogo-active.png&amp;w=3840&amp;q=100"/>
                                        </noscript>
                                    </span>
                                </div>
                            </div>
                        </div>
                        <style data-emotion="css 1yfmkua">
                            .css-1yfmkua {
                                position: absolute;
                                top: 0;
                                right: 0;
                                height: 100%;
                                display: -webkit-box;
                                display: -webkit-flex;
                                display: -ms-flexbox;
                                display: flex;
                                -webkit-align-items: center;
                                -webkit-box-align: center;
                                -ms-flex-align: center;
                                align-items: center;
                                -webkit-box-pack: center;
                                -ms-flex-pack: center;
                                -webkit-justify-content: center;
                                justify-content: center;
                                padding: 0 16px;
                                cursor: pointer;
                            }
                        </style>
                        <div class="css-1yfmkua">
                            <svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M4.16669 4.16669L15.8334 15.8334" stroke="#141617" stroke-width="1.75" stroke-linecap="round"></path>
                                <path d="M15.8333 4.16669L4.16665 15.8334" stroke="#141617" stroke-width="1.75" stroke-linecap="round"></path>
                            </svg>
                        </div>
                    </div>
                    <style data-emotion="css 17w7nyr">
                        .css-17w7nyr {
                            width: 100%;
                            height: 1px;
                            background: #EEF3F6;
                        }
                    </style>
                    <div class="css-17w7nyr"></div>
                    <style data-emotion="css 1ino9tb">
                        .css-1ino9tb {
                            height: 100dvh;
                            padding: 16px 0 30px 0;
                        }
                    </style>
                    <div class="css-1ino9tb">
                        <style data-emotion="css sj14k1">
                            .css-sj14k1 {
                                display: -webkit-box;
                                display: -webkit-flex;
                                display: -ms-flexbox;
                                display: flex;
                                -webkit-flex-direction: column;
                                -ms-flex-direction: column;
                                flex-direction: column;
                                padding: 0 16px;
                            }
                        </style>
                        <div class="css-sj14k1">
                            <style data-emotion="css uyxe0l">
                                .css-uyxe0l {
                                    display: -webkit-box;
                                    display: -webkit-flex;
                                    display: -ms-flexbox;
                                    display: flex;
                                    -webkit-flex-direction: row;
                                    -ms-flex-direction: row;
                                    flex-direction: row;
                                    -webkit-align-items: center;
                                    -webkit-box-align: center;
                                    -ms-flex-align: center;
                                    align-items: center;
                                    -webkit-box-pack: justify;
                                    -webkit-justify-content: space-between;
                                    justify-content: space-between;
                                    width: 100%;
                                    gap: 8px;
                                    height: 100%;
                                }
                            </style>
                            <div class="css-uyxe0l">
                                <style data-emotion="css 13fd4ke">
                                    .css-13fd4ke {
                                        padding: 12px 0;
                                        cursor: pointer;
                                        display: -webkit-box;
                                        display: -webkit-flex;
                                        display: -ms-flexbox;
                                        display: flex;
                                        -webkit-align-items: center;
                                        -webkit-box-align: center;
                                        -ms-flex-align: center;
                                        align-items: center;
                                        -webkit-box-pack: justify;
                                        -webkit-justify-content: space-between;
                                        justify-content: space-between;
                                        -webkit-tap-highlight-color: rgba(255, 255, 255, 0);
                                        width: 100%;
                                    }

                                    @media@media (min-width: 820px) {
                                        .css-13fd4ke:hover {
                                            color:#e8344e;
                                        }
                                    }
                                </style>
                                <div class="css-13fd4ke">
                                    <style data-emotion="css 1jibmi3">
                                        .css-1jibmi3 {
                                            display: -webkit-box;
                                            display: -webkit-flex;
                                            display: -ms-flexbox;
                                            display: flex;
                                            -webkit-flex-direction: column;
                                            -ms-flex-direction: column;
                                            flex-direction: column;
                                            gap: 4px;
                                        }
                                    </style>
                                    <div class="css-1jibmi3">
                                        <style data-emotion="css 16regn8">
                                            .css-16regn8 {
                                                display: -webkit-box;
                                                display: -webkit-flex;
                                                display: -ms-flexbox;
                                                display: flex;
                                                -webkit-align-items: center;
                                                -webkit-box-align: center;
                                                -ms-flex-align: center;
                                                align-items: center;
                                                gap: 8px;
                                                font-family: Pretendard,-apple-system,“system-ui”,"Malgun Gothic","맑은 고딕",sans-serif;
                                                font-family: Pretendard;
                                                font-style: normal;
                                                font-weight: 600;
                                                font-size: 16px;
                                                line-height: 22px;
                                                color: #141617;
                                                color: #141617;
                                            }

                                            @media@media (min-width: 1200px) {
                                                .css-16regn8 {
                                                    height:24px;
                                                }
                                            }
                                        </style>
                                        <div class="css-16regn8">
                                            <svg width="16" height="16" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                <g id="icon">
                                                    <path id="Vector 160" d="M4 13.3345H12" stroke="#3A3E41" stroke-width="1.5" stroke-linecap="round"></path>
                                                    <rect id="Rectangle 7872" x="2.6687" y="2.66553" width="10.6667" height="8" rx="1.33333" stroke="#3A3E41" stroke-width="1.5"></rect>
                                                    <path id="Rectangle 7873" d="M7 5.60142V7.73192C7 7.99373 7.28798 8.15334 7.51 8.01458L9.2144 6.94933C9.42329 6.81878 9.42329 6.51456 9.2144 6.384L7.51 5.31875C7.28798 5.17999 7 5.3396 7 5.60142Z" fill="#3A3E41"></path>
                                                </g>
                                            </svg>
                                            <style data-emotion="css 17gywxx">
                                                .css-17gywxx {
                                                    display: -webkit-box;
                                                    display: -webkit-flex;
                                                    display: -ms-flexbox;
                                                    display: flex;
                                                    -webkit-align-items: center;
                                                    -webkit-box-align: center;
                                                    -ms-flex-align: center;
                                                    align-items: center;
                                                    font-family: Pretendard;
                                                    font-style: normal;
                                                    font-weight: 600;
                                                    font-size: 16px;
                                                    line-height: 22px;
                                                    color: #141617;
                                                    color: #141617;
                                                    color: #3A3E41;
                                                }

                                                @media (min-width: 820px) {
                                                    .css-17gywxx {
                                                        font-family:Pretendard;
                                                        font-style: normal;
                                                        font-weight: 600;
                                                        font-size: 14px;
                                                        line-height: 22px;
                                                        color: #141617;
                                                        color: #3A3E41;
                                                    }
                                                }
                                            </style>
                                            <div class="css-17gywxx">전체 강의</div>
                                        </div>
                                    </div>
                                </div>
                                <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 20 20" fill="none">
                                    <path d="M5 8.33203L10 13.332L15 8.33203" stroke="#9DA7AE" stroke-width="1.75" stroke-linecap="round" stroke-linejoin="round"></path>
                                </svg>
                            </div>
                            <div class="css-uyxe0l">
                                <div class="css-13fd4ke">
                                    <div class="css-1jibmi3">
                                        <div class="css-16regn8">
                                            <svg width="16" height="16" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                <path d="M9.33337 2L2.02435 12.9635C1.72899 13.4066 2.04659 14 2.57905 14H13.421C13.9535 14 14.2711 13.4066 13.9757 12.9635L6.66671 2" stroke="#3A3E41" stroke-width="1.5" stroke-linecap="round"></path>
                                                <path d="M5.33337 14.0002L7.42121 10.3464C7.67714 9.89857 8.32294 9.89857 8.57887 10.3464L10.6667 14.0002H5.33337Z" fill="#3A3E41"></path>
                                            </svg>
                                            <div class="css-17gywxx">부트캠프</div>
                                            <style data-emotion="css 1fch5vq">
                                                .css-1fch5vq {
                                                    display: -webkit-box;
                                                    display: -webkit-flex;
                                                    display: -ms-flexbox;
                                                    display: flex;
                                                    padding: 1px 4px;
                                                    -webkit-box-pack: center;
                                                    -ms-flex-pack: center;
                                                    -webkit-justify-content: center;
                                                    justify-content: center;
                                                    -webkit-align-items: center;
                                                    -webkit-box-align: center;
                                                    -ms-flex-align: center;
                                                    align-items: center;
                                                    border-radius: 4px;
                                                    background: #EEF3F6;
                                                    cursor: pointer;
                                                    color: #81898F;
                                                    font-size: 10px;
                                                    font-style: normal;
                                                    font-weight: 600;
                                                    line-height: 150%;
                                                }
                                            </style>
                                            <div class="css-1fch5vq">국비</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="css-uyxe0l">
                                <div class="css-13fd4ke">
                                    <div class="css-1jibmi3">
                                        <div class="css-16regn8">
                                            <svg width="16" height="16" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                <path d="M2 3.99886C2 3.26248 2.59695 2.66553 3.33333 2.66553H12.6667C13.403 2.66553 14 3.26248 14 3.99886V9.99886C14 10.7352 13.403 11.3322 12.6667 11.3322H10.0362C9.80631 11.3322 9.59266 11.4506 9.47083 11.6455L8 13.9989L6.52917 11.6455C6.40734 11.4506 6.1937 11.3322 5.96384 11.3322H3.33333C2.59695 11.3322 2 10.7352 2 9.99886V3.99886Z" stroke="#3A3E41" stroke-width="1.5" stroke-linejoin="round"></path>
                                                <rect x="4.58203" y="6.25" width="1.5" height="1.5" rx="0.75" fill="#3A3E41"></rect>
                                                <rect x="7.25" y="6.25" width="1.5" height="1.5" rx="0.75" fill="#3A3E41"></rect>
                                                <rect x="9.91797" y="6.25" width="1.5" height="1.5" rx="0.75" fill="#3A3E41"></rect>
                                            </svg>
                                            <div class="css-17gywxx">커뮤니티</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="css-uyxe0l">
                                <div class="css-13fd4ke">
                                    <div class="css-1jibmi3">
                                        <div class="css-16regn8">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 16 16" fill="none">
                                                <path d="M6.66675 4H13.3334" stroke="#3A3E41" stroke-width="1.5" stroke-linecap="round"></path>
                                                <path d="M6.66675 8H13.3334" stroke="#3A3E41" stroke-width="1.5" stroke-linecap="round"></path>
                                                <path d="M6.66675 12H13.3334" stroke="#3A3E41" stroke-width="1.5" stroke-linecap="round"></path>
                                                <circle cx="3.4165" cy="4" r="0.75" fill="#3A3E41"></circle>
                                                <circle cx="3.4165" cy="8" r="0.75" fill="#3A3E41"></circle>
                                                <circle cx="3.4165" cy="12" r="0.75" fill="#3A3E41"></circle>
                                            </svg>
                                            <div class="css-17gywxx">블로그</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="css-uyxe0l">
                                <div class="css-13fd4ke">
                                    <div class="css-1jibmi3">
                                        <div class="css-16regn8">
                                            <svg width="16" height="16" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                <g id="icon">
                                                    <rect id="Rectangle 6370" x="2.66663" y="3.3335" width="10.6667" height="10.6667" rx="1.33333" stroke="#3A3E41" stroke-width="1.5"></rect>
                                                    <path id="Vector 168" d="M2.66663 6.6665L13.3333 6.6665" stroke="#3A3E41" stroke-width="1.5" stroke-linecap="round"></path>
                                                    <path id="Vector 564" d="M5.33337 2V3.33333" stroke="#3A3E41" stroke-width="1.5" stroke-linecap="round"></path>
                                                    <path id="Vector 565" d="M10.6666 2V3.33333" stroke="#3A3E41" stroke-width="1.5" stroke-linecap="round"></path>
                                                    <path id="Star 4" d="M7.63468 8.39867C7.78141 8.10137 8.20534 8.10137 8.35207 8.39867L8.68206 9.06731C8.74033 9.18536 8.85295 9.26719 8.98324 9.28612L9.72112 9.39334C10.0492 9.44102 10.1802 9.84421 9.9428 10.0756L9.40887 10.5961C9.31459 10.688 9.27157 10.8204 9.29383 10.9501L9.41987 11.685C9.47592 12.0118 9.13295 12.261 8.83949 12.1067L8.17951 11.7597C8.06298 11.6985 7.92377 11.6985 7.80724 11.7597L7.14725 12.1067C6.8538 12.261 6.51083 12.0118 6.56687 11.685L6.69292 10.9501C6.71518 10.8204 6.67216 10.688 6.57788 10.5961L6.04394 10.0756C5.80654 9.84421 5.93754 9.44102 6.26563 9.39334L7.00351 9.28612C7.1338 9.26719 7.24642 9.18536 7.30469 9.06731L7.63468 8.39867Z" fill="#3A3E41"></path>
                                                </g>
                                            </svg>
                                            <div class="css-17gywxx">이벤트</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <style data-emotion="css 762fvp">
                            .css-762fvp {
                                width: 100%;
                                height: 1px;
                                background: #EEF3F6;
                                margin: 16px 0;
                            }
                        </style>
                        <div class="css-762fvp"></div>
                        <div class="css-sj14k1">
                            <div class="css-uyxe0l">
                                <div class="css-13fd4ke">
                                    <div class="css-1jibmi3">
                                        <div class="css-16regn8">
                                            <svg width="16" height="16" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                <g id="icon">
                                                    <rect width="16" height="16" fill="white"></rect>
                                                    <path id="Vector 1450" d="M13.3334 12V13.3333C13.3334 13.7015 13.0349 14 12.6667 14H9.33337" stroke="#3A3E41" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                                                    <path id="Vector 1448" d="M2.66663 7.33333V7.33333C2.66663 4.38782 5.05444 2 7.99996 2V2C10.9455 2 13.3333 4.38782 13.3333 7.33333V7.33333" stroke="#3A3E41" stroke-width="1.5"></path>
                                                    <path id="Rectangle 19794" d="M1.33337 8.26651C1.33337 7.38285 2.04972 6.6665 2.93337 6.6665C3.52248 6.6665 4.00004 7.14407 4.00004 7.73317V10.9332C4.00004 11.5223 3.52248 11.9998 2.93337 11.9998C2.04972 11.9998 1.33337 11.2835 1.33337 10.3998V8.26651Z" fill="white" stroke="#3A3E41" stroke-width="1.5"></path>
                                                    <path id="Rectangle 19795" d="M12 7.73317C12 7.14407 12.4776 6.6665 13.0667 6.6665C13.9503 6.6665 14.6667 7.38285 14.6667 8.2665V10.3998C14.6667 11.2835 13.9503 11.9998 13.0667 11.9998C12.4776 11.9998 12 11.5223 12 10.9332V7.73317Z" fill="white" stroke="#3A3E41" stroke-width="1.5"></path>
                                                    <circle id="Ellipse 2734" cx="6.66667" cy="9.33317" r="0.666667" fill="#3A3E41"></circle>
                                                    <circle id="Ellipse 2735" cx="9.33329" cy="9.33317" r="0.666667" fill="#3A3E41"></circle>
                                                    <path id="Vector 1449" d="M6 6.66683C6.11111 6.55572 7 5.3335 7 5.3335C8.33333 6.3335 8.93333 6.40016 10 6.66683" stroke="#3A3E41" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                                                </g>
                                            </svg>
                                            <div class="css-17gywxx">고객센터</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="css-uyxe0l">
                                <div class="css-13fd4ke">
                                    <div class="css-1jibmi3">
                                        <div class="css-16regn8">
                                            <svg width="16" height="16" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                <g id="icon">
                                                    <path id="Rectangle 19796" d="M12.6666 7.33333V3.33333C12.6666 2.59695 12.0697 2 11.3333 2H3.99996C3.26358 2 2.66663 2.59695 2.66663 3.33333V14" stroke="#3A3E41" stroke-width="1.5" stroke-linecap="round"></path>
                                                    <path id="Vector 1451" d="M14 14V9.33333C14 8.59695 13.403 8 12.6666 8H9.99996C9.26358 8 8.66663 8.59695 8.66663 9.33333V14" stroke="#3A3E41" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                                                    <rect id="Rectangle 19797" x="4.66663" y="4" width="2" height="2.66667" rx="0.666667" fill="#3A3E41"></rect>
                                                    <rect id="Rectangle 19799" x="4.66663" y="8" width="2" height="2.66667" rx="0.666667" fill="#3A3E41"></rect>
                                                    <rect id="Rectangle 19798" x="8.66663" y="4" width="2" height="2.66667" rx="0.666667" fill="#3A3E41"></rect>
                                                </g>
                                            </svg>
                                            <div class="css-17gywxx">기업 서비스</div>
                                        </div>
                                    </div>
                                </div>
                                <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 20 20" fill="none">
                                    <path d="M5 8.33203L10 13.332L15 8.33203" stroke="#9DA7AE" stroke-width="1.75" stroke-linecap="round" stroke-linejoin="round"></path>
                                </svg>
                            </div>
                        </div>
                        <style data-emotion="css vz49le">
                            .css-vz49le {
                                width: 100%;
                                height: 8px;
                                -webkit-align-self: stretch;
                                -ms-flex-item-align: stretch;
                                align-self: stretch;
                                background: #EEF3F6;
                                margin: 16px 0;
                            }
                        </style>
                        <div class="css-vz49le"></div>
                        <div class="css-sj14k1">
                            <style data-emotion="css czk3go">
                                .css-czk3go {
                                    font-family: Pretendard;
                                    font-style: normal;
                                    font-weight: 400;
                                    font-size: 13px;
                                    line-height: 21px;
                                    color: #141617;
                                    #5F666B display: flex;
                                    padding: 8px 0;
                                    -webkit-align-items: flex-start;
                                    -webkit-box-align: flex-start;
                                    -ms-flex-align: flex-start;
                                    align-items: flex-start;
                                    gap: 10px;
                                    -webkit-align-self: stretch;
                                    -ms-flex-item-align: stretch;
                                    align-self: stretch;
                                }
                            </style>
                            <div class="css-czk3go">둘러보기</div>
                            <div class="css-13fd4ke">
                                <div class="css-1jibmi3">
                                    <div class="css-16regn8">
                                        <svg width="16" height="16" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                                            <g clip-path="url(#clip0_3190_45714)">
                                                <rect width="16" height="16" rx="8" fill="#6E50FF"></rect>
                                                <path d="M7.57688 7.8871C6.98613 7.17742 6.76763 6.91129 6.27399 6.32258C5.30289 6.6129 4.89827 6.73387 4 7.00806C4.78497 8.65323 4.9711 9.00806 5.90173 11H9.05781C9.72139 7.8871 13.9618 3.45161 18 3C12.5457 3 9.52717 5.32258 7.57688 7.87903V7.8871Z" fill="#FFCB40"></path>
                                            </g>
                                            <defs>
                                                <clipPath id="clip0_3190_45714">
                                                    <rect width="16" height="16" rx="8" fill="white"></rect>
                                                </clipPath>
                                            </defs>
                                        </svg>
                                        <div class="css-17gywxx">인텔리픽</div>
                                    </div>
                                    <style data-emotion="css 1bm7x25">
                                        .css-1bm7x25 {
                                            font-family: Pretendard;
                                            font-style: normal;
                                            font-weight: 400;
                                            font-size: 12px;
                                            line-height: 18px;
                                            color: #141617;
                                            color: #81898F;
                                        }
                                    </style>
                                    <div class="css-1bm7x25">신입 개발자 채용 공고를 한 곳에서</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <style data-emotion="css 1fgr4mj">
                    .css-1fgr4mj {
                        display: block;
                        padding: 32px 0 0 0;
                        border: #d7e0e6 solid 1px;
                        border-radius: 10px;
                        position: absolute;
                        top: calc( 40px + 0px );
                        right: 0;
                        background-color: white;
                        opacity: 0;
                        visibility: hidden;
                        z-index: unset;
                        width: 282px;
                        -webkit-transform: translateX(-50%);
                        -moz-transform: translateX(-50%);
                        -ms-transform: translateX(-50%);
                        transform: translateX(-50%);
                        box-shadow: 0px 8px 24px rgba(95, 102, 107, 0.12);
                        font-family: "Pretendard";
                        overflow: scroll;
                        scrollbar-width: none;
                        -ms-overflow-style: none;
                    }

                    .css-1fgr4mj::-webkit-scrollbar {
                        display: none;
                    }

                    .css-1fgr4mj::after {
                        border-color: #ffff transparent;
                        border-style: solid;
                        border-width: 0 6px 8px 6.5px;
                        content: "";
                        display: block;
                        right: 5%;
                        position: absolute;
                        top: -7px;
                        width: 0;
                        z-index: 1;
                    }

                    .css-1fgr4mj::before {
                        border-color: #d7e0e6 transparent;
                        border-style: solid;
                        border-width: 0 6px 8px 6.5px;
                        content: "";
                        display: block;
                        right: 5%;
                        position: absolute;
                        top: -8px;
                        width: 0;
                        z-index: 0;
                    }

                    @media (max-width: 820px) {
                        .css-1fgr4mj {
                            width:100%;
                            height: calc( 100dvh - 50px - 0px );
                            position: fixed;
                            top: calc( 49px + 0px );
                            right: 0;
                            background-color: white;
                            opacity: 0;
                            visibility: hidden;
                            z-index: unset;
                            overflow: scroll;
                            border-radius: 0;
                            border: none;
                        }
                    }
                </style>
                <div class="css-1fgr4mj">
                    <style data-emotion="css 1bkawov">
                        .css-1bkawov {
                            display: -webkit-box;
                            display: -webkit-flex;
                            display: -ms-flexbox;
                            display: flex;
                            -webkit-flex-direction: column;
                            -ms-flex-direction: column;
                            flex-direction: column;
                            height: -webkit-fit-content;
                            height: -moz-fit-content;
                            height: fit-content;
                            padding-bottom: 12px;
                            gap: 16px;
                        }
                    </style>
                    <div class="css-1bkawov">
                        <style data-emotion="css gfzvs2">
                            .css-gfzvs2 {
                                display: -webkit-box;
                                display: -webkit-flex;
                                display: -ms-flexbox;
                                display: flex;
                                -webkit-flex-direction: column;
                                -ms-flex-direction: column;
                                flex-direction: column;
                                font-family: Pretendard,-apple-system,“system-ui”,"Malgun Gothic","맑은 고딕",sans-serif;
                                font-weight: 700;
                                font-size: 18px;
                                line-height: 140%;
                                color: #141617;
                                text-align: center;
                                gap: 24px;
                            }

                            .css-gfzvs2::-moz-selection {
                                background: rgba(0, 0, 0, 0);
                            }

                            .css-gfzvs2::selection {
                                background: rgba(0, 0, 0, 0);
                            }

                            @media (min-width: 768px) and (max-width: 819px) {
                                .css-gfzvs2 {
                                    font-size:16px;
                                    padding: 0;
                                }
                            }
                        </style>
                        <div class="css-gfzvs2"></div>
                        <style data-emotion="css ss0hg9">
                            .css-ss0hg9 {
                                width: 100%;
                                margin: 0 auto;
                            }

                            @media (min-width: 820px) {
                                .css-ss0hg9 {
                                    width:250px;
                                }
                            }
                        </style>
                        <div class="css-ss0hg9">
                            <style data-emotion="css 1o9qtii">
                                .css-1o9qtii {
                                    width: 100%;
                                    height: 1px;
                                    background: #E4EBF0;
                                    margin: 0 0;
                                }
                            </style>
                            <div class="css-1o9qtii"></div>
                            <style data-emotion="css 1s9cv9y">
                                .css-1s9cv9y {
                                    padding: 16px;
                                    display: -webkit-box;
                                    display: -webkit-flex;
                                    display: -ms-flexbox;
                                    display: flex;
                                    -webkit-flex-direction: column;
                                    -ms-flex-direction: column;
                                    flex-direction: column;
                                }

                                @media (min-width: 820px) {
                                    .css-1s9cv9y {
                                        padding:16px 0 0 0;
                                        gap: 0;
                                    }
                                }
                            </style>
                            <div class="css-1s9cv9y">
                                <div></div>
                                <div></div>
                                <div></div>
                                <div></div>
                                <div></div>
                                <div></div>
                            </div>
                            <div class="css-1o9qtii"></div>
                            <div class="css-1s9cv9y">
                                <style data-emotion="css ik70s9">
                                    .css-ik70s9 {
                                        padding: 8px 0;
                                        cursor: pointer;
                                        display: -webkit-box;
                                        display: -webkit-flex;
                                        display: -ms-flexbox;
                                        display: flex;
                                        -webkit-align-items: center;
                                        -webkit-box-align: center;
                                        -ms-flex-align: center;
                                        align-items: center;
                                        -webkit-box-pack: justify;
                                        -webkit-justify-content: space-between;
                                        justify-content: space-between;
                                        -webkit-tap-highlight-color: rgba(255, 255, 255, 0);
                                        width: 100%;
                                    }

                                    @media@media (min-width: 820px) {
                                        .css-ik70s9:hover {
                                            color:#e8344e;
                                        }
                                    }
                                </style>
                                <div class="css-ik70s9">
                                    <div class="css-1jibmi3">
                                        <style data-emotion="css 28a73i">
                                            .css-28a73i {
                                                color: #5F666B;
                                                display: -webkit-box;
                                                display: -webkit-flex;
                                                display: -ms-flexbox;
                                                display: flex;
                                                -webkit-align-items: center;
                                                -webkit-box-align: center;
                                                -ms-flex-align: center;
                                                align-items: center;
                                                gap: 8px;
                                                font-family: Pretendard,-apple-system,“system-ui”,"Malgun Gothic","맑은 고딕",sans-serif;
                                                font-family: Pretendard;
                                                font-style: normal;
                                                font-weight: 600;
                                                font-size: 16px;
                                                line-height: 22px;
                                                color: #141617;
                                                color: #141617;
                                            }

                                            @media@media (min-width: 1200px) {
                                                .css-28a73i {
                                                    height:24px;
                                                }
                                            }
                                        </style>
                                        <div class="css-28a73i">
                                            <style data-emotion="css 4l7ba3">
                                                .css-4l7ba3 {
                                                    display: -webkit-box;
                                                    display: -webkit-flex;
                                                    display: -ms-flexbox;
                                                    display: flex;
                                                    -webkit-align-items: center;
                                                    -webkit-box-align: center;
                                                    -ms-flex-align: center;
                                                    align-items: center;
                                                    font-family: Pretendard;
                                                    font-style: normal;
                                                    font-weight: 600;
                                                    font-size: 16px;
                                                    line-height: 22px;
                                                    color: #141617;
                                                    color: #141617;
                                                    font-size: 13px;
                                                    font-weight: 500;
                                                    color: #5F666B;
                                                }

                                                @media (min-width: 820px) {
                                                    .css-4l7ba3 {
                                                        font-family:Pretendard;
                                                        font-style: normal;
                                                        font-weight: 600;
                                                        font-size: 14px;
                                                        line-height: 22px;
                                                        color: #141617;
                                                        font-size: 13px;
                                                        font-weight: 500;
                                                        color: #5F666B;
                                                    }
                                                }
                                            </style>
                                            <div class="css-4l7ba3">로그아웃</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <style data-emotion="css qfv2ne">
                .css-qfv2ne {
                    height: 0px;
                    white-space: initial;
                    content: " ";
                    opacity: 0;
                    -webkit-flex: 0px;
                    -ms-flex: 0px;
                    flex: 0px;
                    -webkit-flex-shrink: 0;
                    -ms-flex-negative: 0;
                    flex-shrink: 0;
                    -webkit-box-flex: 0;
                    -webkit-flex-grow: 0;
                    -ms-flex-positive: 0;
                    flex-grow: 0;
                }
            </style>
            <div height="0px;" class="css-qfv2ne"></div>
            <style data-emotion="css 1hnxdb7">
                @media (max-width: 767px) {
                    @supports (-webkit-touch-callout: none) {
                        .css-1hnxdb7 {
                            height:-webkit-fill-available;
                        }
                    }
                }
            </style>
            <div class="css-1hnxdb7">
                <style data-emotion="css 16z0wya">
                    .css-16z0wya {
                        display: -webkit-box;
                        display: -webkit-flex;
                        display: -ms-flexbox;
                        display: flex;
                        -webkit-flex-direction: column;
                        -ms-flex-direction: column;
                        flex-direction: column;
                        padding: 0;
                    }
                </style>
                <div class="css-16z0wya">
                    <style data-emotion="css ppdf1p">
                        .css-ppdf1p {
                            display: -webkit-inline-box;
                            display: -webkit-inline-flex;
                            display: -ms-inline-flexbox;
                            display: inline-flex;
                            -webkit-flex-direction: column;
                            -ms-flex-direction: column;
                            flex-direction: column;
                            -webkit-align-items: flex-start;
                            -webkit-box-align: flex-start;
                            -ms-flex-align: flex-start;
                            align-items: flex-start;
                            gap: 40px;
                            padding-bottom: 85px;
                        }

                        @media (min-width: 820px) {
                            .css-ppdf1p {
                                display:-webkit-inline-box;
                                display: -webkit-inline-flex;
                                display: -ms-inline-flexbox;
                                display: inline-flex;
                                padding-bottom: 100px;
                                -webkit-align-items: center;
                                -webkit-box-align: center;
                                -ms-flex-align: center;
                                align-items: center;
                                gap: 100px;
                                width: 100vw;
                            }
                        }
                    </style>
                    <div class="css-ppdf1p">
                        <style data-emotion="css p22c6q">
                            .css-p22c6q {
                                position: relative;
                                height: -webkit-fit-content;
                                height: -moz-fit-content;
                                height: fit-content;
                                width: 100%;
                            }
                        </style>
                        <section class="css-p22c6q">
                            <style data-emotion="css 1bj2jr5">
                                .css-1bj2jr5 {
                                    display: -webkit-box;
                                    display: -webkit-flex;
                                    display: -ms-flexbox;
                                    display: flex;
                                    width: 100%;
                                    padding-top: 88px;
                                    -webkit-box-pack: center;
                                    -ms-flex-pack: center;
                                    -webkit-justify-content: center;
                                    justify-content: center;
                                    -webkit-align-items: center;
                                    -webkit-box-align: center;
                                    -ms-flex-align: center;
                                    align-items: center;
                                    background: linear-gradient(90deg, #fff1f4 0%, #fff6f8 100%);
                                    position: absolute;
                                    top: 0;
                                }

                                @media (min-width: 820px) {
                                    .css-1bj2jr5 {
                                        padding-top:234px;
                                    }
                                }
                            </style>
                            <div class="css-1bj2jr5">
                                <style data-emotion="css 130d6tq">
                                    .css-130d6tq {
                                        width: 100%;
                                        height: 48px;
                                        -webkit-flex-shrink: 0;
                                        -ms-flex-negative: 0;
                                        flex-shrink: 0;
                                        background: linear-gradient(180deg, rgba(255, 255, 255, 0) 0%, #fff 100%);
                                        z-index: 1;
                                    }

                                    @media (min-width: 820px) {
                                        .css-130d6tq {
                                            height:136.214px;
                                        }
                                    }
                                </style>
                                <div class="css-130d6tq"></div>
                            </div>
                            <style data-emotion="css gme0ob">
                                .css-gme0ob {
                                    padding: 32px 16px 0;
                                    position: relative;
                                }

                                @media (min-width: 820px) {
                                    .css-gme0ob {
                                        padding:108px 24px 0;
                                    }
                                }
                            </style>
                            <div class="css-gme0ob">
                                <style data-emotion="css 1mzwlld">
                                    .css-1mzwlld {
                                        display: -webkit-box;
                                        display: -webkit-flex;
                                        display: -ms-flexbox;
                                        display: flex;
                                        -webkit-flex-direction: column;
                                        -ms-flex-direction: column;
                                        flex-direction: column;
                                        -webkit-align-items: flex-start;
                                        -webkit-box-align: flex-start;
                                        -ms-flex-align: flex-start;
                                        align-items: flex-start;
                                        gap: 32px;
                                        -webkit-align-self: stretch;
                                        -ms-flex-item-align: stretch;
                                        align-self: stretch;
                                    }

                                    @media (min-width: 820px) {
                                        .css-1mzwlld {
                                            gap:88px;
                                        }
                                    }
                                </style>
                                <div class="css-1mzwlld">
                                    <style data-emotion="css 1slt03f">
                                        .css-1slt03f {
                                            display: -webkit-box;
                                            display: -webkit-flex;
                                            display: -ms-flexbox;
                                            display: flex;
                                            -webkit-flex-direction: column;
                                            -ms-flex-direction: column;
                                            flex-direction: column;
                                            -webkit-align-items: flex-start;
                                            -webkit-box-align: flex-start;
                                            -ms-flex-align: flex-start;
                                            align-items: flex-start;
                                            gap: 8px;
                                            -webkit-align-self: flex-start;
                                            -ms-flex-item-align: flex-start;
                                            align-self: flex-start;
                                            z-index: 2;
                                        }

                                        @media (min-width: 820px) and (max-width: 1023px) {
                                            .css-1slt03f {
                                                gap:16px;
                                                -webkit-align-self: flex-start;
                                                -ms-flex-item-align: flex-start;
                                                align-self: flex-start;
                                            }
                                        }

                                        @media(min-width: 1024px) {
                                            .css-1slt03f {
                                                width:100%;
                                                max-width: 1200px;
                                                padding-left: 59px;
                                                gap: 16px;
                                                -webkit-align-self: center;
                                                -ms-flex-item-align: center;
                                                align-self: center;
                                            }
                                        }
                                    </style>
                                    <div class="css-1slt03f">
                                        <style data-emotion="css 1bku0gi">
                                            .css-1bku0gi {
                                                display: -webkit-box;
                                                display: -webkit-flex;
                                                display: -ms-flexbox;
                                                display: flex;
                                                -webkit-flex-direction: column;
                                                -ms-flex-direction: column;
                                                flex-direction: column;
                                                -webkit-align-items: flex-start;
                                                -webkit-box-align: flex-start;
                                                -ms-flex-align: flex-start;
                                                align-items: flex-start;
                                            }
                                        </style>
                                        <div class="css-1bku0gi">
                                            <style data-emotion="css 1dr1vfe">
                                                .css-1dr1vfe {
                                                    height: 28px;
                                                }

                                                @media (min-width: 820px) {
                                                    .css-1dr1vfe {
                                                        height:59px;
                                                    }
                                                }
                                            </style>
                                            <div class="css-1dr1vfe"></div>
                                            <style data-emotion="css mm6ge2">
                                                .css-mm6ge2 {
                                                    font-family: Pretendard;
                                                    font-style: normal;
                                                    font-weight: 700;
                                                    font-size: 20px;
                                                    line-height: 28px;
                                                    color: #141617;
                                                    color: #141617;
                                                    display: -webkit-box;
                                                    display: -webkit-flex;
                                                    display: -ms-flexbox;
                                                    display: flex;
                                                    color: #E8344E!important;
                                                    -webkit-align-items: center;
                                                    -webkit-box-align: center;
                                                    -ms-flex-align: center;
                                                    align-items: center;
                                                    gap: 4px;
                                                }

                                                @media (min-width: 820px) {
                                                    .css-mm6ge2 {
                                                        font-family:Pretendard;
                                                        font-style: normal;
                                                        font-weight: 700;
                                                        font-size: 40px;
                                                        line-height: 56px;
                                                        color: #141617;
                                                    }
                                                }
                                            </style>
                                            <h1 class="css-mm6ge2">
                                                스파르타코딩클럽<style data-emotion="css 11y22ec">
                                                    .css-11y22ec svg {
                                                        width: 16px;
                                                        height: 16px;
                                                    }

                                                    @media (min-width: 820px) {
                                                        .css-11y22ec svg {
                                                            width:24px;
                                                            height: 24px;
                                                        }
                                                    }
                                                </style>
                                                <div class="css-11y22ec">
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 16 16" fill="none">
                                                        <g clip-path="url(#clip0_802_44610)">
                                                            <path d="M11.7523 0.299927L1.78934 2.48414L0 8.34601L4.04774 13.0069L7.113 12.3342L8.0012 15.6999L12.0448 11.3686L14.0107 10.825L15.8 4.96083L11.7523 0.299927Z" fill="#E8344E"></path>
                                                            <path d="M11.5324 5.09998V5.64916H12.0564V6.19835H12.5805V6.74754H13.1041V7.29673H12.5805V7.84591H12.0564V8.3951H11.5329V8.94429H10.4852V8.3951H11.0088V7.84591H11.5324V7.29673H12.0564V6.74754H11.5329V6.19789H11.0093V5.6487H10.4857V5.09998H11.5324Z" fill="white"></path>
                                                            <path d="M9.81596 5.19702H8.90234V5.72718H8.38615V6.26615H7.89769V6.79584H7.3815V7.33528H6.89257V7.86497H6.37638V8.40441H5.88745V8.94338H6.80153V8.40441H7.29V7.87425H7.80619V7.33528H8.29465V6.80559H8.81131V6.26615H9.29977V5.73646H9.81596V5.19702Z" fill="white"></path>
                                                            <path d="M4.17166 8.99207V8.44288H3.64761V7.89369H3.12356V7.3445H2.59998V6.79532H3.12356V6.24613H3.64761V5.69694H4.1712V5.14868H5.21883V5.69787H4.69524V6.24706H4.17166V6.79624H3.64761V7.34543H4.1712V7.89462H4.69478V8.44381H5.21837V8.99299H4.17166V8.99207Z" fill="white"></path>
                                                        </g>
                                                        <defs>
                                                            <clipPath id="clip0_802_44610">
                                                                <rect width="15.8" height="15.8" fill="white" transform="translate(0 0.0999756)"></rect>
                                                            </clipPath>
                                                        </defs>
                                                    </svg>
                                                </div>
                                            </h1>
                                        </div>
                                    </div>
                                    <style data-emotion="css qb9asz">
                                        .css-qb9asz {
                                            display: grid;
                                            grid-template-columns: repeat(4, auto);
                                            grid-template-rows: repeat(2, auto);
                                            gap: 16px;
                                            width: 100%;
                                            z-index: 2;
                                        }

                                        @media (min-width: 820px) and (max-width: 1023px) {
                                            .css-qb9asz {
                                                grid-template-columns:repeat(auto-fill, minmax(100px, auto));
                                                grid-template-rows: repeat(2, auto);
                                                gap: 32px;
                                            }
                                        }

                                        @media(min-width: 1024px) {
                                            .css-qb9asz {
                                                display:-webkit-box;
                                                display: -webkit-flex;
                                                display: -ms-flexbox;
                                                display: flex;
                                                -webkit-align-items: center;
                                                -webkit-box-align: center;
                                                -ms-flex-align: center;
                                                align-items: center;
                                                -webkit-box-pack: center;
                                                -ms-flex-pack: center;
                                                -webkit-justify-content: center;
                                                justify-content: center;
                                                gap: 24px;
                                            }
                                        }
                                    </style>
                                    <div class="css-qb9asz">
                                        <style data-emotion="css ngbrg5">
                                            .css-ngbrg5 {
                                                display: -webkit-box;
                                                display: -webkit-flex;
                                                display: -ms-flexbox;
                                                display: flex;
                                                -webkit-flex-direction: column;
                                                -ms-flex-direction: column;
                                                flex-direction: column;
                                                -webkit-align-items: center;
                                                -webkit-box-align: center;
                                                -ms-flex-align: center;
                                                align-items: center;
                                                gap: 8px;
                                                cursor: pointer;
                                                position: relative;
                                            }

                                            @media (min-width: 820px) {
                                                .css-ngbrg5 {
                                                    width:100px;
                                                    gap: 16px;
                                                }
                                            }
                                        </style>
                                        <div class="css-ngbrg5">
                                            <style data-emotion="css by3pcg">
                                                .css-by3pcg {
                                                    width: 60px;
                                                    height: 60px;
                                                    border-radius: 12px;
                                                    border: 1px solid rgba(20, 22, 23, 0.08);
                                                    background: #FFFFFF;
                                                    box-shadow: 0px 8px 24px 0px rgba(129, 137, 143, 0.12);
                                                }

                                                @media (min-width: 820px) {
                                                    .css-by3pcg {
                                                        box-shadow:0px 8px 24px 0px rgba(95, 102, 107, 0.12);
                                                    }
                                                }
                                            </style>
                                            <img src="https://static.spartacodingclub.kr/TeamSparta-Inc/scc-frontend/assets/images/home/v4/main_icon/menu_codingstudy.webp" alt="코딩 스터디-icon" class="css-by3pcg"/>
                                            <style data-emotion="css 5b05im">
                                                .css-5b05im {
                                                    font-family: Pretendard;
                                                    font-style: normal;
                                                    font-weight: 400;
                                                    font-size: 12px;
                                                    line-height: 18px;
                                                    color: #141617;
                                                    color: #141617;
                                                    text-align: center;
                                                    white-space: pre-wrap;
                                                    word-break: keep-all;
                                                }

                                                @media (min-width: 820px) {
                                                    .css-5b05im {
                                                        font-family:Pretendard;
                                                        font-style: normal;
                                                        font-weight: 400;
                                                        font-size: 16px;
                                                        line-height: 22px;
                                                        color: #141617;
                                                    }
                                                }
                                            </style>
                                            <p class="css-5b05im">코딩 스터디</p>
                                        </div>
                                        <div class="css-ngbrg5">
                                            <img src="../static.spartacodingclub.kr/TeamSparta-Inc/scc-frontend/assets/images/home/v4/main_icon/menu_kprt.png" alt="IT 자격증-icon" class="css-by3pcg"/>
                                            <p class="css-5b05im">IT 자격증</p>
                                        </div>
                                        <div class="css-ngbrg5">
                                            <style data-emotion="css 1p49yb2">
                                                .css-1p49yb2 {
                                                    display: -webkit-box;
                                                    display: -webkit-flex;
                                                    display: -ms-flexbox;
                                                    display: flex;
                                                    padding: 2px 6px;
                                                    -webkit-box-pack: center;
                                                    -ms-flex-pack: center;
                                                    -webkit-justify-content: center;
                                                    justify-content: center;
                                                    -webkit-align-items: center;
                                                    -webkit-box-align: center;
                                                    -ms-flex-align: center;
                                                    align-items: center;
                                                    position: absolute;
                                                    top: -10px;
                                                    border-radius: 6px;
                                                    border: 1px solid #E8344E;
                                                    color: #E8344E;
                                                    text-align: center;
                                                    font-family: Pretendard;
                                                    font-size: 10px;
                                                    font-style: normal;
                                                    font-weight: 700;
                                                    line-height: 14px;
                                                    background: #fff;
                                                }

                                                @media (min-width: 820px) {
                                                    .css-1p49yb2 {
                                                        top:-9px;
                                                        font-size: 11px;
                                                        line-height: 16px;
                                                    }
                                                }
                                            </style>
                                            <div class="css-1p49yb2">0원수강</div>
                                            <img src="https://static.spartacodingclub.kr/TeamSparta-Inc/scc-frontend/assets/images/home/v4/main_icon/menu_kdc.svg" alt="국비 강의-icon" class="css-by3pcg"/>
                                            <p class="css-5b05im">국비 강의</p>
                                        </div>
                                        <div class="css-ngbrg5">
                                            <div class="css-1p49yb2">전액무료</div>
                                            <img src="https://static.spartacodingclub.kr/TeamSparta-Inc/scc-frontend/assets/images/home/v4/main_icon/menu_kdt.svg" alt="국비 취업-icon" class="css-by3pcg"/>
                                            <p class="css-5b05im">국비 취업</p>
                                        </div>
                                        <div class="css-ngbrg5">
                                            <img src="https://static.spartacodingclub.kr/TeamSparta-Inc/scc-frontend/assets/images/home/v4/main_icon/menu_programming.svg" alt="개발-icon" class="css-by3pcg"/>
                                            <p class="css-5b05im">개발</p>
                                        </div>
                                        <div class="css-ngbrg5">
                                            <img src="https://static.spartacodingclub.kr/TeamSparta-Inc/scc-frontend/assets/images/home/v4/main_icon/menu_ai.svg" alt="AI ∙ GPT-icon" class="css-by3pcg"/>
                                            <p class="css-5b05im">AI ∙ GPT</p>
                                        </div>
                                        <div class="css-ngbrg5">
                                            <img src="https://static.spartacodingclub.kr/TeamSparta-Inc/scc-frontend/assets/images/home/v4/main_icon/menu_datav2.svg" alt="데이터-icon" class="css-by3pcg"/>
                                            <p class="css-5b05im">데이터</p>
                                        </div>
                                        <div class="css-ngbrg5">
                                            <img src="https://static.spartacodingclub.kr/TeamSparta-Inc/scc-frontend/assets/images/home/v4/main_icon/menu_job.svg" alt="취업 ∙ 자격증-icon" class="css-by3pcg"/>
                                            <p class="css-5b05im">취업 ∙ 자격증</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <style data-emotion="css 1i3379r">
                                .css-1i3379r {
                                    display: none;
                                    position: absolute;
                                    top: 0;
                                    left: 50%;
                                    -webkit-transform: translate(-50%, 0);
                                    -moz-transform: translate(-50%, 0);
                                    -ms-transform: translate(-50%, 0);
                                    transform: translate(-50%, 0);
                                    height: 370px;
                                    margin: 0 auto;
                                }

                                @media (min-width: 820px) and (max-width: 1023px) {
                                    .css-1i3379r {
                                        display:block;
                                    }
                                }

                                @media(min-width: 1024px) {
                                    .css-1i3379r {
                                        display:block;
                                    }
                                }
                            </style>
                            <img src="../static.spartacodingclub.kr/TeamSparta-Inc/scc-frontend/assets/images/home/v4/hero_img.png" class="css-1i3379r"/>
                        </section>
                        <style data-emotion="css 1rb6wua">
                            .css-1rb6wua {
                                padding: 0 16px;
                                width: 100%;
                                max-width: 1152px;
                            }

                            @media (min-width: 820px) {
                                .css-1rb6wua {
                                    -webkit-align-self:center;
                                    -ms-flex-item-align: center;
                                    align-self: center;
                                }
                            }
                        </style>
                        <section class="css-1rb6wua">
                            <style data-emotion="css snrszc">
                                .css-snrszc {
                                    position: relative;
                                    width: 100%;
                                    overflow: hidden;
                                    border-radius: 12px;
                                    isolation: isolate;
                                    height: 122px;
                                }

                                @media (min-width: 820px) {
                                    .css-snrszc {
                                        height:240px;
                                    }
                                }
                            </style>
                            <div class="css-snrszc">
                                <style data-emotion="css 1ctmcct">
                                    .css-1ctmcct {
                                        display: -webkit-box;
                                        display: -webkit-flex;
                                        display: -ms-flexbox;
                                        display: flex;
                                        width: 100%;
                                        height: 100%;
                                        transform-style: preserve-3d;
                                    }
                                </style>
                                <div class="css-1ctmcct"></div>
                                <style data-emotion="css 17ixjhm">
                                    .css-17ixjhm {
                                        display: -webkit-box;
                                        display: -webkit-flex;
                                        display: -ms-flexbox;
                                        display: flex;
                                        -webkit-box-pack: center;
                                        -ms-flex-pack: center;
                                        -webkit-justify-content: center;
                                        justify-content: center;
                                        -webkit-align-items: center;
                                        -webkit-box-align: center;
                                        -ms-flex-align: center;
                                        align-items: center;
                                        position: absolute;
                                        right: 6px;
                                        bottom: 6px;
                                        width: -webkit-fit-content;
                                        width: -moz-fit-content;
                                        width: fit-content;
                                        min-width: 50px;
                                        padding: 0 10px;
                                        border-radius: 40px;
                                        background: rgba(20, 22, 23, 0.6);
                                        font-family: Pretendard;
                                        font-style: normal;
                                        font-weight: 400;
                                        font-size: 12px;
                                        line-height: 18px;
                                        color: #141617;
                                        color: #ffffff99;
                                        cursor: default;
                                        height: 26px;
                                    }

                                    @media (min-width: 820px) {
                                        .css-17ixjhm {
                                            padding:0 4px;
                                            min-width: 74px;
                                            right: 16px;
                                            bottom: 16px;
                                            height: 32px;
                                        }
                                    }
                                </style>
                                <div class="css-17ixjhm">
                                    <style data-emotion="css 17cp7ro">
                                        .css-17cp7ro {
                                            display: none;
                                        }

                                        @media (min-width: 820px) {
                                            .css-17cp7ro {
                                                cursor:pointer;
                                                display: block;
                                                width: 16px;
                                                height: 16px;
                                            }
                                        }
                                    </style>
                                    <div class="css-17cp7ro">
                                        <svg width="16" height="16" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                                            <path d="M9.86468 4.53033C10.1576 4.23744 10.1576 3.76256 9.86468 3.46967C9.57179 3.17678 9.09691 3.17678 8.80402 3.46967L9.86468 4.53033ZM5.33435 8L4.80402 7.46967C4.51113 7.76256 4.51113 8.23744 4.80402 8.53033L5.33435 8ZM8.80402 12.5303C9.09691 12.8232 9.57179 12.8232 9.86468 12.5303C10.1576 12.2374 10.1576 11.7626 9.86468 11.4697L8.80402 12.5303ZM8.80402 3.46967L4.80402 7.46967L5.86468 8.53033L9.86468 4.53033L8.80402 3.46967ZM4.80402 8.53033L8.80402 12.5303L9.86468 11.4697L5.86468 7.46967L4.80402 8.53033Z" fill="rgba(255, 255, 255, 0.2)"></path>
                                        </svg>
                                    </div>
                                    <style data-emotion="css bav8ek">
                                        .css-bav8ek {
                                            display: -webkit-box;
                                            display: -webkit-flex;
                                            display: -ms-flexbox;
                                            display: flex;
                                            gap: 3px;
                                            -webkit-align-items: center;
                                            -webkit-box-align: center;
                                            -ms-flex-align: center;
                                            align-items: center;
                                        }
                                    </style>
                                    <div class="css-bav8ek">
                                        <style data-emotion="css 1fwjbu3">
                                            .css-1fwjbu3 {
                                                font-family: Pretendard;
                                                font-style: normal;
                                                font-weight: 400;
                                                font-size: 12px;
                                                line-height: 18px;
                                                color: #141617;
                                                color: #FFFFFF;
                                            }

                                            @media (min-width: 820px) {
                                                .css-1fwjbu3 {
                                                    font-family:Pretendard;
                                                    font-style: normal;
                                                    font-weight: 400;
                                                    font-size: 13px;
                                                    line-height: 20px;
                                                    color: #141617;
                                                    color: #FFFFFF;
                                                }
                                            }
                                        </style>
                                        <p class="css-1fwjbu3">1</p>
                                        <style data-emotion="css 1mve0np">
                                            .css-1mve0np {
                                                font-family: Pretendard;
                                                font-style: normal;
                                                font-weight: 400;
                                                font-size: 12px;
                                                line-height: 18px;
                                                color: #141617;
                                                color: #FFFFFF;
                                                opacity: 0.6;
                                            }

                                            @media (min-width: 820px) {
                                                .css-1mve0np {
                                                    font-family:Pretendard;
                                                    font-style: normal;
                                                    font-weight: 400;
                                                    font-size: 13px;
                                                    line-height: 20px;
                                                    color: #141617;
                                                    color: #FFFFFF;
                                                }
                                            }
                                        </style>
                                        <p class="css-1mve0np">/</p>
                                        <p class="css-1mve0np">
                                        <!-- -->
                                        0</p>
                                    </div>
                                    <div class="css-17cp7ro">
                                        <svg width="16" height="16" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                                            <path d="M6.13532 11.4697C5.84243 11.7626 5.84243 12.2374 6.13532 12.5303C6.42821 12.8232 6.90309 12.8232 7.19598 12.5303L6.13532 11.4697ZM10.6656 8L11.196 8.53033C11.4889 8.23744 11.4889 7.76256 11.196 7.46967L10.6656 8ZM7.19598 3.46967C6.90309 3.17678 6.42821 3.17678 6.13532 3.46967C5.84243 3.76256 5.84243 4.23744 6.13532 4.53033L7.19598 3.46967ZM7.19598 12.5303L11.196 8.53033L10.1353 7.46967L6.13532 11.4697L7.19598 12.5303ZM11.196 7.46967L7.19598 3.46967L6.13532 4.53033L10.1353 8.53033L11.196 7.46967Z" fill="#FFFFFF"></path>
                                        </svg>
                                    </div>
                                </div>
                            </div>
                        </section>
                        
                    </div>
                    <style data-emotion="css zea7jz">
                        .css-zea7jz {
                            display: -webkit-box;
                            display: -webkit-flex;
                            display: -ms-flexbox;
                            display: flex;
                            width: 100vw;
                            padding: 60px 16px;
                            -webkit-flex-direction: column;
                            -ms-flex-direction: column;
                            flex-direction: column;
                            gap: 30px;
                            background: #F6F9FA;
                        }

                        @media (min-width: 820px) {
                            .css-zea7jz {
                                -webkit-align-items:center;
                                -webkit-box-align: center;
                                -ms-flex-align: center;
                                align-items: center;
                                gap: 60px;
                                padding: 100px 16px;
                            }
                        }
                    </style>
                    <section class="css-zea7jz">
                        <style data-emotion="css cxhqc8">
                            .css-cxhqc8 {
                                display: -webkit-box;
                                display: -webkit-flex;
                                display: -ms-flexbox;
                                display: flex;
                                -webkit-flex-direction: column;
                                -ms-flex-direction: column;
                                flex-direction: column;
                                -webkit-align-items: flex-start;
                                -webkit-box-align: flex-start;
                                -ms-flex-align: flex-start;
                                align-items: flex-start;
                            }

                            @media (min-width: 820px) {
                                .css-cxhqc8 {
                                    width:100%;
                                    max-width: 1152px;
                                    -webkit-align-self: center;
                                    -ms-flex-item-align: center;
                                    align-self: center;
                                }
                            }
                        </style>
                        <div class="css-cxhqc8">
                            <style data-emotion="css u8kxam">
                                .css-u8kxam {
                                    font-family: Pretendard;
                                    font-style: normal;
                                    font-weight: 700;
                                    font-size: 24px;
                                    line-height: 34px;
                                    color: #141617;
                                    color: #25282A;
                                }

                                @media (min-width: 820px) {
                                    .css-u8kxam {
                                        font-family:Pretendard;
                                        font-style: normal;
                                        font-weight: 700;
                                        font-size: 40px;
                                        line-height: 56px;
                                        color: #141617;
                                        color: #25282A;
                                    }
                                }
                            </style>
                            <h1 class="css-u8kxam">50만 수강생이 선택한</h1>
                            <style data-emotion="css 18ok7we">
                                .css-18ok7we {
                                    font-family: Pretendard;
                                    font-style: normal;
                                    font-weight: 700;
                                    font-size: 24px;
                                    line-height: 34px;
                                    color: #141617;
                                    color: #25282A;
                                    background: linear-gradient(90deg, #fc8a97 0%, #e8344e 42.94%);
                                    -webkit-background-clip: text;
                                    background-clip: text;
                                    -webkit-background-clip: text;
                                    -webkit-text-fill-color: transparent;
                                }

                                @media (min-width: 820px) {
                                    .css-18ok7we {
                                        font-family:Pretendard;
                                        font-style: normal;
                                        font-weight: 700;
                                        font-size: 40px;
                                        line-height: 56px;
                                        color: #141617;
                                        color: #25282A;
                                    }
                                }
                            </style>
                            <h1 class="css-18ok7we">스파르타코딩클럽</h1>
                        </div>
                        <style data-emotion="css 143hej">
                            .css-143hej {
                                display: -webkit-box;
                                display: -webkit-flex;
                                display: -ms-flexbox;
                                display: flex;
                                -webkit-flex-direction: column;
                                -ms-flex-direction: column;
                                flex-direction: column;
                                -webkit-align-items: center;
                                -webkit-box-align: center;
                                -ms-flex-align: center;
                                align-items: center;
                                gap: 16px;
                                -webkit-align-self: stretch;
                                -ms-flex-item-align: stretch;
                                align-self: stretch;
                            }

                            @media (min-width: 820px) {
                                .css-143hej {
                                    -webkit-flex-direction:row;
                                    -ms-flex-direction: row;
                                    flex-direction: row;
                                    gap: 24px;
                                    max-width: 1152px;
                                    -webkit-align-self: center;
                                    -ms-flex-item-align: center;
                                    align-self: center;
                                }
                            }
                        </style>
                        <div class="css-143hej">
                            <style data-emotion="css bcb9a9">
                                .css-bcb9a9 {
                                    display: -webkit-box;
                                    display: -webkit-flex;
                                    display: -ms-flexbox;
                                    display: flex;
                                    padding: 24px 20px;
                                    -webkit-flex-direction: column;
                                    -ms-flex-direction: column;
                                    flex-direction: column;
                                    -webkit-box-pack: center;
                                    -ms-flex-pack: center;
                                    -webkit-justify-content: center;
                                    justify-content: center;
                                    -webkit-align-items: flex-end;
                                    -webkit-box-align: flex-end;
                                    -ms-flex-align: flex-end;
                                    align-items: flex-end;
                                    gap: 12px;
                                    -webkit-align-self: stretch;
                                    -ms-flex-item-align: stretch;
                                    align-self: stretch;
                                    border-radius: 8px;
                                    border: 1px solid #E4EBF0;
                                    background: #FFFFFF;
                                    box-shadow: 0px 8px 24px 0px rgba(129, 137, 143, 0.12);
                                }

                                @media (min-width: 820px) {
                                    .css-bcb9a9 {
                                        width:368px;
                                        height: 438px;
                                        gap: 16px;
                                        padding: 32px;
                                        border-radius: 12px;
                                    }

                                    .css-bcb9a9:hover {
                                        -webkit-transform: translateY(-12px);
                                        -moz-transform: translateY(-12px);
                                        -ms-transform: translateY(-12px);
                                        transform: translateY(-12px);
                                        -webkit-transition: all 0.2s ease-in-out;
                                        transition: all 0.2s ease-in-out;
                                    }
                                }
                            </style>
                            <button class="css-bcb9a9">
                                <style data-emotion="css 197aby8">
                                    .css-197aby8 {
                                        display: -webkit-box;
                                        display: -webkit-flex;
                                        display: -ms-flexbox;
                                        display: flex;
                                        -webkit-flex-direction: column;
                                        -ms-flex-direction: column;
                                        flex-direction: column;
                                        -webkit-box-pack: center;
                                        -ms-flex-pack: center;
                                        -webkit-justify-content: center;
                                        justify-content: center;
                                        -webkit-align-items: flex-start;
                                        -webkit-box-align: flex-start;
                                        -ms-flex-align: flex-start;
                                        align-items: flex-start;
                                        gap: 10px;
                                        -webkit-align-self: stretch;
                                        -ms-flex-item-align: stretch;
                                        align-self: stretch;
                                    }

                                    @media (min-width: 820px) {
                                        .css-197aby8 {
                                            gap:12px;
                                        }
                                    }
                                </style>
                                <div class="css-197aby8">
                                    <style data-emotion="css 18zxnkv">
                                        .css-18zxnkv {
                                            display: -webkit-box;
                                            display: -webkit-flex;
                                            display: -ms-flexbox;
                                            display: flex;
                                            padding: 2px 6px;
                                            -webkit-box-pack: center;
                                            -ms-flex-pack: center;
                                            -webkit-justify-content: center;
                                            justify-content: center;
                                            -webkit-align-items: center;
                                            -webkit-box-align: center;
                                            -ms-flex-align: center;
                                            align-items: center;
                                            gap: 10px;
                                            border-radius: 8px;
                                            background: #F5B200;
                                        }
                                    </style>
                                    <div class="css-18zxnkv">
                                        <style data-emotion="css 187mfrw">
                                            .css-187mfrw {
                                                font-family: Pretendard;
                                                font-style: normal;
                                                font-weight: 500;
                                                font-size: 13px;
                                                line-height: 21px;
                                                color: #141617;
                                                color: #FFFFFF;
                                            }
                                        </style>
                                        <p class="css-187mfrw">무료</p>
                                    </div>
                                    <style data-emotion="css 1r2nemk">
                                        .css-1r2nemk {
                                            font-family: Pretendard;
                                            font-style: normal;
                                            font-weight: 600;
                                            font-size: 18px;
                                            line-height: 25px;
                                            color: #141617;
                                            color: #000;
                                        }

                                        @media (min-width: 820px) {
                                            .css-1r2nemk {
                                                font-family:Pretendard;
                                                font-style: normal;
                                                font-weight: 600;
                                                font-size: 24px;
                                                line-height: 34px;
                                                color: #141617;
                                            }
                                        }
                                    </style>
                                    <p class="css-1r2nemk">무료특강</p>
                                    <style data-emotion="css 12j2poz">
                                        .css-12j2poz {
                                            font-family: Pretendard;
                                            font-style: normal;
                                            font-weight: 600;
                                            font-size: 16px;
                                            line-height: 22px;
                                            color: #141617;
                                            color: #9DA7AE;
                                            white-space: pre-wrap;
                                            text-align: left;
                                        }

                                        @media (min-width: 820px) {
                                            .css-12j2poz {
                                                font-family:Pretendard;
                                                font-style: normal;
                                                font-weight: 600;
                                                font-size: 20px;
                                                line-height: 26px;
                                                color: #141617;
                                                color: #9DA7AE;
                                            }
                                        }
                                    </style>
                                    <p class="css-12j2poz">재밌게 코딩 맛보고 싶다면?
쉬운 1시간 분량 만들기 강의</p>
                                </div>
                                <style data-emotion="css 1522xt9">
                                    .css-1522xt9 {
                                        aspect-ratio: 288/142.105;
                                        width: 100%;
                                        height: 100%;
                                    }

                                    @media (min-width: 820px) {
                                        .css-1522xt9 {
                                            aspect-ratio:304/150;
                                            width: 100%;
                                            height: 100%;
                                        }
                                    }
                                </style>
                                <img src="https://static.spartacodingclub.kr/TeamSparta-Inc/scc-frontend/assets/images/home/v4/start_to_end_0.webp" loading="lazy" class="css-1522xt9"/>
                                <style data-emotion="css 15xvgt0">
                                    .css-15xvgt0 {
                                        display: -webkit-box;
                                        display: -webkit-flex;
                                        display: -ms-flexbox;
                                        display: flex;
                                        width: 40px;
                                        height: 40px;
                                        -webkit-box-pack: center;
                                        -ms-flex-pack: center;
                                        -webkit-justify-content: center;
                                        justify-content: center;
                                        -webkit-align-items: center;
                                        -webkit-box-align: center;
                                        -ms-flex-align: center;
                                        align-items: center;
                                        gap: 2px;
                                        border-radius: 40px;
                                        background: #E4EBF0;
                                        -webkit-flex-shrink: 0;
                                        -ms-flex-negative: 0;
                                        flex-shrink: 0;
                                    }

                                    .css-15xvgt0 svg {
                                        width: 16px;
                                        height: 16px;
                                    }

                                    @media (min-width: 820px) {
                                        .css-15xvgt0 {
                                            width:52px;
                                            height: 52px;
                                            gap: 4px;
                                        }

                                        .css-15xvgt0 svg {
                                            width: 20px;
                                            height: 20px;
                                        }
                                    }
                                </style>
                                <div class="css-15xvgt0">
                                    <svg width="16" height="16" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                                        <path d="M8 2.80005V13.2" stroke="#3A3E41" stroke-width="1.5" stroke-linecap="round"></path>
                                        <path d="M13.2 8L2.79995 8" stroke="#3A3E41" stroke-width="1.5" stroke-linecap="round"></path>
                                    </svg>
                                </div>
                            </button>
                            <button class="css-bcb9a9">
                                <div class="css-197aby8">
                                    <style data-emotion="css crc739">
                                        .css-crc739 {
                                            display: -webkit-box;
                                            display: -webkit-flex;
                                            display: -ms-flexbox;
                                            display: flex;
                                            padding: 2px 6px;
                                            -webkit-box-pack: center;
                                            -ms-flex-pack: center;
                                            -webkit-justify-content: center;
                                            justify-content: center;
                                            -webkit-align-items: center;
                                            -webkit-box-align: center;
                                            -ms-flex-align: center;
                                            align-items: center;
                                            gap: 10px;
                                            border-radius: 8px;
                                            background: #57B094;
                                        }
                                    </style>
                                    <div class="css-crc739">
                                        <p class="css-187mfrw">국비지원</p>
                                    </div>
                                    <p class="css-1r2nemk">온라인 강의</p>
                                    <p class="css-12j2poz">성취감 가득! 실습으로 익히는
4~6주 과정 기초 강의</p>
                                </div>
                                <img src="https://static.spartacodingclub.kr/TeamSparta-Inc/scc-frontend/assets/images/home/v4/start_to_end_1.webp" loading="lazy" class="css-1522xt9"/>
                                <div class="css-15xvgt0">
                                    <svg width="16" height="16" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                                        <path d="M8 2.80005V13.2" stroke="#3A3E41" stroke-width="1.5" stroke-linecap="round"></path>
                                        <path d="M13.2 8L2.79995 8" stroke="#3A3E41" stroke-width="1.5" stroke-linecap="round"></path>
                                    </svg>
                                </div>
                            </button>
                            <button class="css-bcb9a9">
                                <div class="css-197aby8">
                                    <div class="css-crc739">
                                        <p class="css-187mfrw">국비지원</p>
                                    </div>
                                    <p class="css-1r2nemk">취업 부트캠프</p>
                                    <p class="css-12j2poz">IT 직군 취업을 꿈꾼다면,
4개월 몰입형 부트캠프로</p>
                                </div>
                                <img src="https://static.spartacodingclub.kr/TeamSparta-Inc/scc-frontend/assets/images/home/v4/start_to_end_2.webp" loading="lazy" class="css-1522xt9"/>
                                <div class="css-15xvgt0">
                                    <svg width="16" height="16" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                                        <path d="M8 2.80005V13.2" stroke="#3A3E41" stroke-width="1.5" stroke-linecap="round"></path>
                                        <path d="M13.2 8L2.79995 8" stroke="#3A3E41" stroke-width="1.5" stroke-linecap="round"></path>
                                    </svg>
                                </div>
                            </button>
                        </div>
                    </section>
                    <style data-emotion="css 1nl0uwc">
                        .css-1nl0uwc {
                            display: -webkit-box;
                            display: -webkit-flex;
                            display: -ms-flexbox;
                            display: flex;
                            width: 100vw;
                            padding: 60px 16px;
                            -webkit-flex-direction: column;
                            -ms-flex-direction: column;
                            flex-direction: column;
                            -webkit-align-items: center;
                            -webkit-box-align: center;
                            -ms-flex-align: center;
                            align-items: center;
                            gap: 30px;
                            background: #FFFFFF;
                        }

                        @media (min-width: 1200px) {
                            .css-1nl0uwc {
                                display:none;
                            }
                        }
                    </style>
                    <section class="css-1nl0uwc">
                        <style data-emotion="css 1whajzu">
                            .css-1whajzu {
                                display: -webkit-box;
                                display: -webkit-flex;
                                display: -ms-flexbox;
                                display: flex;
                                -webkit-flex-direction: column;
                                -ms-flex-direction: column;
                                flex-direction: column;
                                -webkit-align-items: flex-start;
                                -webkit-box-align: flex-start;
                                -ms-flex-align: flex-start;
                                align-items: flex-start;
                                gap: 8px;
                                -webkit-align-self: stretch;
                                -ms-flex-item-align: stretch;
                                align-self: stretch;
                            }

                            @media (min-width: 1200px) {
                                .css-1whajzu {
                                    -webkit-align-self:center;
                                    -ms-flex-item-align: center;
                                    align-self: center;
                                    width: 100%;
                                    max-width: 1200px;
                                    gap: 16px;
                                }
                            }
                        </style>
                        <div class="css-1whajzu">
                            <style data-emotion="css 38apl0">
                                .css-38apl0 {
                                    font-family: Pretendard;
                                    font-style: normal;
                                    font-weight: 600;
                                    font-size: 14px;
                                    line-height: 22px;
                                    color: #141617;
                                    color: #9DA7AE;
                                }

                                @media (min-width: 1200px) {
                                    .css-38apl0 {
                                        font-family:Pretendard;
                                        font-style: normal;
                                        font-weight: 600;
                                        font-size: 20px;
                                        line-height: 26px;
                                        color: #141617;
                                        color: #9DA7AE;
                                    }
                                }
                            </style>
                            <h2 class="css-38apl0">수강환경</h2>
                            <style data-emotion="css 6emhi3">
                                .css-6emhi3 {
                                    font-family: Pretendard;
                                    font-style: normal;
                                    font-weight: 700;
                                    font-size: 20px;
                                    line-height: 28px;
                                    color: #141617;
                                    color: #25282A;
                                }

                                @media (min-width: 1200px) {
                                    .css-6emhi3 {
                                        font-family:Pretendard;
                                        font-style: normal;
                                        font-weight: 700;
                                        font-size: 32px;
                                        line-height: 45px;
                                        color: #141617;
                                        color: #25282A;
                                    }
                                }
                            </style>
                            <h1 class="css-6emhi3">코딩 입문을 위한 완벽한 수강환경</h1>
                        </div>
                        <style data-emotion="css 1v6knl8">
                            .css-1v6knl8 {
                                font-family: Pretendard;
                                font-style: normal;
                                font-weight: 600;
                                font-size: 14px;
                                line-height: 22px;
                                color: #141617;
                                -webkit-align-self: stretch;
                                -ms-flex-item-align: stretch;
                                align-self: stretch;
                                color: #9DA7AE!important;
                            }

                            .css-1v6knl8 b {
                                color: #5F666B!important;
                            }

                            @media (min-width: 1200px) {
                                .css-1v6knl8 {
                                    font-family:Pretendard;
                                    font-style: normal;
                                    font-weight: 600;
                                    font-size: 18px;
                                    line-height: 29px;
                                    color: #141617;
                                }
                            }
                        </style>
                        <p class="css-1v6knl8">
                            스파르타코딩클럽에서는<br/>
                            완주까지 막힘없이 수강할 수 있도록<br/>
                            <b>왕초보에게 최적의 수강환경</b>
                            을 제공해요
                        </p>
                        <style data-emotion="css 19tjode">
                            .css-19tjode {
                                width: 100%;
                                height: 1px;
                                -webkit-align-self: stretch;
                                -ms-flex-item-align: stretch;
                                align-self: stretch;
                                background: #E4EBF0;
                            }
                        </style>
                        <div class="css-19tjode"></div>
                        <style data-emotion="css vw652v">
                            .css-vw652v {
                                display: -webkit-box;
                                display: -webkit-flex;
                                display: -ms-flexbox;
                                display: flex;
                                -webkit-flex-direction: column;
                                -ms-flex-direction: column;
                                flex-direction: column;
                                gap: 24px;
                            }
                        </style>
                        <div class="css-vw652v">
                            <style data-emotion="css 3tne69">
                                .css-3tne69 {
                                    display: -webkit-box;
                                    display: -webkit-flex;
                                    display: -ms-flexbox;
                                    display: flex;
                                    -webkit-flex-direction: column;
                                    -ms-flex-direction: column;
                                    flex-direction: column;
                                    -webkit-box-pack: center;
                                    -ms-flex-pack: center;
                                    -webkit-justify-content: center;
                                    justify-content: center;
                                    gap: 4px;
                                    border-radius: 8px;
                                }
                            </style>
                            <div class="css-3tne69">
                                <h2 class="css-38apl0">신청만 하고 잊는 일은 없도록</h2>
                                <style data-emotion="css fqzaxn">
                                    .css-fqzaxn {
                                        font-family: Pretendard;
                                        font-style: normal;
                                        font-weight: 600;
                                        font-size: 18px;
                                        line-height: 25px;
                                        color: #141617;
                                        color: #3A3E41;
                                    }
                                </style>
                                <h2 class="css-fqzaxn">찐한관리</h2>
                            </div>
                            <style data-emotion="css 1hh9pmc">
                                .css-1hh9pmc {
                                    aspect-ratio: 328/215.25;
                                    width: 100%;
                                    height: 100%;
                                    border-radius: 8px;
                                    -webkit-transition: opacity 0.5s ease-in-out;
                                    transition: opacity 0.5s ease-in-out;
                                }

                                @media (min-width: 1200px) {
                                    .css-1hh9pmc {
                                        position:absolute;
                                        opacity: 1;
                                        right: 24px;
                                        aspect-ratio: 328/215.25;
                                        width: 640px;
                                        height: 420px;
                                        border-radius: 12px;
                                    }
                                }
                            </style>
                            <img src="https://static.spartacodingclub.kr/TeamSparta-Inc/scc-frontend/assets/images/home/v4/strength_1.webp" class="css-1hh9pmc"/>
                        </div>
                        <div class="css-vw652v">
                            <div class="css-3tne69">
                                <h2 class="css-38apl0">확실하게 알고 넘어가도록</h2>
                                <h2 class="css-fqzaxn">즉문즉답</h2>
                            </div>
                            <img src="https://static.spartacodingclub.kr/TeamSparta-Inc/scc-frontend/assets/images/home/v4/strength_2.webp" class="css-1hh9pmc"/>
                        </div>
                    </section>
                    <style data-emotion="css ob1a3">
                        .css-ob1a3 {
                            display: none;
                        }

                        @media (min-width: 1200px) {
                            .css-ob1a3 {
                                display:-webkit-box;
                                display: -webkit-flex;
                                display: -ms-flexbox;
                                display: flex;
                                -webkit-flex-direction: column;
                                -ms-flex-direction: column;
                                flex-direction: column;
                                -webkit-align-items: center;
                                -webkit-box-align: center;
                                -ms-flex-align: center;
                                align-items: center;
                                width: 100vw;
                                height: 200vh;
                                position: relative;
                                padding: 100px 24px;
                            }
                        }
                    </style>
                    <section class="css-ob1a3">
                        <style data-emotion="css 6b5wuu">
                            .css-6b5wuu {
                                display: none;
                            }

                            @media (min-width: 1200px) {
                                .css-6b5wuu {
                                    display:-webkit-box;
                                    display: -webkit-flex;
                                    display: -ms-flexbox;
                                    display: flex;
                                    -webkit-flex-direction: column;
                                    -ms-flex-direction: column;
                                    flex-direction: column;
                                    -webkit-align-items: center;
                                    -webkit-box-align: center;
                                    -ms-flex-align: center;
                                    align-items: center;
                                    -webkit-box-pack: center;
                                    -ms-flex-pack: center;
                                    -webkit-justify-content: center;
                                    justify-content: center;
                                    -webkit-box-pack: start;
                                    -ms-flex-pack: start;
                                    -webkit-justify-content: flex-start;
                                    justify-content: flex-start;
                                    padding: 0px 24px;
                                    gap: 60px;
                                    width: 100%;
                                    max-width: 1200px;
                                    position: -webkit-sticky;
                                    position: sticky;
                                    top: 20%;
                                }
                            }
                        </style>
                        <div class="css-6b5wuu">
                            <div class="css-1whajzu">
                                <h2 class="css-38apl0">수강환경</h2>
                                <h1 class="css-6emhi3">코딩 입문을 위한 완벽한 수강환경</h1>
                            </div>
                            <style data-emotion="css 6zvvo0">
                                .css-6zvvo0 {
                                    display: -webkit-box;
                                    display: -webkit-flex;
                                    display: -ms-flexbox;
                                    display: flex;
                                    -webkit-box-pack: justify;
                                    -webkit-justify-content: space-between;
                                    justify-content: space-between;
                                    -webkit-align-items: flex-start;
                                    -webkit-box-align: flex-start;
                                    -ms-flex-align: flex-start;
                                    align-items: flex-start;
                                    -webkit-align-self: stretch;
                                    -ms-flex-item-align: stretch;
                                    align-self: stretch;
                                }
                            </style>
                            <div class="css-6zvvo0">
                                <style data-emotion="css h0nuku">
                                    .css-h0nuku {
                                        display: -webkit-box;
                                        display: -webkit-flex;
                                        display: -ms-flexbox;
                                        display: flex;
                                        width: 400px;
                                        -webkit-flex-direction: column;
                                        -ms-flex-direction: column;
                                        flex-direction: column;
                                        -webkit-align-items: flex-start;
                                        -webkit-box-align: flex-start;
                                        -ms-flex-align: flex-start;
                                        align-items: flex-start;
                                        gap: 41px;
                                    }
                                </style>
                                <div class="css-h0nuku">
                                    <p class="css-1v6knl8">
                                        스파르타코딩클럽에서는<br/>
                                        완주까지 막힘없이 수강할 수 있도록<br/>
                                        <b>왕초보에게 최적의 수강환경</b>
                                        을 제공해요
                                    </p>
                                    <div class="css-19tjode"></div>
                                    <style data-emotion="css ogfxw5">
                                        .css-ogfxw5 {
                                            display: -webkit-box;
                                            display: -webkit-flex;
                                            display: -ms-flexbox;
                                            display: flex;
                                            -webkit-flex-direction: column;
                                            -ms-flex-direction: column;
                                            flex-direction: column;
                                            -webkit-align-items: flex-start;
                                            -webkit-box-align: flex-start;
                                            -ms-flex-align: flex-start;
                                            align-items: flex-start;
                                            gap: 16px;
                                            -webkit-align-self: stretch;
                                            -ms-flex-item-align: stretch;
                                            align-self: stretch;
                                        }
                                    </style>
                                    <div class="css-ogfxw5">
                                        <style data-emotion="css yoch3a">
                                            .css-yoch3a {
                                                display: -webkit-box;
                                                display: -webkit-flex;
                                                display: -ms-flexbox;
                                                display: flex;
                                                padding: 24px 20px;
                                                -webkit-box-pack: justify;
                                                -webkit-justify-content: space-between;
                                                justify-content: space-between;
                                                -webkit-align-items: center;
                                                -webkit-box-align: center;
                                                -ms-flex-align: center;
                                                align-items: center;
                                                -webkit-align-self: stretch;
                                                -ms-flex-item-align: stretch;
                                                align-self: stretch;
                                                border-radius: 12px;
                                                background: #F6F9FA;
                                                background: #F6F9FA;
                                            }
                                        </style>
                                        <button class="css-yoch3a">
                                            <style data-emotion="css 1c4px6t">
                                                .css-1c4px6t {
                                                    display: -webkit-box;
                                                    display: -webkit-flex;
                                                    display: -ms-flexbox;
                                                    display: flex;
                                                    -webkit-flex-direction: column;
                                                    -ms-flex-direction: column;
                                                    flex-direction: column;
                                                    -webkit-align-items: flex-start;
                                                    -webkit-box-align: flex-start;
                                                    -ms-flex-align: flex-start;
                                                    align-items: flex-start;
                                                    gap: 6px;
                                                }
                                            </style>
                                            <div class="css-1c4px6t">
                                                <style data-emotion="css 1axpcbz">
                                                    .css-1axpcbz {
                                                        font-family: Pretendard;
                                                        font-style: normal;
                                                        font-weight: 600;
                                                        font-size: 18px;
                                                        line-height: 29px;
                                                        color: #141617;
                                                        color: #81898F;
                                                        text-align: center;
                                                    }
                                                </style>
                                                <h4 class="css-1axpcbz">신청만 하고 잊는 일은 없도록</h4>
                                                <style data-emotion="css 1haxta2">
                                                    .css-1haxta2 {
                                                        font-family: Pretendard;
                                                        font-style: normal;
                                                        font-weight: 600;
                                                        font-size: 24px;
                                                        line-height: 34px;
                                                        color: #141617;
                                                        color: #3A3E41;
                                                        text-align: center;
                                                    }
                                                </style>
                                                <h3 class="css-1haxta2">찐한관리</h3>
                                            </div>
                                            <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                <path d="M9.5 5L16.5 12L9.5 19" stroke="#141617" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path>
                                            </svg>
                                        </button>
                                        <style data-emotion="css 1gfy97i">
                                            .css-1gfy97i {
                                                display: -webkit-box;
                                                display: -webkit-flex;
                                                display: -ms-flexbox;
                                                display: flex;
                                                padding: 24px 20px;
                                                -webkit-box-pack: justify;
                                                -webkit-justify-content: space-between;
                                                justify-content: space-between;
                                                -webkit-align-items: center;
                                                -webkit-box-align: center;
                                                -ms-flex-align: center;
                                                align-items: center;
                                                -webkit-align-self: stretch;
                                                -ms-flex-item-align: stretch;
                                                align-self: stretch;
                                                border-radius: 12px;
                                                background: #F6F9FA;
                                                background: #FFFFFF;
                                            }
                                        </style>
                                        <button class="css-1gfy97i">
                                            <div class="css-1c4px6t">
                                                <style data-emotion="css efn0i">
                                                    .css-efn0i {
                                                        font-family: Pretendard;
                                                        font-style: normal;
                                                        font-weight: 600;
                                                        font-size: 18px;
                                                        line-height: 29px;
                                                        color: #141617;
                                                        color: #C7D2D8;
                                                        text-align: center;
                                                    }
                                                </style>
                                                <h4 class="css-efn0i">확실하게 알고 넘어가도록</h4>
                                                <style data-emotion="css 14lhscs">
                                                    .css-14lhscs {
                                                        font-family: Pretendard;
                                                        font-style: normal;
                                                        font-weight: 600;
                                                        font-size: 24px;
                                                        line-height: 34px;
                                                        color: #141617;
                                                        color: #B4BFC6;
                                                        text-align: center;
                                                    }
                                                </style>
                                                <h3 class="css-14lhscs">즉문즉답</h3>
                                            </div>
                                            <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                <path d="M9.5 5L16.5 12L9.5 19" stroke="#B4BFC6" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path>
                                            </svg>
                                        </button>
                                    </div>
                                </div>
                                <img src="https://static.spartacodingclub.kr/TeamSparta-Inc/scc-frontend/assets/images/home/v4/strength_1.webp" class="css-1hh9pmc"/>
                                <style data-emotion="css mdclay">
                                    .css-mdclay {
                                        aspect-ratio: 328/215.25;
                                        width: 100%;
                                        height: 100%;
                                        border-radius: 8px;
                                        -webkit-transition: opacity 0.5s ease-in-out;
                                        transition: opacity 0.5s ease-in-out;
                                    }

                                    @media (min-width: 1200px) {
                                        .css-mdclay {
                                            position:absolute;
                                            opacity: 0;
                                            right: 24px;
                                            aspect-ratio: 328/215.25;
                                            width: 640px;
                                            height: 420px;
                                            border-radius: 12px;
                                        }
                                    }
                                </style>
                                <img src="https://static.spartacodingclub.kr/TeamSparta-Inc/scc-frontend/assets/images/home/v4/strength_2.webp" class="css-mdclay"/>
                            </div>
                        </div>
                    </section>
                    <style data-emotion="css 1jxet56">
                        .css-1jxet56 {
                            display: -webkit-box;
                            display: -webkit-flex;
                            display: -ms-flexbox;
                            display: flex;
                            -webkit-flex-direction: column;
                            -ms-flex-direction: column;
                            flex-direction: column;
                            -webkit-box-pack: center;
                            -ms-flex-pack: center;
                            -webkit-justify-content: center;
                            justify-content: center;
                            -webkit-align-items: center;
                            -webkit-box-align: center;
                            -ms-flex-align: center;
                            align-items: center;
                            width: 100%;
                            padding: 60px 16px;
                            gap: 30px;
                        }

                        @media(min-width: 1024px) {
                            .css-1jxet56 {
                                gap:60px;
                                padding: 100px 24px;
                                width: 100vw;
                            }
                        }
                    </style>
                    <section class="css-1jxet56">
                        <style data-emotion="css ce4c5q">
                            .css-ce4c5q {
                                display: -webkit-box;
                                display: -webkit-flex;
                                display: -ms-flexbox;
                                display: flex;
                                -webkit-flex-direction: column;
                                -ms-flex-direction: column;
                                flex-direction: column;
                                -webkit-align-items: flex-start;
                                -webkit-box-align: flex-start;
                                -ms-flex-align: flex-start;
                                align-items: flex-start;
                                gap: 8px;
                                -webkit-align-self: flex-start;
                                -ms-flex-item-align: flex-start;
                                align-self: flex-start;
                            }

                            @media(min-width: 1024px) {
                                .css-ce4c5q {
                                    -webkit-align-items:center;
                                    -webkit-box-align: center;
                                    -ms-flex-align: center;
                                    align-items: center;
                                    gap: 16px;
                                    -webkit-align-self: center;
                                    -ms-flex-item-align: center;
                                    align-self: center;
                                }
                            }
                        </style>
                        <div class="css-ce4c5q">
                            <style data-emotion="css qtxzcw">
                                .css-qtxzcw {
                                    font-family: Pretendard;
                                    font-style: normal;
                                    font-weight: 600;
                                    font-size: 14px;
                                    line-height: 22px;
                                    color: #141617;
                                    color: #9DA7AE;
                                }

                                @media(min-width: 1024px) {
                                    .css-qtxzcw {
                                        font-family:Pretendard;
                                        font-style: normal;
                                        font-weight: 600;
                                        font-size: 20px;
                                        line-height: 26px;
                                        color: #141617;
                                        color: #9DA7AE;
                                        text-align: center;
                                    }
                                }
                            </style>
                            <h2 class="css-qtxzcw">코딩 맛집</h2>
                            <style data-emotion="css 1r8mi0e">
                                .css-1r8mi0e {
                                    font-family: Pretendard;
                                    font-style: normal;
                                    font-weight: 700;
                                    font-size: 20px;
                                    line-height: 28px;
                                    color: #141617;
                                    color: #141617;
                                }

                                @media(min-width: 1024px) {
                                    .css-1r8mi0e {
                                        font-family:Pretendard;
                                        font-style: normal;
                                        font-weight: 700;
                                        font-size: 32px;
                                        line-height: 45px;
                                        color: #141617;
                                        color: #25282A;
                                        text-align: center;
                                    }
                                }
                            </style>
                            <h1 class="css-1r8mi0e">원하는 메뉴로 골라 들어요</h1>
                        </div>
                        <style data-emotion="css pwd1rx">
                            .css-pwd1rx {
                                display: none;
                            }

                            @media(min-width: 1024px) {
                                .css-pwd1rx {
                                    display:block;
                                }
                            }
                        </style>
                        <div class="css-pwd1rx">
                            <style data-emotion="css tu0df2">
                                .css-tu0df2 {
                                    display: -webkit-box;
                                    display: -webkit-flex;
                                    display: -ms-flexbox;
                                    display: flex;
                                    height: 360px;
                                    -webkit-box-pack: center;
                                    -ms-flex-pack: center;
                                    -webkit-justify-content: center;
                                    justify-content: center;
                                    -webkit-align-items: flex-start;
                                    -webkit-box-align: flex-start;
                                    -ms-flex-align: flex-start;
                                    align-items: flex-start;
                                    -webkit-align-content: flex-start;
                                    -ms-flex-line-pack: flex-start;
                                    align-content: flex-start;
                                    gap: 24px;
                                    width: 1152px;
                                }
                            </style>
                            <div class="css-tu0df2">
                                <style data-emotion="css 8vby3x">
                                    .css-8vby3x {
                                        display: -webkit-box;
                                        display: -webkit-flex;
                                        display: -ms-flexbox;
                                        display: flex;
                                        width: 640px;
                                        height: 100%;
                                        overflow: hidden;
                                        -webkit-transition: width 0.5s ease;
                                        transition: width 0.5s ease;
                                        background: linear-gradient(180deg, #FFAE50 0%, #FADBBF 100%);
                                        border-radius: 12px;
                                        position: relative;
                                    }
                                </style>
                                <div class="css-8vby3x">
                                    <style data-emotion="css 2kzkyz">
                                        .css-2kzkyz {
                                            display: -webkit-box;
                                            display: -webkit-flex;
                                            display: -ms-flexbox;
                                            display: flex;
                                            -webkit-transition: opacity 0.5s ease;
                                            transition: opacity 0.5s ease;
                                            opacity: 1;
                                            width: 640px;
                                            overflow: hidden;
                                            -webkit-flex-shrink: 0;
                                            -ms-flex-negative: 0;
                                            flex-shrink: 0;
                                            position: absolute;
                                            left: 0;
                                        }
                                    </style>
                                    <div class="css-2kzkyz">
                                        <style data-emotion="css a92hqq">
                                            .css-a92hqq {
                                                display: -webkit-box;
                                                display: -webkit-flex;
                                                display: -ms-flexbox;
                                                display: flex;
                                                -webkit-flex-direction: column;
                                                -ms-flex-direction: column;
                                                flex-direction: column;
                                                -webkit-box-pack: justify;
                                                -webkit-justify-content: space-between;
                                                justify-content: space-between;
                                                padding: 32px 0 32px 32px;
                                                width: calc(100% - 318px);
                                            }
                                        </style>
                                        <div class="css-a92hqq">
                                            <style data-emotion="css 1460n9u">
                                                .css-1460n9u {
                                                    display: -webkit-inline-box;
                                                    display: -webkit-inline-flex;
                                                    display: -ms-inline-flexbox;
                                                    display: inline-flex;
                                                    -webkit-flex-direction: column;
                                                    -ms-flex-direction: column;
                                                    flex-direction: column;
                                                    -webkit-align-items: flex-start;
                                                    -webkit-box-align: flex-start;
                                                    -ms-flex-align: flex-start;
                                                    align-items: flex-start;
                                                    gap: 16px;
                                                }
                                            </style>
                                            <div class="css-1460n9u">
                                                <style data-emotion="css aw4bht">
                                                    .css-aw4bht {
                                                        display: -webkit-box;
                                                        display: -webkit-flex;
                                                        display: -ms-flexbox;
                                                        display: flex;
                                                        padding: 4px 12px;
                                                        -webkit-box-pack: center;
                                                        -ms-flex-pack: center;
                                                        -webkit-justify-content: center;
                                                        justify-content: center;
                                                        -webkit-align-items: center;
                                                        -webkit-box-align: center;
                                                        -ms-flex-align: center;
                                                        align-items: center;
                                                        gap: 10px;
                                                        border-radius: 23px;
                                                        border: 1px solid #FFFFFF;
                                                        -webkit-flex-shrink: 0;
                                                        -ms-flex-negative: 0;
                                                        flex-shrink: 0;
                                                    }
                                                </style>
                                                <div class="css-aw4bht">
                                                    <style data-emotion="css 10b6fqf">
                                                        .css-10b6fqf {
                                                            font-family: Pretendard;
                                                            font-style: normal;
                                                            font-weight: 500;
                                                            font-size: 14px;
                                                            line-height: 22px;
                                                            color: #141617;
                                                            color: #FFFFFF;
                                                            text-align: center;
                                                            -webkit-flex-shrink: 0;
                                                            -ms-flex-negative: 0;
                                                            flex-shrink: 0;
                                                        }
                                                    </style>
                                                    <p class="css-10b6fqf">[왕초보] 웹개발 종합반</p>
                                                </div>
                                                <style data-emotion="css dew6tv">
                                                    .css-dew6tv {
                                                        font-family: Pretendard;
                                                        font-style: normal;
                                                        font-weight: 700;
                                                        font-size: 32px;
                                                        line-height: 45px;
                                                        color: #141617;
                                                        color: #FFFFFF;
                                                        white-space: pre-wrap;
                                                    }
                                                </style>
                                                <h1 class="css-dew6tv">나만의 웹사이트를
갖고 싶어</h1>
                                                <style data-emotion="css zv24fc">
                                                    .css-zv24fc {
                                                        font-family: Pretendard;
                                                        font-style: normal;
                                                        font-weight: 500;
                                                        font-size: 14px;
                                                        line-height: 22px;
                                                        color: #141617;
                                                        color: #FFFFFF;
                                                        opacity: 0.8;
                                                        white-space: pre-wrap;
                                                        word-break: keep-all;
                                                    }
                                                </style>
                                                <p class="css-zv24fc">영화 기록 사이트, 추억 사진첩 사이트를 만들며
웹사이트의 기본 구조와 작동 원리를 익혀보세요.</p>
                                            </div>
                                            <style data-emotion="css 1nhv5qc">
                                                .css-1nhv5qc {
                                                    -webkit-filter: drop-shadow(0px 8px 24px rgba(95, 102, 107, 0.12));
                                                    filter: drop-shadow(0px 8px 24px rgba(95, 102, 107, 0.12));
                                                    cursor: pointer;
                                                    z-index: 1;
                                                    width: -webkit-fit-content;
                                                    width: -moz-fit-content;
                                                    width: fit-content;
                                                }
                                            </style>
                                            <div class="css-1nhv5qc">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="44" height="44" viewBox="0 0 44 44" fill="none">
                                                    <path fill-rule="evenodd" clip-rule="evenodd" d="M22 44C34.1503 44 44 34.1503 44 22C44 9.84974 34.1503 0 22 0C9.84974 0 0 9.84974 0 22C0 34.1503 9.84974 44 22 44ZM21.9597 26.7071C21.5692 26.3166 21.5692 25.6834 21.9597 25.2929L24.2526 23H17.3335C16.7812 23 16.3335 22.5523 16.3335 22C16.3335 21.4477 16.7812 21 17.3335 21H24.2526L21.9597 18.7071C21.5692 18.3166 21.5692 17.6834 21.9597 17.2929C22.3503 16.9024 22.9834 16.9024 23.3739 17.2929L27.3739 21.2929C27.7645 21.6834 27.7645 22.3166 27.3739 22.7071L23.3739 26.7071C22.9834 27.0976 22.3503 27.0976 21.9597 26.7071Z" fill="white"></path>
                                                </svg>
                                            </div>
                                        </div>
                                        <style data-emotion="css 165qenb">
                                            .css-165qenb {
                                                width: 318px;
                                                height: 100%;
                                            }
                                        </style>
                                        <div class="css-165qenb">
                                            <span style="box-sizing:border-box;display:inline-block;overflow:hidden;width:initial;height:initial;background:none;opacity:1;border:0;margin:0;padding:0;position:relative;max-width:100%">
                                                <span style="box-sizing:border-box;display:block;width:initial;height:initial;background:none;opacity:1;border:0;margin:0;padding:0;max-width:100%">
                                                    <img style="display:block;max-width:100%;width:initial;height:initial;background:none;opacity:1;border:0;margin:0;padding:0" alt="" aria-hidden="true" src="data:image/svg+xml,%3csvg%20xmlns=%27http://www.w3.org/2000/svg%27%20version=%271.1%27%20width=%27318%27%20height=%27360%27/%3e"/>
                                                </span>
                                                <img alt="[왕초보] 웹개발 종합반" src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" decoding="async" data-nimg="intrinsic" style="position:absolute;top:0;left:0;bottom:0;right:0;box-sizing:border-box;padding:0;border:none;margin:auto;display:block;width:0;height:0;min-width:100%;max-width:100%;min-height:100%;max-height:100%"/>
                                                <noscript>
                                                    <img alt="[왕초보] 웹개발 종합반" loading="lazy" decoding="async" data-nimg="intrinsic" style="position:absolute;top:0;left:0;bottom:0;right:0;box-sizing:border-box;padding:0;border:none;margin:auto;display:block;width:0;height:0;min-width:100%;max-width:100%;min-height:100%;max-height:100%" srcSet="/_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fhome%2Fv4%2Fpc_kdcdiv_big_web_basic.png&amp;w=384&amp;q=75 1x, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fhome%2Fv4%2Fpc_kdcdiv_big_web_basic.png&amp;w=640&amp;q=75 2x" src="_next/pc_kdcdiv_big_web_basic8f90.png?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fhome%2Fv4%2Fpc_kdcdiv_big_web_basic.png&amp;w=640&amp;q=75"/>
                                                </noscript>
                                            </span>
                                        </div>
                                    </div>
                                    <style data-emotion="css 1csu2es">
                                        .css-1csu2es {
                                            display: -webkit-box;
                                            display: -webkit-flex;
                                            display: -ms-flexbox;
                                            display: flex;
                                            -webkit-flex-direction: column;
                                            -ms-flex-direction: column;
                                            flex-direction: column;
                                            -webkit-align-items: flex-start;
                                            -webkit-box-align: flex-start;
                                            -ms-flex-align: flex-start;
                                            align-items: flex-start;
                                            -webkit-transition: opacity 0.5s ease;
                                            transition: opacity 0.5s ease;
                                            opacity: 0;
                                            position: absolute;
                                            left: 0;
                                            height: 360px;
                                            gap: 76px;
                                            width: 146px;
                                            -webkit-flex-shrink: 0;
                                            -ms-flex-negative: 0;
                                            flex-shrink: 0;
                                        }
                                    </style>
                                    <div class="css-1csu2es">
                                        <style data-emotion="css aflir5">
                                            .css-aflir5 {
                                                font-family: Pretendard;
                                                font-style: normal;
                                                font-weight: 600;
                                                font-size: 18px;
                                                line-height: 29px;
                                                color: #141617;
                                                color: #FFFFFF;
                                                padding: 24px 24px 0 24px;
                                                word-break: keep-all;
                                            }
                                        </style>
                                        <h2 class="css-aflir5">나만의 웹사이트를
갖고 싶어</h2>
                                        <span style="box-sizing:border-box;display:inline-block;overflow:hidden;width:initial;height:initial;background:none;opacity:1;border:0;margin:0;padding:0;position:relative;max-width:100%">
                                            <span style="box-sizing:border-box;display:block;width:initial;height:initial;background:none;opacity:1;border:0;margin:0;padding:0;max-width:100%">
                                                <img style="display:block;max-width:100%;width:initial;height:initial;background:none;opacity:1;border:0;margin:0;padding:0" alt="" aria-hidden="true" src="data:image/svg+xml,%3csvg%20xmlns=%27http://www.w3.org/2000/svg%27%20version=%271.1%27%20width=%27150%27%20height=%27198%27/%3e"/>
                                            </span>
                                            <img alt="[왕초보] 웹개발 종합반" src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" decoding="async" data-nimg="intrinsic" style="position:absolute;top:0;left:0;bottom:0;right:0;box-sizing:border-box;padding:0;border:none;margin:auto;display:block;width:0;height:0;min-width:100%;max-width:100%;min-height:100%;max-height:100%"/>
                                            <noscript>
                                                <img alt="[왕초보] 웹개발 종합반" loading="lazy" decoding="async" data-nimg="intrinsic" style="position:absolute;top:0;left:0;bottom:0;right:0;box-sizing:border-box;padding:0;border:none;margin:auto;display:block;width:0;height:0;min-width:100%;max-width:100%;min-height:100%;max-height:100%" srcSet="/_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fhome%2Fv4%2Fpc_kdcdiv_small_web_basic.png&amp;w=256&amp;q=75 1x, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fhome%2Fv4%2Fpc_kdcdiv_small_web_basic.png&amp;w=384&amp;q=75 2x" src="_next/pc_kdcdiv_small_web_basic5275.png?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fhome%2Fv4%2Fpc_kdcdiv_small_web_basic.png&amp;w=384&amp;q=75"/>
                                            </noscript>
                                        </span>
                                    </div>
                                </div>
                                <style data-emotion="css 1co2mkm">
                                    .css-1co2mkm {
                                        display: -webkit-box;
                                        display: -webkit-flex;
                                        display: -ms-flexbox;
                                        display: flex;
                                        width: 146px;
                                        height: 100%;
                                        overflow: hidden;
                                        -webkit-transition: width 0.5s ease;
                                        transition: width 0.5s ease;
                                        background: #AD90FF;
                                        border-radius: 12px;
                                        position: relative;
                                    }
                                </style>
                                <div class="css-1co2mkm">
                                    <style data-emotion="css 10l2t0o">
                                        .css-10l2t0o {
                                            display: -webkit-box;
                                            display: -webkit-flex;
                                            display: -ms-flexbox;
                                            display: flex;
                                            -webkit-transition: opacity 0.5s ease;
                                            transition: opacity 0.5s ease;
                                            opacity: 0;
                                            width: 640px;
                                            overflow: hidden;
                                            -webkit-flex-shrink: 0;
                                            -ms-flex-negative: 0;
                                            flex-shrink: 0;
                                            position: absolute;
                                            left: 0;
                                        }
                                    </style>
                                    <div class="css-10l2t0o">
                                        <div class="css-a92hqq">
                                            <div class="css-1460n9u">
                                                <div class="css-aw4bht">
                                                    <p class="css-10b6fqf">ChatGPT 300% 활용하기</p>
                                                </div>
                                                <h1 class="css-dew6tv">AI? ChatGPT?
그게 뭔데?</h1>
                                                <p class="css-zv24fc">똑똑하다고 소문 난 인공지능,  제대로 질문하는 법을
배워 나만의 업무 자동화 프로그램으로 활용하세요!</p>
                                            </div>
                                            <div class="css-1nhv5qc">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="44" height="44" viewBox="0 0 44 44" fill="none">
                                                    <path fill-rule="evenodd" clip-rule="evenodd" d="M22 44C34.1503 44 44 34.1503 44 22C44 9.84974 34.1503 0 22 0C9.84974 0 0 9.84974 0 22C0 34.1503 9.84974 44 22 44ZM21.9597 26.7071C21.5692 26.3166 21.5692 25.6834 21.9597 25.2929L24.2526 23H17.3335C16.7812 23 16.3335 22.5523 16.3335 22C16.3335 21.4477 16.7812 21 17.3335 21H24.2526L21.9597 18.7071C21.5692 18.3166 21.5692 17.6834 21.9597 17.2929C22.3503 16.9024 22.9834 16.9024 23.3739 17.2929L27.3739 21.2929C27.7645 21.6834 27.7645 22.3166 27.3739 22.7071L23.3739 26.7071C22.9834 27.0976 22.3503 27.0976 21.9597 26.7071Z" fill="white"></path>
                                                </svg>
                                            </div>
                                        </div>
                                        <div class="css-165qenb">
                                            <span style="box-sizing:border-box;display:inline-block;overflow:hidden;width:initial;height:initial;background:none;opacity:1;border:0;margin:0;padding:0;position:relative;max-width:100%">
                                                <span style="box-sizing:border-box;display:block;width:initial;height:initial;background:none;opacity:1;border:0;margin:0;padding:0;max-width:100%">
                                                    <img style="display:block;max-width:100%;width:initial;height:initial;background:none;opacity:1;border:0;margin:0;padding:0" alt="" aria-hidden="true" src="data:image/svg+xml,%3csvg%20xmlns=%27http://www.w3.org/2000/svg%27%20version=%271.1%27%20width=%27318%27%20height=%27360%27/%3e"/>
                                                </span>
                                                <img alt="ChatGPT 300% 활용하기" src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" decoding="async" data-nimg="intrinsic" style="position:absolute;top:0;left:0;bottom:0;right:0;box-sizing:border-box;padding:0;border:none;margin:auto;display:block;width:0;height:0;min-width:100%;max-width:100%;min-height:100%;max-height:100%"/>
                                                <noscript>
                                                    <img alt="ChatGPT 300% 활용하기" loading="lazy" decoding="async" data-nimg="intrinsic" style="position:absolute;top:0;left:0;bottom:0;right:0;box-sizing:border-box;padding:0;border:none;margin:auto;display:block;width:0;height:0;min-width:100%;max-width:100%;min-height:100%;max-height:100%" srcSet="/_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fhome%2Fv4%2Fpc_kdcdiv_big_gpt_300_online.png&amp;w=384&amp;q=75 1x, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fhome%2Fv4%2Fpc_kdcdiv_big_gpt_300_online.png&amp;w=640&amp;q=75 2x" src="_next/pc_kdcdiv_big_gpt_300_onlineee22.png?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fhome%2Fv4%2Fpc_kdcdiv_big_gpt_300_online.png&amp;w=640&amp;q=75"/>
                                                </noscript>
                                            </span>
                                        </div>
                                    </div>
                                    <style data-emotion="css 1rsyaye">
                                        .css-1rsyaye {
                                            display: -webkit-box;
                                            display: -webkit-flex;
                                            display: -ms-flexbox;
                                            display: flex;
                                            -webkit-flex-direction: column;
                                            -ms-flex-direction: column;
                                            flex-direction: column;
                                            -webkit-align-items: flex-start;
                                            -webkit-box-align: flex-start;
                                            -ms-flex-align: flex-start;
                                            align-items: flex-start;
                                            -webkit-transition: opacity 0.5s ease;
                                            transition: opacity 0.5s ease;
                                            opacity: 1;
                                            cursor: pointer;
                                            position: absolute;
                                            left: 0;
                                            height: 360px;
                                            gap: 76px;
                                            width: 146px;
                                            -webkit-flex-shrink: 0;
                                            -ms-flex-negative: 0;
                                            flex-shrink: 0;
                                        }
                                    </style>
                                    <div class="css-1rsyaye">
                                        <h2 class="css-aflir5">AI? ChatGPT?
그게 뭔데?</h2>
                                        <span style="box-sizing:border-box;display:inline-block;overflow:hidden;width:initial;height:initial;background:none;opacity:1;border:0;margin:0;padding:0;position:relative;max-width:100%">
                                            <span style="box-sizing:border-box;display:block;width:initial;height:initial;background:none;opacity:1;border:0;margin:0;padding:0;max-width:100%">
                                                <img style="display:block;max-width:100%;width:initial;height:initial;background:none;opacity:1;border:0;margin:0;padding:0" alt="" aria-hidden="true" src="data:image/svg+xml,%3csvg%20xmlns=%27http://www.w3.org/2000/svg%27%20version=%271.1%27%20width=%27150%27%20height=%27198%27/%3e"/>
                                            </span>
                                            <img alt="ChatGPT 300% 활용하기" src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" decoding="async" data-nimg="intrinsic" style="position:absolute;top:0;left:0;bottom:0;right:0;box-sizing:border-box;padding:0;border:none;margin:auto;display:block;width:0;height:0;min-width:100%;max-width:100%;min-height:100%;max-height:100%"/>
                                            <noscript>
                                                <img alt="ChatGPT 300% 활용하기" loading="lazy" decoding="async" data-nimg="intrinsic" style="position:absolute;top:0;left:0;bottom:0;right:0;box-sizing:border-box;padding:0;border:none;margin:auto;display:block;width:0;height:0;min-width:100%;max-width:100%;min-height:100%;max-height:100%" srcSet="/_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fhome%2Fv4%2Fpc_kdcdiv_small_gpt_300_online.png&amp;w=256&amp;q=75 1x, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fhome%2Fv4%2Fpc_kdcdiv_small_gpt_300_online.png&amp;w=384&amp;q=75 2x" src="_next/pc_kdcdiv_small_gpt_300_onlinef831.png?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fhome%2Fv4%2Fpc_kdcdiv_small_gpt_300_online.png&amp;w=384&amp;q=75"/>
                                            </noscript>
                                        </span>
                                    </div>
                                </div>
                                <style data-emotion="css 1kjq9l8">
                                    .css-1kjq9l8 {
                                        display: -webkit-box;
                                        display: -webkit-flex;
                                        display: -ms-flexbox;
                                        display: flex;
                                        width: 146px;
                                        height: 100%;
                                        overflow: hidden;
                                        -webkit-transition: width 0.5s ease;
                                        transition: width 0.5s ease;
                                        background: #794DF4;
                                        border-radius: 12px;
                                        position: relative;
                                    }
                                </style>
                                <div class="css-1kjq9l8">
                                    <div class="css-10l2t0o">
                                        <div class="css-a92hqq">
                                            <div class="css-1460n9u">
                                                <div class="css-aw4bht">
                                                    <p class="css-10b6fqf">데이터 분석 종합반</p>
                                                </div>
                                                <h1 class="css-dew6tv">데이터 몰라서
멍 때렸던 시간들 이제 안녕</h1>
                                                <p class="css-zv24fc">탄탄한 의사결정을 위한 가장 강력한 도구, 데이터!
가설 설계부터 실제 분석까지 탄탄하게 배워요.</p>
                                            </div>
                                            <div class="css-1nhv5qc">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="44" height="44" viewBox="0 0 44 44" fill="none">
                                                    <path fill-rule="evenodd" clip-rule="evenodd" d="M22 44C34.1503 44 44 34.1503 44 22C44 9.84974 34.1503 0 22 0C9.84974 0 0 9.84974 0 22C0 34.1503 9.84974 44 22 44ZM21.9597 26.7071C21.5692 26.3166 21.5692 25.6834 21.9597 25.2929L24.2526 23H17.3335C16.7812 23 16.3335 22.5523 16.3335 22C16.3335 21.4477 16.7812 21 17.3335 21H24.2526L21.9597 18.7071C21.5692 18.3166 21.5692 17.6834 21.9597 17.2929C22.3503 16.9024 22.9834 16.9024 23.3739 17.2929L27.3739 21.2929C27.7645 21.6834 27.7645 22.3166 27.3739 22.7071L23.3739 26.7071C22.9834 27.0976 22.3503 27.0976 21.9597 26.7071Z" fill="white"></path>
                                                </svg>
                                            </div>
                                        </div>
                                        <div class="css-165qenb">
                                            <span style="box-sizing:border-box;display:inline-block;overflow:hidden;width:initial;height:initial;background:none;opacity:1;border:0;margin:0;padding:0;position:relative;max-width:100%">
                                                <span style="box-sizing:border-box;display:block;width:initial;height:initial;background:none;opacity:1;border:0;margin:0;padding:0;max-width:100%">
                                                    <img style="display:block;max-width:100%;width:initial;height:initial;background:none;opacity:1;border:0;margin:0;padding:0" alt="" aria-hidden="true" src="data:image/svg+xml,%3csvg%20xmlns=%27http://www.w3.org/2000/svg%27%20version=%271.1%27%20width=%27318%27%20height=%27360%27/%3e"/>
                                                </span>
                                                <img alt="데이터 분석 종합반" src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" decoding="async" data-nimg="intrinsic" style="position:absolute;top:0;left:0;bottom:0;right:0;box-sizing:border-box;padding:0;border:none;margin:auto;display:block;width:0;height:0;min-width:100%;max-width:100%;min-height:100%;max-height:100%"/>
                                                <noscript>
                                                    <img alt="데이터 분석 종합반" loading="lazy" decoding="async" data-nimg="intrinsic" style="position:absolute;top:0;left:0;bottom:0;right:0;box-sizing:border-box;padding:0;border:none;margin:auto;display:block;width:0;height:0;min-width:100%;max-width:100%;min-height:100%;max-height:100%" srcSet="/_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fhome%2Fv4%2Fpc_kdcdiv_big_data_v2.png&amp;w=384&amp;q=75 1x, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fhome%2Fv4%2Fpc_kdcdiv_big_data_v2.png&amp;w=640&amp;q=75 2x" src="_next/pc_kdcdiv_big_data_v2984f.png?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fhome%2Fv4%2Fpc_kdcdiv_big_data_v2.png&amp;w=640&amp;q=75"/>
                                                </noscript>
                                            </span>
                                        </div>
                                    </div>
                                    <div class="css-1rsyaye">
                                        <h2 class="css-aflir5">데이터 몰라서
멍 때렸던 시간들 이제 안녕</h2>
                                        <span style="box-sizing:border-box;display:inline-block;overflow:hidden;width:initial;height:initial;background:none;opacity:1;border:0;margin:0;padding:0;position:relative;max-width:100%">
                                            <span style="box-sizing:border-box;display:block;width:initial;height:initial;background:none;opacity:1;border:0;margin:0;padding:0;max-width:100%">
                                                <img style="display:block;max-width:100%;width:initial;height:initial;background:none;opacity:1;border:0;margin:0;padding:0" alt="" aria-hidden="true" src="data:image/svg+xml,%3csvg%20xmlns=%27http://www.w3.org/2000/svg%27%20version=%271.1%27%20width=%27150%27%20height=%27198%27/%3e"/>
                                            </span>
                                            <img alt="데이터 분석 종합반" src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" decoding="async" data-nimg="intrinsic" style="position:absolute;top:0;left:0;bottom:0;right:0;box-sizing:border-box;padding:0;border:none;margin:auto;display:block;width:0;height:0;min-width:100%;max-width:100%;min-height:100%;max-height:100%"/>
                                            <noscript>
                                                <img alt="데이터 분석 종합반" loading="lazy" decoding="async" data-nimg="intrinsic" style="position:absolute;top:0;left:0;bottom:0;right:0;box-sizing:border-box;padding:0;border:none;margin:auto;display:block;width:0;height:0;min-width:100%;max-width:100%;min-height:100%;max-height:100%" srcSet="/_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fhome%2Fv4%2Fpc_kdcdiv_small_data_v2.png&amp;w=256&amp;q=75 1x, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fhome%2Fv4%2Fpc_kdcdiv_small_data_v2.png&amp;w=384&amp;q=75 2x" src="_next/pc_kdcdiv_small_data_v2c8b5.png?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fhome%2Fv4%2Fpc_kdcdiv_small_data_v2.png&amp;w=384&amp;q=75"/>
                                            </noscript>
                                        </span>
                                    </div>
                                </div>
                                <style data-emotion="css zjkp4d">
                                    .css-zjkp4d {
                                        display: -webkit-box;
                                        display: -webkit-flex;
                                        display: -ms-flexbox;
                                        display: flex;
                                        width: 146px;
                                        height: 100%;
                                        overflow: hidden;
                                        -webkit-transition: width 0.5s ease;
                                        transition: width 0.5s ease;
                                        background: #66D7C5;
                                        border-radius: 12px;
                                        position: relative;
                                    }
                                </style>
                                <div class="css-zjkp4d">
                                    <div class="css-10l2t0o">
                                        <div class="css-a92hqq">
                                            <div class="css-1460n9u">
                                                <div class="css-aw4bht">
                                                    <p class="css-10b6fqf">앱개발 종합반</p>
                                                </div>
                                                <h1 class="css-dew6tv">개발자 없이
아이디어를 실현하고 싶어</h1>
                                                <p class="css-zv24fc">나만의 빛나는 아이디어를 직접 앱으로 구현해서
이 세상 하나뿐인 작품을 만들어 봐요!</p>
                                            </div>
                                            <div class="css-1nhv5qc">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="44" height="44" viewBox="0 0 44 44" fill="none">
                                                    <path fill-rule="evenodd" clip-rule="evenodd" d="M22 44C34.1503 44 44 34.1503 44 22C44 9.84974 34.1503 0 22 0C9.84974 0 0 9.84974 0 22C0 34.1503 9.84974 44 22 44ZM21.9597 26.7071C21.5692 26.3166 21.5692 25.6834 21.9597 25.2929L24.2526 23H17.3335C16.7812 23 16.3335 22.5523 16.3335 22C16.3335 21.4477 16.7812 21 17.3335 21H24.2526L21.9597 18.7071C21.5692 18.3166 21.5692 17.6834 21.9597 17.2929C22.3503 16.9024 22.9834 16.9024 23.3739 17.2929L27.3739 21.2929C27.7645 21.6834 27.7645 22.3166 27.3739 22.7071L23.3739 26.7071C22.9834 27.0976 22.3503 27.0976 21.9597 26.7071Z" fill="white"></path>
                                                </svg>
                                            </div>
                                        </div>
                                        <div class="css-165qenb">
                                            <span style="box-sizing:border-box;display:inline-block;overflow:hidden;width:initial;height:initial;background:none;opacity:1;border:0;margin:0;padding:0;position:relative;max-width:100%">
                                                <span style="box-sizing:border-box;display:block;width:initial;height:initial;background:none;opacity:1;border:0;margin:0;padding:0;max-width:100%">
                                                    <img style="display:block;max-width:100%;width:initial;height:initial;background:none;opacity:1;border:0;margin:0;padding:0" alt="" aria-hidden="true" src="data:image/svg+xml,%3csvg%20xmlns=%27http://www.w3.org/2000/svg%27%20version=%271.1%27%20width=%27318%27%20height=%27360%27/%3e"/>
                                                </span>
                                                <img alt="앱개발 종합반" src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" decoding="async" data-nimg="intrinsic" style="position:absolute;top:0;left:0;bottom:0;right:0;box-sizing:border-box;padding:0;border:none;margin:auto;display:block;width:0;height:0;min-width:100%;max-width:100%;min-height:100%;max-height:100%"/>
                                                <noscript>
                                                    <img alt="앱개발 종합반" loading="lazy" decoding="async" data-nimg="intrinsic" style="position:absolute;top:0;left:0;bottom:0;right:0;box-sizing:border-box;padding:0;border:none;margin:auto;display:block;width:0;height:0;min-width:100%;max-width:100%;min-height:100%;max-height:100%" srcSet="/_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fhome%2Fv4%2Fpc_kdcdiv_big_app.png&amp;w=384&amp;q=75 1x, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fhome%2Fv4%2Fpc_kdcdiv_big_app.png&amp;w=640&amp;q=75 2x" src="_next/pc_kdcdiv_big_appee1a.png?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fhome%2Fv4%2Fpc_kdcdiv_big_app.png&amp;w=640&amp;q=75"/>
                                                </noscript>
                                            </span>
                                        </div>
                                    </div>
                                    <div class="css-1rsyaye">
                                        <h2 class="css-aflir5">개발자 없이
아이디어를 실현하고 싶어</h2>
                                        <span style="box-sizing:border-box;display:inline-block;overflow:hidden;width:initial;height:initial;background:none;opacity:1;border:0;margin:0;padding:0;position:relative;max-width:100%">
                                            <span style="box-sizing:border-box;display:block;width:initial;height:initial;background:none;opacity:1;border:0;margin:0;padding:0;max-width:100%">
                                                <img style="display:block;max-width:100%;width:initial;height:initial;background:none;opacity:1;border:0;margin:0;padding:0" alt="" aria-hidden="true" src="data:image/svg+xml,%3csvg%20xmlns=%27http://www.w3.org/2000/svg%27%20version=%271.1%27%20width=%27150%27%20height=%27198%27/%3e"/>
                                            </span>
                                            <img alt="앱개발 종합반" src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" decoding="async" data-nimg="intrinsic" style="position:absolute;top:0;left:0;bottom:0;right:0;box-sizing:border-box;padding:0;border:none;margin:auto;display:block;width:0;height:0;min-width:100%;max-width:100%;min-height:100%;max-height:100%"/>
                                            <noscript>
                                                <img alt="앱개발 종합반" loading="lazy" decoding="async" data-nimg="intrinsic" style="position:absolute;top:0;left:0;bottom:0;right:0;box-sizing:border-box;padding:0;border:none;margin:auto;display:block;width:0;height:0;min-width:100%;max-width:100%;min-height:100%;max-height:100%" srcSet="/_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fhome%2Fv4%2Fpc_kdcdiv_small_app.png&amp;w=256&amp;q=75 1x, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fhome%2Fv4%2Fpc_kdcdiv_small_app.png&amp;w=384&amp;q=75 2x" src="_next/pc_kdcdiv_small_app4d1e.png?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fhome%2Fv4%2Fpc_kdcdiv_small_app.png&amp;w=384&amp;q=75"/>
                                            </noscript>
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <style data-emotion="css 1we3845">
                            .css-1we3845 {
                                display: -webkit-box;
                                display: -webkit-flex;
                                display: -ms-flexbox;
                                display: flex;
                                overflow-x: auto;
                                scroll-snap-type: x mandatory;
                                width: 100vw;
                                margin: 0 -16px;
                                padding: 0 30%;
                            }

                            .css-1we3845::-webkit-scrollbar {
                                display: none;
                            }

                            @media (min-width: 500px) {
                                .css-1we3845 {
                                    scroll-snap-type:none;
                                    padding: 16px;
                                }
                            }

                            @media(min-width: 1024px) {
                                .css-1we3845 {
                                    display:none;
                                }
                            }
                        </style>
                        <div class="css-1we3845">
                            <style data-emotion="css 1lc6y5a">
                                .css-1lc6y5a {
                                    -webkit-flex: none;
                                    -ms-flex: none;
                                    flex: none;
                                    text-align: center;
                                    scroll-behavior: smooth;
                                    scroll-snap-align: center;
                                }
                            </style>
                            <div class="css-1lc6y5a">
                                <style data-emotion="css jn26s5">
                                    .css-jn26s5 {
                                        display: -webkit-inline-box;
                                        display: -webkit-inline-flex;
                                        display: -ms-inline-flexbox;
                                        display: inline-flex;
                                        padding-top: 32px;
                                        -webkit-flex-direction: column;
                                        -ms-flex-direction: column;
                                        flex-direction: column;
                                        -webkit-box-pack: center;
                                        -ms-flex-pack: center;
                                        -webkit-justify-content: center;
                                        justify-content: center;
                                        -webkit-align-items: center;
                                        -webkit-box-align: center;
                                        -ms-flex-align: center;
                                        align-items: center;
                                        gap: 16px;
                                        border-radius: 8px;
                                        background: linear-gradient(180deg, #FFAE50 0%, #FADBBF 100%);
                                        height: 344px;
                                        width: 300px;
                                        -webkit-transition: -webkit-transform 0.3s ease;
                                        transition: transform 0.3s ease;
                                        -webkit-transform: scale(1);
                                        -moz-transform: scale(1);
                                        -ms-transform: scale(1);
                                        transform: scale(1);
                                    }

                                    @media (min-width: 500px) {
                                        .css-jn26s5 {
                                            margin:0 8px;
                                            -webkit-transform: scale(1);
                                            -moz-transform: scale(1);
                                            -ms-transform: scale(1);
                                            transform: scale(1);
                                        }
                                    }
                                </style>
                                <div class="css-jn26s5">
                                    <style data-emotion="css 1lnhthy">
                                        .css-1lnhthy {
                                            display: -webkit-box;
                                            display: -webkit-flex;
                                            display: -ms-flexbox;
                                            display: flex;
                                            width: 300px;
                                            -webkit-flex-direction: column;
                                            -ms-flex-direction: column;
                                            flex-direction: column;
                                            -webkit-align-items: center;
                                            -webkit-box-align: center;
                                            -ms-flex-align: center;
                                            align-items: center;
                                            gap: 12px;
                                        }
                                    </style>
                                    <div class="css-1lnhthy">
                                        <style data-emotion="css 1vltd09">
                                            .css-1vltd09 {
                                                display: -webkit-box;
                                                display: -webkit-flex;
                                                display: -ms-flexbox;
                                                display: flex;
                                                padding: 4px 12px;
                                                -webkit-box-pack: center;
                                                -ms-flex-pack: center;
                                                -webkit-justify-content: center;
                                                justify-content: center;
                                                -webkit-align-items: center;
                                                -webkit-box-align: center;
                                                -ms-flex-align: center;
                                                align-items: center;
                                                gap: 10px;
                                                border-radius: 23px;
                                                border: 1px solid #FFFFFF;
                                            }
                                        </style>
                                        <div class="css-1vltd09">
                                            <style data-emotion="css 1uqqiyl">
                                                .css-1uqqiyl {
                                                    font-family: Pretendard;
                                                    font-style: normal;
                                                    font-weight: 500;
                                                    font-size: 12px;
                                                    line-height: 18px;
                                                    color: #141617;
                                                    color: #FFFFFF;
                                                    text-align: center;
                                                }
                                            </style>
                                            <h1 class="css-1uqqiyl">[왕초보] 웹개발 종합반</h1>
                                        </div>
                                        <style data-emotion="css 1mz05gd">
                                            .css-1mz05gd {
                                                font-family: Pretendard;
                                                font-style: normal;
                                                font-weight: 600;
                                                font-size: 18px;
                                                line-height: 25px;
                                                color: #141617;
                                                color: #FFFFFF;
                                                text-align: center;
                                                white-space: pre-line;
                                            }
                                        </style>
                                        <p class="css-1mz05gd">나만의 웹사이트를
갖고 싶어</p>
                                        <style data-emotion="css f522ms">
                                            .css-f522ms {
                                                font-family: Pretendard;
                                                font-style: normal;
                                                font-weight: 500;
                                                font-size: 12px;
                                                line-height: 18px;
                                                color: #141617;
                                                color: rgba(255, 255, 255, 0.7);
                                                text-align: center;
                                                white-space: pre-line;
                                            }
                                        </style>
                                        <p class="css-f522ms">영화 기록 사이트, 추억 사진첩 사이트를 만들며
웹사이트의 기본 구조와 작동 원리를 익혀보세요.</p>
                                    </div>
                                    <span style="box-sizing:border-box;display:inline-block;overflow:hidden;width:initial;height:initial;background:none;opacity:1;border:0;margin:0;padding:0;position:relative;max-width:100%">
                                        <span style="box-sizing:border-box;display:block;width:initial;height:initial;background:none;opacity:1;border:0;margin:0;padding:0;max-width:100%">
                                            <img style="display:block;max-width:100%;width:initial;height:initial;background:none;opacity:1;border:0;margin:0;padding:0" alt="" aria-hidden="true" src="data:image/svg+xml,%3csvg%20xmlns=%27http://www.w3.org/2000/svg%27%20version=%271.1%27%20width=%27300%27%20height=%27160%27/%3e"/>
                                        </span>
                                        <img alt="[왕초보] 웹개발 종합반" src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" decoding="async" data-nimg="intrinsic" style="position:absolute;top:0;left:0;bottom:0;right:0;box-sizing:border-box;padding:0;border:none;margin:auto;display:block;width:0;height:0;min-width:100%;max-width:100%;min-height:100%;max-height:100%"/>
                                        <noscript>
                                            <img alt="[왕초보] 웹개발 종합반" loading="lazy" decoding="async" data-nimg="intrinsic" style="position:absolute;top:0;left:0;bottom:0;right:0;box-sizing:border-box;padding:0;border:none;margin:auto;display:block;width:0;height:0;min-width:100%;max-width:100%;min-height:100%;max-height:100%" srcSet="/_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fhome%2Fv4%2Fmobile_kdcdiv_web_basic.webp&amp;w=384&amp;q=75 1x, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fhome%2Fv4%2Fmobile_kdcdiv_web_basic.webp&amp;w=640&amp;q=75 2x" src="_next/mobile_kdcdiv_web_basic5578.png?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fhome%2Fv4%2Fmobile_kdcdiv_web_basic.webp&amp;w=640&amp;q=75"/>
                                        </noscript>
                                    </span>
                                </div>
                            </div>
                            <div class="css-1lc6y5a">
                                <style data-emotion="css 1077x6l">
                                    .css-1077x6l {
                                        display: -webkit-inline-box;
                                        display: -webkit-inline-flex;
                                        display: -ms-inline-flexbox;
                                        display: inline-flex;
                                        padding-top: 32px;
                                        -webkit-flex-direction: column;
                                        -ms-flex-direction: column;
                                        flex-direction: column;
                                        -webkit-box-pack: center;
                                        -ms-flex-pack: center;
                                        -webkit-justify-content: center;
                                        justify-content: center;
                                        -webkit-align-items: center;
                                        -webkit-box-align: center;
                                        -ms-flex-align: center;
                                        align-items: center;
                                        gap: 16px;
                                        border-radius: 8px;
                                        background: #AD90FF;
                                        height: 344px;
                                        width: 300px;
                                        -webkit-transition: -webkit-transform 0.3s ease;
                                        transition: transform 0.3s ease;
                                        -webkit-transform: scale(0.9);
                                        -moz-transform: scale(0.9);
                                        -ms-transform: scale(0.9);
                                        transform: scale(0.9);
                                    }

                                    @media (min-width: 500px) {
                                        .css-1077x6l {
                                            margin:0 8px;
                                            -webkit-transform: scale(1);
                                            -moz-transform: scale(1);
                                            -ms-transform: scale(1);
                                            transform: scale(1);
                                        }
                                    }
                                </style>
                                <div class="css-1077x6l">
                                    <div class="css-1lnhthy">
                                        <div class="css-1vltd09">
                                            <h1 class="css-1uqqiyl">ChatGPT 300% 활용하기</h1>
                                        </div>
                                        <p class="css-1mz05gd">AI? ChatGPT?
그게 뭔데?</p>
                                        <p class="css-f522ms">똑똑하다고 소문 난 인공지능,  제대로 질문하는 법을
배워 나만의 업무 자동화 프로그램으로 활용하세요!</p>
                                    </div>
                                    <span style="box-sizing:border-box;display:inline-block;overflow:hidden;width:initial;height:initial;background:none;opacity:1;border:0;margin:0;padding:0;position:relative;max-width:100%">
                                        <span style="box-sizing:border-box;display:block;width:initial;height:initial;background:none;opacity:1;border:0;margin:0;padding:0;max-width:100%">
                                            <img style="display:block;max-width:100%;width:initial;height:initial;background:none;opacity:1;border:0;margin:0;padding:0" alt="" aria-hidden="true" src="data:image/svg+xml,%3csvg%20xmlns=%27http://www.w3.org/2000/svg%27%20version=%271.1%27%20width=%27300%27%20height=%27160%27/%3e"/>
                                        </span>
                                        <img alt="ChatGPT 300% 활용하기" src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" decoding="async" data-nimg="intrinsic" style="position:absolute;top:0;left:0;bottom:0;right:0;box-sizing:border-box;padding:0;border:none;margin:auto;display:block;width:0;height:0;min-width:100%;max-width:100%;min-height:100%;max-height:100%"/>
                                        <noscript>
                                            <img alt="ChatGPT 300% 활용하기" loading="lazy" decoding="async" data-nimg="intrinsic" style="position:absolute;top:0;left:0;bottom:0;right:0;box-sizing:border-box;padding:0;border:none;margin:auto;display:block;width:0;height:0;min-width:100%;max-width:100%;min-height:100%;max-height:100%" srcSet="/_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fhome%2Fv4%2Fmobile_kdcdiv_gpt_300_online.webp&amp;w=384&amp;q=75 1x, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fhome%2Fv4%2Fmobile_kdcdiv_gpt_300_online.webp&amp;w=640&amp;q=75 2x" src="_next/mobile_kdcdiv_gpt_300_online71c9.png?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fhome%2Fv4%2Fmobile_kdcdiv_gpt_300_online.webp&amp;w=640&amp;q=75"/>
                                        </noscript>
                                    </span>
                                </div>
                            </div>
                            <div class="css-1lc6y5a">
                                <style data-emotion="css rkz74e">
                                    .css-rkz74e {
                                        display: -webkit-inline-box;
                                        display: -webkit-inline-flex;
                                        display: -ms-inline-flexbox;
                                        display: inline-flex;
                                        padding-top: 32px;
                                        -webkit-flex-direction: column;
                                        -ms-flex-direction: column;
                                        flex-direction: column;
                                        -webkit-box-pack: center;
                                        -ms-flex-pack: center;
                                        -webkit-justify-content: center;
                                        justify-content: center;
                                        -webkit-align-items: center;
                                        -webkit-box-align: center;
                                        -ms-flex-align: center;
                                        align-items: center;
                                        gap: 16px;
                                        border-radius: 8px;
                                        background: #794DF4;
                                        height: 344px;
                                        width: 300px;
                                        -webkit-transition: -webkit-transform 0.3s ease;
                                        transition: transform 0.3s ease;
                                        -webkit-transform: scale(0.9);
                                        -moz-transform: scale(0.9);
                                        -ms-transform: scale(0.9);
                                        transform: scale(0.9);
                                    }

                                    @media (min-width: 500px) {
                                        .css-rkz74e {
                                            margin:0 8px;
                                            -webkit-transform: scale(1);
                                            -moz-transform: scale(1);
                                            -ms-transform: scale(1);
                                            transform: scale(1);
                                        }
                                    }
                                </style>
                                <div class="css-rkz74e">
                                    <div class="css-1lnhthy">
                                        <div class="css-1vltd09">
                                            <h1 class="css-1uqqiyl">데이터 분석 종합반</h1>
                                        </div>
                                        <p class="css-1mz05gd">데이터 몰라서
멍 때렸던 시간들 이제 안녕</p>
                                        <p class="css-f522ms">탄탄한 의사결정을 위한 가장 강력한 도구, 데이터!
가설 설계부터 실제 분석까지 탄탄하게 배워요.</p>
                                    </div>
                                    <span style="box-sizing:border-box;display:inline-block;overflow:hidden;width:initial;height:initial;background:none;opacity:1;border:0;margin:0;padding:0;position:relative;max-width:100%">
                                        <span style="box-sizing:border-box;display:block;width:initial;height:initial;background:none;opacity:1;border:0;margin:0;padding:0;max-width:100%">
                                            <img style="display:block;max-width:100%;width:initial;height:initial;background:none;opacity:1;border:0;margin:0;padding:0" alt="" aria-hidden="true" src="data:image/svg+xml,%3csvg%20xmlns=%27http://www.w3.org/2000/svg%27%20version=%271.1%27%20width=%27300%27%20height=%27160%27/%3e"/>
                                        </span>
                                        <img alt="데이터 분석 종합반" src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" decoding="async" data-nimg="intrinsic" style="position:absolute;top:0;left:0;bottom:0;right:0;box-sizing:border-box;padding:0;border:none;margin:auto;display:block;width:0;height:0;min-width:100%;max-width:100%;min-height:100%;max-height:100%"/>
                                        <noscript>
                                            <img alt="데이터 분석 종합반" loading="lazy" decoding="async" data-nimg="intrinsic" style="position:absolute;top:0;left:0;bottom:0;right:0;box-sizing:border-box;padding:0;border:none;margin:auto;display:block;width:0;height:0;min-width:100%;max-width:100%;min-height:100%;max-height:100%" srcSet="/_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fhome%2Fv4%2Fmobile_kdcdiv_data_v2.webp&amp;w=384&amp;q=75 1x, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fhome%2Fv4%2Fmobile_kdcdiv_data_v2.webp&amp;w=640&amp;q=75 2x" src="_next/mobile_kdcdiv_data_v2c0b7.png?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fhome%2Fv4%2Fmobile_kdcdiv_data_v2.webp&amp;w=640&amp;q=75"/>
                                        </noscript>
                                    </span>
                                </div>
                            </div>
                            <div class="css-1lc6y5a">
                                <style data-emotion="css 1a1s11t">
                                    .css-1a1s11t {
                                        display: -webkit-inline-box;
                                        display: -webkit-inline-flex;
                                        display: -ms-inline-flexbox;
                                        display: inline-flex;
                                        padding-top: 32px;
                                        -webkit-flex-direction: column;
                                        -ms-flex-direction: column;
                                        flex-direction: column;
                                        -webkit-box-pack: center;
                                        -ms-flex-pack: center;
                                        -webkit-justify-content: center;
                                        justify-content: center;
                                        -webkit-align-items: center;
                                        -webkit-box-align: center;
                                        -ms-flex-align: center;
                                        align-items: center;
                                        gap: 16px;
                                        border-radius: 8px;
                                        background: #66D7C5;
                                        height: 344px;
                                        width: 300px;
                                        -webkit-transition: -webkit-transform 0.3s ease;
                                        transition: transform 0.3s ease;
                                        -webkit-transform: scale(0.9);
                                        -moz-transform: scale(0.9);
                                        -ms-transform: scale(0.9);
                                        transform: scale(0.9);
                                    }

                                    @media (min-width: 500px) {
                                        .css-1a1s11t {
                                            margin:0 8px;
                                            -webkit-transform: scale(1);
                                            -moz-transform: scale(1);
                                            -ms-transform: scale(1);
                                            transform: scale(1);
                                        }
                                    }
                                </style>
                                <div class="css-1a1s11t">
                                    <div class="css-1lnhthy">
                                        <div class="css-1vltd09">
                                            <h1 class="css-1uqqiyl">앱개발 종합반</h1>
                                        </div>
                                        <p class="css-1mz05gd">개발자 없이
아이디어를 실현하고 싶어</p>
                                        <p class="css-f522ms">나만의 빛나는 아이디어를 직접 앱으로 구현해서
이 세상 하나뿐인 작품을 만들어 봐요!</p>
                                    </div>
                                    <span style="box-sizing:border-box;display:inline-block;overflow:hidden;width:initial;height:initial;background:none;opacity:1;border:0;margin:0;padding:0;position:relative;max-width:100%">
                                        <span style="box-sizing:border-box;display:block;width:initial;height:initial;background:none;opacity:1;border:0;margin:0;padding:0;max-width:100%">
                                            <img style="display:block;max-width:100%;width:initial;height:initial;background:none;opacity:1;border:0;margin:0;padding:0" alt="" aria-hidden="true" src="data:image/svg+xml,%3csvg%20xmlns=%27http://www.w3.org/2000/svg%27%20version=%271.1%27%20width=%27300%27%20height=%27160%27/%3e"/>
                                        </span>
                                        <img alt="앱개발 종합반" src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" decoding="async" data-nimg="intrinsic" style="position:absolute;top:0;left:0;bottom:0;right:0;box-sizing:border-box;padding:0;border:none;margin:auto;display:block;width:0;height:0;min-width:100%;max-width:100%;min-height:100%;max-height:100%"/>
                                        <noscript>
                                            <img alt="앱개발 종합반" loading="lazy" decoding="async" data-nimg="intrinsic" style="position:absolute;top:0;left:0;bottom:0;right:0;box-sizing:border-box;padding:0;border:none;margin:auto;display:block;width:0;height:0;min-width:100%;max-width:100%;min-height:100%;max-height:100%" srcSet="/_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fhome%2Fv4%2Fmobile_kdcdiv_app.webp&amp;w=384&amp;q=75 1x, /_next/image?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fhome%2Fv4%2Fmobile_kdcdiv_app.webp&amp;w=640&amp;q=75 2x" src="_next/mobile_kdcdiv_appb6f7.png?url=https%3A%2F%2Fstatic.spartacodingclub.kr%2FTeamSparta-Inc%2Fscc-frontend%2Fassets%2Fimages%2Fhome%2Fv4%2Fmobile_kdcdiv_app.webp&amp;w=640&amp;q=75"/>
                                        </noscript>
                                    </span>
                                </div>
                            </div>
                        </div>
                    </section>
                </div>
            </div>
        </div>
    </body>
    <!-- Mirrored from spartacodingclub.kr/ by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 08 Apr 2024 03:58:37 GMT -->
</html>
