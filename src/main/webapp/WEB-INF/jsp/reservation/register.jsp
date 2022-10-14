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
	href="${pageContext.request.contextPath}/static/css/reservation/register.css"
	rel="stylesheet"></link>
<link
	href='${pageContext.request.contextPath}/static/bootstrap/css/bootstrap.css'
	rel='stylesheet' type='text/css'>
</head>
<body>
	<%@ include file="../home/header.jsp"%>
	<div class="main-content">
		<div class="container-fluid p-0">
			<section class="select_date_container">
				<div class="sec_cal">
					<div class="cal_nav">
						<a href="javascript:;" class="nav-btn go-prev">prev</a>
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
				<div class="usage_rules">
					<pre>■ 입실/퇴실 시간
ㅁ 입실시간 : 오후 3시
ㅁ 퇴실시간 : 오전 11시

■ 인원 추가요금
ㅁ 기준인원 초과 시 추가요금 발생
ㅁ (유아,아동,성인) 1인 추가 1만원
ㅁ 최대인원 초과 시 입실(환불) 불가
ㅁ (영유아 포함) 최대 수용 인원 초과를 엄격히 금함


■ 예약안내
ㅁ 펜션연락처는 예약과 동시에 고객님의 휴대폰으로 자동발송됩니다.
ㅁ 예약 전 취소수수료를 꼭 확인바랍니다.

