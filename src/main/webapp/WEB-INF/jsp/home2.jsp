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
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/bootstrap/assets/css/home2.css" />
<noscript>
	<link rel="stylesheet"
		href="${pageContext.request.contextPath}/static/bootstrap/assets/css/noscript.css" />
</noscript>
<link
	href='${pageContext.request.contextPath}/static/bootstrap/css/bootstrap.css'
	rel='stylesheet' type='text/css'>
<script
	src="${pageContext.request.contextPath}/static/bootstrap/js/bootstrap.bundle.js"></script>


</head>
<body class="is-preload-0 is-preload-1 is-preload-2">

	<!-- Main -->

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
		<div id="menu" class="container">
			<nav class="navbar navbar-expand-lg">
				<div class="container-fluid">
					<button class="navbar-toggler" type="button"
						data-bs-toggle="collapse" data-bs-target="#navbarNavDarkDropdown"
						aria-controls="navbarNavDarkDropdown" aria-expanded="false"
						aria-label="Toggle navigation">
						<span class="navbar-toggler-icon"></span>
					</button>
					<div class="collapse navbar-collapse" id="navbarNavDarkDropdown">
						<div class="btn-group">
							<button style="background-color: #0d6efd;"
								class="btn btn-secondary dropdown-toggle" type="button"
								id="defaultDropdown" data-bs-toggle="dropdown"
								data-bs-auto-close="true" aria-expanded="false">소개</button>
							<ul class="dropdown-menu" aria-labelledby="defaultDropdown">
								<li><a class="dropdown-item"
									href="${pageContext.request.contextPath}/intro/introPlace">펜션정보</a></li>
								<li><a class="dropdown-item"
									href="${pageContext.request.contextPath}/intro/introSurround">주변소개</a></li>
								<li><a class="dropdown-item"
									href="${pageContext.request.contextPath}/intro/introLocation">찾아오시는길</a></li>
							</ul>
						</div>

						<div class="btn-group">
							<button style="background-color: #0d6efd;"
								class="btn btn-secondary dropdown-toggle" type="button"
								id="defaultDropdown" data-bs-toggle="dropdown"
								data-bs-auto-close="true" aria-expanded="false">예약</button>
							<ul class="dropdown-menu" aria-labelledby="defaultDropdown">
								<li><a class="dropdown-item"
									href="${pageContext.request.contextPath}/reservation/reservationGuide">예약안내</a></li>
								<li><a class="dropdown-item"
									href="${pageContext.request.contextPath}/reservation/register">실시간예약</a></li>
								<li><a class="dropdown-item"
									href="${pageContext.request.contextPath}/reservation/roomSchedule">예약현황</a></li>
								<li><a class="dropdown-item"
									href="${pageContext.request.contextPath}/reservation/checkReservation">예약조회/취소</a></li>
							</ul>
						</div>

						<div class="btn-group">
							<button style="background-color: #0d6efd;"
								class="btn btn-secondary dropdown-toggle" type="button"
								id="defaultDropdown" data-bs-toggle="dropdown"
								data-bs-auto-close="true" aria-expanded="false">게시판</button>
							<ul class="dropdown-menu" aria-labelledby="defaultDropdown">
								<li><a class="dropdown-item"
									href="${pageContext.request.contextPath}/board/noticePage">공지사항</a></li>
								<li><a class="dropdown-item"
									href="${pageContext.request.contextPath}/board/boardFAQ">자주묻는
										질문</a></li>
							</ul>
						</div>

						<div class="btn-group">
							<button style="background-color: #0d6efd;"
								class="btn btn-secondary dropdown-toggle" type="button"
								id="defaultDropdown" data-bs-toggle="dropdown"
								data-bs-auto-close="true" aria-expanded="false">기타</button>
							<ul class="dropdown-menu" aria-labelledby="defaultDropdown">
								<li><a class="dropdown-item"
									href="https://blog.naver.com/wlsfhrytk" target="_blank">네이버
										블로그</a></li>
								<li><a class="dropdown-item"
									href="https://www.instagram.com/arasil_pension/"
									target="_blank">인스타그램</a></li>
							</ul>
						</div>
					</div>
				</div>
			</nav>
		</div>
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
<!-- 	<script> -->
<!-- // 		(function() { -->
<!-- // 			console.log($("#viewer > .inner")); -->
<!-- // 			const $viewer_inner = $("#viewer > .inner"); -->
<!-- // 			$(`<div id='menuToggle' class='toggle menu-toggle'></div>`) -->
<!-- // 					.appendTo($viewer_inner); -->
<!-- // 			const $menu = $("#menu"); -->
<!-- // 			const $main = $("#main"); -->
<!-- // 			const $viewer = $("#viewer"); -->
<!-- // 			$("#menuToggle").on("click", function() { -->
<!-- // 				$menu.toggleClass("show"); -->
<!-- // 				$main.toggleClass("ninety"); -->
<!-- // 				$viewer.toggleClass("ninety"); -->

<!-- // 			}); -->
<!-- // 		})(); -->
<!-- 	</script> -->
	<%-- 		<script	src="${pageContext.request.contextPath}/static/bootstrap/js/bootstrap.min.js"></script>	 --%>

	<script src="${pageContext.request.contextPath}/static/js/shareing.js"></script>
	<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>


</body>
</html>