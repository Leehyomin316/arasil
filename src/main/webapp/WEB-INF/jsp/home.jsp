<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>아라실에 오신걸 환영합니다</title>
<script
	src="${pageContext.request.contextPath}/static/jQuery/jquery-3.6.0.min.js"></script>
<link
	href="${pageContext.request.contextPath}/static/css/home/slider.css"
	rel="stylesheet"></link>
<script src="${pageContext.request.contextPath}/static/js/header.js"></script>

</head>
<body>
	<!-- Navigation-->
	<%@ include file="home/header.jsp"%>
	<div class="main-content">
		<div class="w3-content">
			<img class="mySlides" src="${pageContext.request.contextPath}/static/img/home01.jpg">
			<img class="mySlides" src="${pageContext.request.contextPath}/static/img/home02.jpg">
			<img class="mySlides" src="${pageContext.request.contextPath}/static/img/home03.jpg">
			<img class="mySlides" src="${pageContext.request.contextPath}/static/img/home04.jpg">
			<img class="mySlides" src="${pageContext.request.contextPath}/static/img/home05.jpg">
			<img class="mySlides" src="${pageContext.request.contextPath}/static/img/home06.jpg">
		<div class="w3-a">
			<a class="w3-a demo" onclick="currentDiv(1)">●</a>
			<a class="w3-a demo" onclick="currentDiv(2)">●</a>
			<a class="w3-a demo" onclick="currentDiv(3)">●</a>
			<a class="w3-a demo" onclick="currentDiv(4)">●</a>
			<a class="w3-a demo" onclick="currentDiv(5)">●</a>
			<a class="w3-a demo" onclick="currentDiv(6)">●</a>
		</div>
		</div>

		<div class="w3-center">
			<div class="w3-section">
				<a class="w3-btn prev" onclick="plusDivs(-1)">❮</a>
				<a class="w3-btn next" onclick="plusDivs(1)" >❯</a>
			</div>
		</div>

	</div>

<script
	src="${pageContext.request.contextPath}/static/js/home/slider.js"></script>
	<%@ include file="home/footer.jsp"%>
</body>

</html>