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
<script
	src="${pageContext.request.contextPath}/static/js/home/slider.js"></script>
</head>
<body>
	<!-- Navigation-->
	<%@ include file="home/header.jsp"%>
	<%-- 	<c:import url="header.jsp"></c:import> --%>
	<div class="main-content">
		<h2 style="text-align: center"></h2>
		<div class="slider-container">
			<div class="mySlides">
				<div class="numbertext active-slider">1 / 6</div>
				<img src="${pageContext.request.contextPath}/static/img/home01.jpg"
					class="slideimage">
			</div>

			<div class="mySlides">
				<div class="numbertext">2 / 6</div>
				<img src="${pageContext.request.contextPath}/static/img/home02.jpg"
					class="slideimage">
			</div>

			<div class="mySlides">
				<div class="numbertext">3 / 6</div>
				<img src="${pageContext.request.contextPath}/static/img/home03.jpg"
					class="slideimage">
			</div>

			<div class="mySlides">
				<div class="numbertext">4 / 6</div>
				<img src="${pageContext.request.contextPath}/static/img/home04.jpg"
					class="slideimage">
			</div>

			<div class="mySlides">
				<div class="numbertext">5 / 6</div>
				<img src="${pageContext.request.contextPath}/static/img/home05.jpg"
					class="slideimage">
			</div>

			<div class="mySlides">
				<div class="numbertext">6 / 6</div>
				<img src="${pageContext.request.contextPath}/static/img/home06.jpg"
					class="slideimage"">
			</div>
			  <a class="prev" onclick="plusSlides(-1)">❮</a>
			  <a class="next" onclick="plusSlides(1)">❯</a>

			<div class="caption-container">
				<p id="caption"></p>
			</div>

			<div class="row-slider" style="width:100%">
				<div class="column-slider">
					<img class="demo cursor"
						src="${pageContext.request.contextPath}/static/img/home01.jpg"
						style="width: 100%" onclick="currentSlide(0)" alt="아라실">
				</div>
				<div class="column-slider">
					<img class="demo cursor"
						src="${pageContext.request.contextPath}/static/img/home02.jpg"
						style="width: 100%" onclick="currentSlide(1)" alt="아라실">
				</div>
				<div class="column-slider">
					<img class="demo cursor"
						src="${pageContext.request.contextPath}/static/img/home03.jpg"
						style="width: 100%" onclick="currentSlide(2)" alt="아라실">
				</div>
				<div class="column-slider">
					<img class="demo cursor"
						src="${pageContext.request.contextPath}/static/img/home04.jpg"
						style="width: 100%" onclick="currentSlide(3)" alt="아라실">
				</div>
				<div class="column-slider">
					<img class="demo cursor"
						src="${pageContext.request.contextPath}/static/img/home05.jpg"
						style="width: 100%" onclick="currentSlide(4)" alt="아라실">
				</div>
				<div class="column-slider">
					<img class="demo cursor"
						src="${pageContext.request.contextPath}/static/img/home06.jpg"
						style="width: 100%" onclick="currentSlide(5)" alt="아라실">
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