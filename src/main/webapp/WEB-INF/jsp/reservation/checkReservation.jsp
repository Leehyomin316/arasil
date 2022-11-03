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
			<section class="container">
				<div class="emptyDiv"></div>
				<div class="checkInput">
					<input type="text" class="reservSeq" id="reservSeq" placeholder="주문번호">
				</div>
				<div class="checkInput">
					<input type="text" class="guestNm" id="guestNm" placeholder="이름">
				</div>
				<div class="checkInput">
					<input type="text" class="guestCellPhone" id="guestCellPhone" placeholder="연락처">
				</div>
				<button id="checkBtn" class="goCheck">예약 조회</button>
				<div class="goCheckBtn">
					<h4>예약시 문자로 발송된 주문번호를 확인 후 예약조회를 진행해주세요</h4>
				</div>
			</section>
			<section class="modal-area">
				<div class="modal" id="myModal">
					<div class="modal-dialog modal-xl">
						<div class="modal-content">
							<div class="modal-header">
								<h4 class="modal-title">예약조회</h4>
								<button type="button" class="btn-close" data-bs-dismiss="modal"
									aria-hidden="true"></button>
							</div>
							<div class="modal-body">
								<form id="checkRegForm" method="post" action='<c:url value="/reservation/checkReservation"/>'>
									<div class="chkReserve">
										<table class="reservTable">
											<thead>
												<tr>
													<th scope="col">객실이름</th>
													<th scope="col">예약상태</th>
													<th scope="col">예약자</th>
													<th scope="col">예약번호</th>
													<th scope="col">체크인</th>
													<th scope="col">체크아웃</th>
													<th scope="col">인원수</th>
													<th scope="col">이용요금</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td><span id="roomNm"></span></td>
													<td><span id="reservCode"></span></td>
													<td><span id="inputGuestNm"></span></td>
													<td><span id="inputReservSeq"></span></td>
													<td><span id="startDt"></span></td>
													<td><span id="endDt"></span></td>
													<td><span id="extraPerson"></span></td>
													<td><span id="totalFee"></span></td>
												</tr>
											</tbody>
										</table>
										<button id="cancelButton" class="cancelButton">예약 취소</button>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</section>
		</div>
	</div>
	<%@ include file="../home/footer.jsp"%>
</body>
<script
	src="${pageContext.request.contextPath}/static/js/reservation/checkReservation.js"></script>
</html>