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
	<div class="main-content">
		<header class="title">
			<h1>예약안내</h1>
		</header>
		<main>
			<div class="columnType">
				<section class="guide1">
					<div class="reserveGuide">
						<p>
							예약방법: 실시간예약 + 전화 및 문자(상담시간: 오전9시 ~ 오후 9시까지)<br> 예약전화:
							010-5609-9369, 010-8466-9369<br> 예약계좌: 농협 627-02-207095
							(채영숙)<br>밤 늦은 시간의 예약은 다음날 오전 예약이 확정 됩니다.<br>
							 <br> 주중: 450,000원<br>주말: 500,000원<br>
							성수기: 600,000원 <br>주중: 일요일~목요일<br>주말: 금요일, 토요일<br>
							성수기: 7, 8월 / 이틀 이상 연속되는 휴일 / 연말<br> 기준인원(10명) 초과시 1인당 1만원
							추가요금 발생<br>연박시 1박당 5만원 할인
						</p>
					</div>
				</section>
				<section class="guide2">
					<div class="refund">
						<h4>환불안내</h4>
						<p>올바른 예약 문화 정착을 위하여 해당 업소에서는 예약 취소시 환불기준을 아래와 같이 운영하고 있으니 확인을
							하시고 예약해주시기 바랍니다.</p>
						<table class="mb-8">
							<thead class="mb-8h">
								<tr>
									<th class="mb-8b-a">기준</th>
									<th class="mb-8b-b">취소수수료(%)</th>
									<th class="mb-8b-c">환불율(%)</th>
								</tr>
							</thead>
							<tbody class="mb-8b">
								<tr>
									<td class="mb-8b-a">이용일 <b>당일~6</b>일전 취소시
									</td>
									<td class="mb-8b-b">100%</td>
									<td class="mb-8b-c">환불없음</td>
								</tr>
								<tr>
									<td class="mb-8b-a">이용일 <b>7</b> 일전 취소시
									</td>
									<td class="mb-8b-b">50%</td>
									<td class="mb-8b-c">50% 환불</td>
								</tr>
								<tr>
									<td class="mb-8b-a">이용일 <b>14</b> 일전 취소시
									</td>
									<td class="mb-8b-b">25%</td>
									<td class="mb-8b-c">75% 환불</td>
								</tr>
								<tr>
									<td class="mb-8b-a">이용일 <b>21</b> 일전 취소시
									</td>
									<td class="mb-8b-b">0%</td>
									<td class="mb-8b-c">100% 환불</td>
								</tr>
								<tr>
									<td class="mb-8b-a">기본 취소 수수료</td>
									<td class="mb-8b-b">0%</td>
									<td class="mb-8b-c">100% 환불</td>
								</tr>
							</tbody>
						</table>
					</div>
				</section>
				<div class="button-center">
				<button type="button" class="goReservation"
					onClick="location.href='${pageContext.request.contextPath}/reservation/register'">실시간예약</button>
				</div>	
			</div>
			<div class="rowType">
				<section class="guide3">
				<div class="rules">
					<h4>이용수칙</h4>
					<p>예약시 아래 안내사항을 확인 부탁드리며, <br>동의 하신 분들에 한해 예약이 가능함을 알려드립니다.</p><br>
					<h5>1. 이용시간</h5>
					<ul style="list-style-type:none;">
						<li> - 입실: 당일 오후 3시</li>
						<li> - 퇴실: 다음 날 오전 11시</li>
					</ul>
					<h5>2. 반려동물</h5>
					<ul style="list-style-type:none;">
						쾌적한 시설 및 다음 손님을 위해 <span class="mb-7">애완동물은 동반할 수 없습니다.</span>
					</ul>
					<h5>3. 바베큐 시설</h5>
					<ul style="list-style-type:none;">사용료는 별도로 받지 않습니다. 숯과 철망은 준비하셔야 합니다.</ul>
					<h5>4. 빔프로젝터</h5>
					<ul style="list-style-type:none;">
						노트북을 준비하시면 빔프로젝터를 이용하실 수 있습니다.<br>영화관람 및 회사(단체) 워크숍이 가능합니다.
					</ul>
					<h5>5. 와이파이</h5>
					<ul style="list-style-type:none;">펜션 실내에서 무료로 와이파이 이용이 가능합니다.</ul>
					<h5>6. 컴퓨터</h5>
					<ul style="list-style-type:none;">
						실내 컴퓨터는 <span class="mb-7">외부 보안용 CCTV용 컴퓨터</span>입니다.<br>관리자
						외에는 컴퓨터를 조작하시면 안 됩니다.
					</ul>
					<h5>7. 분리수거</h5>
					<ul style="list-style-type:none;">
						음식물 쓰레기는 쓰레기 봉투에 넣어주세요.<br> 재활용 및 일반 쓰레기는 보일러실에 분리수거 부탁드립니다.
					</ul>
					<h5>8. 기타</h5>
					<ul style="list-style-type:none;">
						<li>- 사용하신 이불 및 베개는 방 한쪽에 정리 부탁드립니다.</li>
						<li>- 시설물 이용시 상해, 파손은 사용자 책임입니다.</li>
						<li>- 귀중품 분실에 대해 책임지지 않습니다.</li>
						<li>- 다른 집에 불쾌감을 주는 고성방가 및 음주가무는 금합니다.</li>
						<li>- 실내에서는 <span class="mb-7">절대 금연</span>입니다.
						</li>
						<li>- 실내에서는 고기를 구워 드실 수 없습니다.</li>
						<li>- 다음 손님을 위해 식기세척을 부탁드립니다.</li>
					</ul>
					<h5>9. 이용 안내에 없는 사항은 미리 주인과 의논해주세요.</h5>
				</div>
				</section>
			</div>
		</main>
	</div>
	<%@ include file="../home/footer.jsp"%>
</body>
</html>