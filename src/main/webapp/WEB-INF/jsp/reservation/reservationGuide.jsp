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
	href="${pageContext.request.contextPath}/static/css/reservation/reservationGuide.css"
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
	<div class="main_content">
		<h2>
			<b>예약안내</b>
		</h2>
		<br>
		<section class="guide1">
			<div class="feeGuide">
				<h4>
					<b>요금안내</b>
				</h4>
				<p>
					예약방법: 실시간예약 + 전화 및 문자(상담시간: 오전9시 ~ 오후 9시까지)<br>
					예약전화: 010-5609-9369, 010-8466-9369<br>
					예약계좌: 농협 627-02-207095 (채영숙)<br>					
				</p>
			</div>
		</section>
		<section class="guide2">
			<div class="rules">
				<h4>
					<b>이용수칙</b>
				</h4>
				<p>예약시 아래 안내사항을 확인 부탁드리며, 동의 하신 분들에 한해 예약이 가능함을 알려드립니다.</p>
				<p>
					1. 이용시간<br> 가. 입실: 당일 오후 3시<br> 나. 퇴실: 다음 날 오전 11시
				</p>
				<p>2. 반려동물: 쾌적한 시설 및 다음 손님을 위해 애완동물은 동반할 수 없습니다.</p>
				<p>3. 바베큐 시설: 사용료는 별도로 받지 않습니다. 숯과 철망은 준비하셔야 합니다.</p>
				<p>
					4. 빔프로젝터: 노트북을 준비하시면 빔프로젝터를 이용하실 수 있습니다.<br>영화관람 및 회사(단체) 워크숍이
					가능합니다.
				</p>
				<p>5. 와이파이: 펜션 실내에서 무료로 와이파이 이용이 가능합니다.</p>
				<p>
					6. 컴퓨터: 실내 컴퓨터는 외부 보안용 CCTV용 컴퓨터입니다.<br>관리자 외에는 컴퓨터를 조작하시면 안
					됩니다.
				</p>
				<p>
					7. 분리수거: 음식물 쓰레기는 쓰레기 봉투에 넣어주세요.<br> 재활용 및 일반 쓰레기는 보일러실에 분리수거
					부탁드립니다.
				</p>
				<ul>
					<p>8. 기타</p>
					<li>사용하신 이불 및 베개는 방 한쪽에 정리 부탁드립니다.</li>
					<li>시설물 이용시 상해, 파손은 사용자 책임입니다.</li>
					<li>귀중품 분실에 대해 책임지지 않습니다.</li>
					<li>다른 집에 불쾌감을 주는 고성방가 및 음주가무는 금합니다.</li>
					<li>실내에서는 절대 금연입니다.</li>
					<li>실내에서는 고기를 구워 드실 수 없습니다.</li>
					<li>다음 손님을 위해 식기세척을 부탁드립니다.</li>
				</ul>>
				<p>9. 이용 안내에 없는 사항은 미리 주인과 의논해주세요.</p>
			</div>
		</section>
		<section class="guide3">
			<div class="refund">
				<h4>환불안내</h4>
				<table class="refund-table">
					<thead></thead>
					<tbody></tbody>
				</table>
			</div>
		</section>
	</div>
	<%@ include file="../home/footer.jsp"%>
</body>
</html>