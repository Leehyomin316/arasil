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
	href="${pageContext.request.contextPath}/static/css/reservation/roomSchedule.css"
	rel="stylesheet"></link>
<link
	href='${pageContext.request.contextPath}/static/bootstrap/css/bootstrap.css'
	rel='stylesheet' type='text/css'>
<link href="${pageContext.request.contextPath}/static/css/header.css" rel="stylesheet"></link>	
</head>
<body>
	<%@ include file="../home/header.jsp"%>
	<div class="main-content">
		<header class="title">
			<h1>예약 현황</h1>
		</header>
		<div class="container-fluid p-0">
			<section class="select_date_container">
				<div class="sec_cal">
					<div class="cal_nav">
						<a href="javascript:;" class="nav-btn go-prev">next</a>
						<div class="year-month"></div>
						<a href="javascript:;" class="nav-btn go-next">next</a>
					</div>
					<div class="cal_wrap">
						<div class="days">
							<div class="day">SUN</div>
							<div class="day">MON</div>
							<div class="day">TUE</div>
							<div class="day">WED</div>
							<div class="day">THU</div>
							<div class="day">FRI</div>
							<div class="day">SAT</div>
						</div>
						<div class="dates"></div>
					</div>
				</div>
			</section>
		</div>
	</div>
	<%@ include file="../home/footer.jsp"%>
</body>
<script
	src="${pageContext.request.contextPath}/static/js/reservation/roomSchedule.js"></script>
</html>