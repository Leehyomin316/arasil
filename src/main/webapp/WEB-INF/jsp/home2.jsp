<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<!--
	Lens by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
<head>
<title>아라실에 오신걸 환영합니다</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/bootstrap/assets/css/main.css" />
<noscript>
	<link rel="stylesheet"
		href="${pageContext.request.contextPath}/static/bootstrap/assets/css/noscript.css" />
</noscript>
	<style>
		#menuToggle {
			left: 0;
			right: auto;
		}
		#menu {
			width: 100vw;
			height: 10vh;
			backgroun-color: #fefefe;
			display: none;
		}
		#menu.show{
			display: block;
		}
		#main, #viewer {
			height: 100vh;
			top: 0;
		}
		#main.ninety, #viewer.ninety {
			height: 90vh;
			top: 10vh;
		}			
	</style>
<script src="${pageContext.request.contextPath}/static/js/shareing.js"></script>
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>

</head>
<body class="is-preload-0 is-preload-1 is-preload-2">

	<!-- Main -->
	<div id="menu" class="">
		<ul>
			<li>A</li>
			<li>B</li>
			<li>C</li>
		</ul>
	</div>
	<div id="main">

		<!-- Header -->

		<header id="header">
			<h1>
				<img src="${pageContext.request.contextPath}/static/img/icon02.png"
					id="icon" />
			</h1>
			<p>윤슬이 아름다운 한옥</p>
			<ul class="icons">
				<li><a href="javascript:shareTwitter();"
					class="icon brands fa-twitter"><span class="label">Twitter</span></a></li>
				<li><a href="javascript:shareFacebook();"
					class="icon brands fa-facebook"><span class="label">Facebook</span></a></li>
				<li><a href="javascript:shareKakao();" id="btnKakao"
					class="icon brands fa-kickstarter-k"><span class="label">KakaoTalk</span></a></li>
			</ul>
		</header>

		<!-- Thumbnail -->
		<section id="thumbnails">
			<article>
				<a class="thumbnail"
					href="${pageContext.request.contextPath}/static/img/home01.jpg"
					data-position="left center"><img
					src="${pageContext.request.contextPath}/static/img/home01.jpg"
					alt="" /></a>
				<h2></h2>
				<p></p>
			</article>
			<article>
				<a class="thumbnail"
					href="${pageContext.request.contextPath}/static/img/home02.jpg"><img
					src="${pageContext.request.contextPath}/static/img/home02.jpg"
					alt="" /></a>
				<h2></h2>
				<p></p>
			</article>
			<article>
				<a class="thumbnail"
					href="${pageContext.request.contextPath}/static/img/home03.jpg"
					data-position="top center"><img
					src="${pageContext.request.contextPath}/static/img/home03.jpg"
					alt="" /></a>
				<h2></h2>
				<p></p>
			</article>
			<article>
				<a class="thumbnail"
					href="${pageContext.request.contextPath}/static/img/home04.jpg"><img
					src="${pageContext.request.contextPath}/static/img/home04.jpg"
					alt="" /></a>
				<h2></h2>
				<p></p>
			</article>
			<article>
				<a class="thumbnail"
					href="${pageContext.request.contextPath}/static/img/home05.jpg"
					data-position="top center"><img
					src="${pageContext.request.contextPath}/static/img/home05.jpg"
					alt="" /></a>
				<h2></h2>
				<p></p>
			</article>
			<article>
				<a class="thumbnail"
					href="${pageContext.request.contextPath}/static/img/home06.jpg"><img
					src="${pageContext.request.contextPath}/static/img/home06.jpg"
					alt="" /></a>
				<h2></h2>
				<p></p>
			</article>
		</section>


		<!-- Footer -->
		<footer id="footer">
			<ul class="copyright">
				<li>&copy; Untitled.</li>
				<li>Design: <a href="http://html5up.net">HTML5 UP</a>.
				</li>
			</ul>
		</footer>

	</div>

	<!-- Scripts -->
	<script
		src="${pageContext.request.contextPath}/static/bootstrap/assets/js/jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/static/bootstrap/assets/js/browser.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/static/bootstrap/assets/js/breakpoints.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/static/bootstrap/assets/js/main.js"></script>
	<script>
		(function(){
			console.log($("#viewer > .inner"));
			const $viewer_inner = $("#viewer > .inner");
			$(`<div id='menuToggle' class='toggle menu-toggle'></div>`).appendTo($viewer_inner);
			const $menu = $("#menu");
			const $main = $("#main");
			const $viewer = $("#viewer");
			$("#menuToggle").on("click", function(){
				$menu.toggleClass("show");
				$main.toggleClass("ninety");
				$viewer.toggleClass("ninety");
				
			});
		})();
	</script>	

</body>
</html>