■ 증빙안내
ㅁ 펜션라이프는 판매대행처로 소득세법과 부가가치세법에 따라 세금계산서가발행되지 않습니다.
</pre>
				</div>
			</section>
			<section class="select_room_container">
				<p class="h5">객실 선택</p>
				<div class="select_room_table">
					<table class="table">
						<thead>
							<tr>
								<th scope="col">선택</th>
								<th scope="col">객실명</th>
								<th scope="col">예약상태</th>
								<th scope="col">예약방법</th>
								<th scope="col">인원(기준/최대)</th>
								<th scope="col">크기</th>
								<th scope="col">요금</th>
								<th scope="col">인당 추가요금</th>
								<th scope="col" style="display: none;">room_id</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="item" items="${roomInfoList}">
								<tr>
									<th scope="row"><c:if test="${item.status_cd ne 'Y'}">
											<input class="form-check-input" type="radio" name="roomType">
										</c:if></th>
									<td><c:out value="${item.room_nm}" /></td>
									<td><c:choose>
											<c:when test="${item.status_cd eq 'Y'}">
												<c:out value="예약불가" />
											</c:when>
											<c:otherwise>
												<c:out value="예약가능" />
											</c:otherwise>
										</c:choose></td>
									<td>실시간예약</td>
									<td><c:out
											value="${item.standard_person}/${item.max_person}" /></td>
									<td>40평</td>
									<td><c:out value="${item.use_fee}" /></td>
									<td><c:out value="${item.additional_fee}" /></td>
									<td scope="row" style="display: none;">${item.room_id}</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</section>
			<section class="select_option_container">
				<p class="h5">옵션 선택 및 예약</p>
				<div class="select_option_table">
					<table class="table">
						<thead>
							<tr>
								<th scope="col">객실정보</th>
								<th scope="col">이용일</th>
								<th scope="col">기간</th>
								<th scope="col">이용인원</th>
								<th scope="col">이용요금</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td><input type="hidden" name="roomId" id="roomId">
									<input type="text" readonly class="form-control-plaintext"
									id="roomNm" name="roomNm"></td>
								<td><input type="text" readonly
									class="form-control-plaintext" id="reserveDt"> <input
									type="hidden" id="reserveDtForCalculate"></td>
								<td><select class="form-select" name="useDays" id="useDays"></select></td>
								<td><select class="form-select" id="usePerson"
									name="usePerson">
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<option value="5">5</option>
										<option value="6">6</option>
										<option value="7">7</option>
										<option value="8">8</option>
										<option value="9">9</option>
										<option value="10" selected>10</option>
										<option value="11">11</option>
										<option value="12">12</option>
										<option value="13">13</option>
										<option value="14">14</option>
										<option value="15">15</option>
										<option value="16">16</option>
										<option value="17">17</option>
										<option value="18">18</option>
										<option value="19">19</option>
										<option value="20">20</option>
								</select></td>
								<td><input readonly class="form-control-plaintext"
									id="totalFee"> <input type="hidden" id="useFee">
									<input type="hidden" id="additionalFee"></td>
							</tr>
						</tbody>
					</table>
				</div>
			</section>
			<section class="modal-area">
				<button class="btn btn-primary" id="modalBtn">등록</button>

				<div class="modal" id="myModal">
					<div class="modal-dialog modal-xl">
						<div class="modal-content">
							<div class="modal-header">
								<h4 class="modal-title">실시간예약</h4>
								<button type="button" class="btn-close" data-bs-dismiss="modal"
									aria-hidden="true"></button>
							</div>
							<div class="container"></div>
							<div class="modal-body">
								<form id="reservationRegForm"
									action='<c:url value="/reservation/addReservation"/>'
									method="post">
									<div>
										<table class="table">
											<thead>
												<tr>
													<th scope="col">객실정보</th>
													<th scope="col">이용일</th>
													<th scope="col">기간</th>
													<th scope="col">이용인원</th>
													<th scope="col">이용요금</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td><input type="text" id="inputRoomId"
														name="inputRoomId"> <input type="text" readonly
														class="form-control-plaintext" id="inputRoomNm"
														name="inputRoomNm"></td>
													<td><input readonly class="form-control-plaintext"
														id="inputStartDt" name="inputStartDt"></td>
													<td><input readonly class="form-control-plaintext"
														id="inputUseDay" name="inputUseDay"></select></td>
													<td><input readonly class="form-control-plaintext"
														id="inputUsePerson" name="inputUsePerson"></td>
													<td><input readonly class="form-control-plaintext"
														id="inputTotalFee" name="inputTotalFee"></td>
												</tr>
											</tbody>
										</table>
									</div>
									<div class=""><h5>예약자 정보</h5>
										<div class="mb-3">
											<label for="guestNm" class="form-label">예약자 성명</label> <input
												type="text" class="form-control" id="inputGuestNm"
												name="inputGuestNm" value="개차반" placeholder="이름을 입력하세요.">
										</div>
										<div class="mb-3">
											<label for="guestCellPhone" class="form-label">전화번호</label> <input
												type="text" class="form-control" id="inputGuestCellPhone"
												name="inputGuestCellPhone" value="01012345678"
												placeholder="전화번호를 입력하세요.">
										</div>
									</div>
									<div class="clauseAccpet">
										<label class="mb-4"><h5>약관동의</h5></label> <br> <input
											type="checkbox" name="item" value="취소 수수료 동의">취소 수수료
										동의
										<div class="mb-5">
											<div class="mb-6">
												<br>
												<p>예약취소는 구매한 사이트 "예약조회/취소" 에서 가능합니다.</p>
												<p>
													취소수수료는 예약시점과는 무관한 <span class="mb-7">이용시작일 기준</span>입니다.
												</p>
												<p>
													환불시 <span class="mb-7">결제하신 금액에서 취소수수료를 제외한 금액을 환불</span>해
													드립니다.
												</p>
												<p>취소수수료는 결제금액이 아닌 예약금(객실요금+기타옵션요금) 기준으로 책정됩니다.</p>
												<p>
													<span class="mb-7">취소수수료가 100% 인 경우 전액 환불되지 않습니다.</span>
												</p>
												<p>수수료 내역은 아래와 같습니다.</p>
											</div>
											<table class="mb-8">
												<colgroup>
													<col>
													<col>
													<col>
												</colgroup>
												<thead>
													<tr>
														<th>기준</th>
														<th>취소수수료(%)</th>
														<th>환불율(%)</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td>이용일 <b>당일~6</b>일전 취소시
														</td>
														<td>100%</td>
														<td>환불없음</td>
													</tr>
													<tr>
														<td>이용일 <b>7</b> 일전 취소시
														</td>
														<td>50%</td>
														<td>50% 환불</td>
													</tr>
													<tr>
														<td>이용일 <b>14</b> 일전 취소시
														</td>
														<td>25%</td>
														<td>75% 환불</td>
													</tr>
													<tr>
														<td>이용일 <b>21</b> 일전 취소시
														</td>
														<td>0%</td>
														<td>100% 환불</td>
													</tr>
													<tr>
														<td>기본 취소 수수료</td>
														<td>0%</td>
														<td>100% 환불</td>
													</tr>
												</tbody>
											</table>
										</div>
										<input type="checkbox" name="item" value="개인정보수집동의">개인정보수집동의
										<div class="mb-5">
											<div class="mb-6">
												<br>
												<div>아라실펜션은(는) 고객님의 개인정보를 중요시하며, "정보통신망 이용촉진 및 정보보호"에
													관한 법률을 준수하고 있습니다.</div>
												<br>
												<div>
													<b>개인정보의 수집항목 및 이용목적</b>
												</div>
												<div>서비스 이용 과정에서 수집 및 이용되는 개인정보는 아래와 같습니다.</div>
												<br>
											</div>
											<div class="mb-9">
												<table class="smallTable">
													<thead class="sTable">
														<tr class="sTb">
															<th class="smallTableC" scope="col">구분</th>
															<th class="smallTableC" scope="col">수집∙이용목적</th>
															<th class="smallTableC" scope="col">수집∙이용항목</th>
															<th class="smallTableC" scope="col">보유 및 이용기간</th>
														</tr>
													</thead>
													<tbody class="smallTable">
														<tr class="sTb">
															<td class="smallTableC" rowspan="4">예약자(구매자)</td>
															<td class="smallTableC">서비스 이용 및 계약의 이행, 본인 확인, 부정
																이용 방지와 불만처리 등 민원처리</td>
															<td class="smallTableC">이름, 휴대전화번호</td>
															<td class="smallTableC" rowspan="4">이용목적 달성 후, 지체 없이
																파기</td>
														</tr>
														<tr class="sTb">
															<td class="smallTableC">서비스 이용 및 계약의 이행, 부정 이용∙거래 방지</td>
															<td class="smallTableC">방문일시, 서비스 이용 기록, IP, 접속기록,
																쿠키, 기기 정보</td>
														</tr>
														<tr class="sTb">
															<td class="smallTableC">주문 및 예약 상품 결제 정보</td>
															<td class="smallTableC">결제정보(계좌, 휴대폰정보),</td>
														</tr>
														<tr class="sTb">
															<td class="smallTableC">결제 취소 금액 환불</td>
															<td class="smallTableC">은행명, 계좌번호, 예금주명</td>
														</tr>
													</tbody>
												</table>
											</div>
										</div>
										<input type="checkbox" name="item" value="구매 조건 확인 및 결제 진행 동의">
										구매 조건 확인 및 결제 진행 동의
									</div>
								</form>
							</div>
							<div class="modal-footer">
								<a href="#" data-bs-dismiss="modal" class="btn btn-outline-dark"
									id="reserveRunBtn">예약</a> <a href="#" data-bs-dismiss="modal"
									class="btn btn-outline-dark">취소</a>
							</div>
						</div>
					</div>
				</div>
			</section>
		</div>
		<%@ include file="../home/footer.jsp"%>
	</div>
</body>
<script
	src="${pageContext.request.contextPath}/static/js/reservation/register.js"></script>
</html>