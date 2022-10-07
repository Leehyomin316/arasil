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
<script
	src="${pageContext.request.contextPath}/static/js/home/slider.js"></script>
<link
	href="${pageContext.request.contextPath}/static/css/home/slider.css"
	rel="stylesheet"></link>
</head>
<body>
	<!-- Navigation-->
<%-- 		<%@ include file="home/header.jsp"%> --%>
	<%-- 	<c:import url="header.jsp"></c:import> --%>
	<div class="main-content">
		<h2 style="text-align:center">Slideshow Gallery</h2>
		<div class="slider-container">
			<div class="mySlides">
				<div class="numbertext active-slider">1 / 6</div>
				<img src="${pageContext.request.contextPath}/static/img/home.jpg" style="width: 100%">
			</div>

			<div class="mySlides">
				<div class="numbertext">2 / 6</div>
				<img src="${pageContext.request.contextPath}/static/img/home.jpg" style="width: 100%">
			</div>

			<div class="mySlides">
				<div class="numbertext">3 / 6</div>
				<img src="${pageContext.request.contextPath}/static/img/home.jpg" style="width: 100%">
			</div>

			<div class="mySlides">
				<div class="numbertext">4 / 6</div>
				<img src="${pageContext.request.contextPath}/static/img/home.jpg" style="width: 100%">
			</div>

			<div class="mySlides">
				<div class="numbertext">5 / 6</div>
				<img src="${pageContext.request.contextPath}/static/img/home.jpg" style="width: 100%">
			</div>

			<div class="mySlides">
				<div class="numbertext">6 / 6</div>
				<img src="${pageContext.request.contextPath}/static/img/home.jpg" style="width: 100%">
			</div>

			<a class="prev" onclick="plusSlides(-1)">❮</a> <a class="next"
				onclick="plusSlides(1)">❯</a>

			<div class="caption-container">
				<p id="caption"></p>
			</div>

			<div class="row-slider">
				<div class="column-slider">
					<img class="demo cursor" src="${pageContext.request.contextPath}/static/img/home.jpg"
						style="width: 100%" onclick="currentSlide(1)" alt="The Woods">
				</div>
				<div class="column-slider">
					<img class="demo cursor" src="${pageContext.request.contextPath}/static/img/home.jpg"
						style="width: 100%" onclick="currentSlide(2)"
						alt="Trolltunga, Norway">
				</div>
				<div class="column-slider">
					<img class="demo cursor" src="${pageContext.request.contextPath}/static/img/home.jpg"
						style="width: 100%" onclick="currentSlide(3)"
						alt="Mountains and fjords">
				</div>
				<div class="column-slider">
					<img class="demo cursor" src="${pageContext.request.contextPath}/static/img/home.jpg"
						style="width: 100%" onclick="currentSlide(4)"
						alt="Northern Lights">
				</div>
				<div class="column-slider">
					<img class="demo cursor" src="${pageContext.request.contextPath}/static/img/home.jpg"
						style="width: 100%" onclick="currentSlide(5)"
						alt="Nature and sunrise">
				</div>
				<div class="column-slider">
					<img class="demo cursor" src="${pageContext.request.contextPath}/static/img/home.jpg"
						style="width: 100%" onclick="currentSlide(6)"
						alt="Snowy Mountains">
				</div>
			</div>
		</div>



		<!-- 		<section> -->
		<!-- 	       <div class="container px-4 px-lg-5"> -->
		<!-- 	           <div class="row gx-4 gx-lg-5"> -->
		<!-- 	               <div class="col-lg-6"> -->
		<!-- 	                    <h1 class="mt-5">hello</h1> -->
		<!-- 	                   <p></p> -->
		<!-- 	               </div> -->
		<!-- 	           </div> -->
		<!-- 	       </div> -->
		<!-- 	    </section> -->

	</div>


	<%@ include file="home/footer.jsp"%>
</body>
</html>