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
	href="${pageContext.request.contextPath}/static/css/reservation/checkReservation.css"
	rel="stylesheet"></link>
<link
	href='${pageContext.request.contextPath}/static/bootstrap/css/bootstrap.css'
	rel='stylesheet' type='text/css'>
<style>
@import
	url('https://fonts.googleapis.com/css2?family=IBM+Plex+Sans+KR:wght@400;500&display=swap')
	;
</style>
</head>
<body>
	<%@ include file="../home/header.jsp"%>
	<div class="main-content">
		<header class="title">
			<h1>예약조회</h1>
		</header>
		<div class="checkMain">
			<div class="container">
				<div class="emptyDiv"></div>
				<div class="checkInput">
					<input type="text" class="reservId" placeholder="주문번호">
				</div>
				<div class="checkInput">
					<input type="text" class="guestNm" placeholder="이름">
				</div>
				<div class="checkInput">
					<input type="text" class="guestCellPhone" placeholder="연락처">
				</div>
				<button type="button" id="goCheck" class="goCheck">예약 조회</button>
				<div class="">
					<h4>예약시 문자로 발송된 주문번호를 확인 후 예약조회를 진행해주세요</h4>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="../home/footer.jsp"%>
</body>
</html>