<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>아라실에 오신걸 환영합니다</title>
<script
	src="${pageContext.request.contextPath}/static/jQuery/jquery-3.6.0.min.js"></script>
<script
	src="${pageContext.request.contextPath}/static/bootstrap/js/bootstrap.min.js"></script>
<link
	href="${pageContext.request.contextPath}/static/css/intro/introPlace.css"
	rel="stylesheet"></link>
<link
	href='${pageContext.request.contextPath}/static/bootstrap/css/bootstrap.css'
	rel='stylesheet' type='text/css'>
<link href="${pageContext.request.contextPath}/static/css/header.css" rel="stylesheet"></link>	
<style>
@import
	url('https://fonts.googleapis.com/css2?family=IBM+Plex+Sans+KR:wght@400;500&display=swap')
	;
</style>
</head>
<body>
	<%@ include file="../home/header.jsp"%>
	<div class="main-content">
		<main>
			<section class="placeLeft">
				<header class="title">
					<h1>펜션정보</h1>
				</header>
				<br>
				<br>
				<h4 class="sub-title">객실정보</h4>
				<p>
					방 4개, 화장실 2개, 거실 1개, 주방 1개 <br> <br> 기준인원 : 10인 | 최대인원 :
					20인(20인 초과 입실 절대불가) <br> 체크인 15:00 | 체크아웃 : 11:00
				</p>
				<span class="line"></span>
				<h4 class="sub-title">비품</h4>
				<p>
					침실: 이불, 베개, 토퍼 <br> 주방: 냉장고, 전기밥솥, 전자레인지, 하이라이트, 식기류, 전기포트 <br>
					화장실: 드라이기, 샤워용품(샴푸, 바디워시, 린스), 수건 <br> 거실: TV, 에어컨, 빔프로젝트,
					응급상자, 선풍기 <br> 다용도실: 세탁기, 건조기, 분리수거통
				</p>
				<span class="line"></span>
				<h4 class="sub-title">편의시설</h4>
				<p>정자, 툇마루, 야외바베큐시설, 수돗가</p>
				<div class="button-center">
				<button type="button" class="goReservation"
					onClick="location.href='${pageContext.request.contextPath}/reservation/register'">실시간예약</button>
				</div>	
			</section>
			<section class="placeRight">
				<div class="right-img">
					<img
						src="${pageContext.request.contextPath}/static/img/place/place01.jpg">
				</div>
				<div class="right-img">
					<img
						src="${pageContext.request.contextPath}/static/img/place/place02.jpg">
				</div>
				<div class="right-img">
					<img
						src="${pageContext.request.contextPath}/static/img/place/place03.jpg">
				</div>
				<div class="right-img">
					<img
						src="${pageContext.request.contextPath}/static/img/place/place04.jpg">
				</div>
				<div class="right-img">
					<img
						src="${pageContext.request.contextPath}/static/img/place/place05.jpg">
				</div>
				<div class="right-img">
					<img
						src="${pageContext.request.contextPath}/static/img/place/place06.jpg">
				</div>
				<div class="right-img">
					<img
						src="${pageContext.request.contextPath}/static/img/place/place07.jpg">
				</div>
				<div class="right-img">
					<img
						src="${pageContext.request.contextPath}/static/img/place/place08.jpg">
				</div>
				<div class="right-img">
					<img
						src="${pageContext.request.contextPath}/static/img/place/place09.jpg">
				</div>
				<div class="right-img">
					<img
						src="${pageContext.request.contextPath}/static/img/place/place10.jpg">
				</div>
				<div class="right-img">
					<img
						src="${pageContext.request.contextPath}/static/img/place/place11.jpg">
				</div>
				<div class="right-img">
					<img
						src="${pageContext.request.contextPath}/static/img/place/place12.jpg">
				</div>
				<div class="right-img">
					<img
						src="${pageContext.request.contextPath}/static/img/place/place13.jpg">
				</div>
				<div class="right-img">
					<img
						src="${pageContext.request.contextPath}/static/img/place/place14.jpg">
				</div>
				<div class="right-img">
					<img
						src="${pageContext.request.contextPath}/static/img/place/place15.jpg">
				</div>
				<div class="right-img">
					<img
						src="${pageContext.request.contextPath}/static/img/place/place16.jpg">
				</div>
				<div class="right-img">
					<img
						src="${pageContext.request.contextPath}/static/img/place/place17.jpg">
				</div>
				<div class="right-img">
					<img
						src="${pageContext.request.contextPath}/static/img/place/place18.jpg">
				</div>
				<div class="right-img">
					<img
						src="${pageContext.request.contextPath}/static/img/place/place19.jpg">
				</div>
				<div class="right-img">
					<img
						src="${pageContext.request.contextPath}/static/img/place/place20.jpg">
				</div>
				<div class="right-img">
					<img
						src="${pageContext.request.contextPath}/static/img/place/place21.jpg">
				</div>
				<div class="right-img">
					<img
						src="${pageContext.request.contextPath}/static/img/place/place22.jpg">
				</div>
				<div class="right-img">
					<img
						src="${pageContext.request.contextPath}/static/img/place/place23.jpg">
				</div>
				<div class="right-img">
					<img
						src="${pageContext.request.contextPath}/static/img/place/place24.jpg">
				</div>
			</section>
		</main>
	</div>	
	<%@ include file="../home/footer.jsp"%>
</body>
</html>