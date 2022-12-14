<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아라실에 오신걸 환영합니다.</title>
<script
	src="${pageContext.request.contextPath}/static/jQuery/jquery-3.6.0.min.js"></script>
<link
	href="${pageContext.request.contextPath}/static/bootstrap/css/bootstrap.css"
	rel="stylesheet"></link>
<link
	href="${pageContext.request.contextPath}/static/css/reservation/listPage.css"
	rel="stylesheet"></link>
<script src="${pageContext.request.contextPath}/static/js/header.js"></script>
<link href="${pageContext.request.contextPath}/static/css/header.css" rel="stylesheet"></link>

<script>
	$(function() {
		$("#btnWriteForm")
				.on(
						"click",
						function() {
							location.href = "${pageContext.request.contextPath}/board/noticeForm";
						});
	});
</script>
<script>
	function fn_contentView(noticeId) {
		var url = "${pageContext.request.contextPath}/board/noticeContent";
		url = url + "?noticeId=" + noticeId;
		location.href = url;
	}
</script>
</head>
<body>
	<%@ include file="../home/header.jsp"%>
	<div class="main-content">
		<header class="title">
			<h1>예약 현황</h1>
		</header>
		<div style="overflow-x: auto; white-space: nowrap;">
			<div class="btn-container">
				<button class="saveBtn" id="saveBtn" type="button">저장</button>
			</div>
			<form id="updateForm" action='<c:url value="/reservation/updateStatus"/>' method="post">
				<input type="hidden" name="ids" id="ids">
				<input type="hidden" name="codes" id="codes">
			</form>
			<div class="table-container">
				<table class="table table-hover table-striped">
					<thead>
						<tr>
							<th>선택</th>
							<th>예약번호</th>
							<th>객실명</th>
							<th>시작일</th>
							<th>종료일</th>
							<th>기간</th>
							<th>예약자명</th>
							<th>전화번호</th>
							<th>총인원</th>
							<th>이용요금</th>
							<th>상태코드</th>
						</tr>
					</thead>
					<tbody id="resultTbody">
						<c:forEach items="${list}" var="reservationVO">
							<tr class="resultRow">
								<td><input class="chooseChk" name="chooseChk" type="checkbox"></td>
								<td><input type="hidden" id="reservId" value="${reservationVO.reservSeq}">${reservationVO.reservSeq}</td>
								<td>${reservationVO.roomNm}</td>
								<td>${reservationVO.startDt}</td>
								<td>${reservationVO.endDt}</td>
								<td>${reservationVO.days}</td>
								<td>${reservationVO.guestNm}</td>
								<td>${reservationVO.guestCellPhone}</td>
								<td>${reservationVO.extraPerson}</td>
								<td>${reservationVO.totalFee}</td>
								<td><select id="codeSelect" disabled>
										<option value="A" <c:if test="${reservationVO.reservCode eq 'A'}">selected</c:if>>예약등록</option>
										<option value="B" <c:if test="${reservationVO.reservCode eq 'B'}">selected</c:if>>입금대기</option>
										<option value="C" <c:if test="${reservationVO.reservCode eq 'C'}">selected</c:if>>예약확정</option>
										<option value="D" <c:if test="${reservationVO.reservCode eq 'D'}">selected</c:if>>예약취소</option>
								</select></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
		<div>
			<nav aria-label="Page navigation example" class="pagination">
				<ul class="pagination">
					<c:if test="${pageMaker.prev == true}">
						<li class="page-item"><a class="page-link"
							href="${pageContext.request.contextPath}/reservation/listPage?page=${pageMaker.startPage-1}&perPageNum=${pageMaker.cri.perPageNum}"
							aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
								<span class="sr-only">Previous</span>
						</a></li>
					</c:if>
					<c:forEach begin="${pageMaker.startPage}"
						end="${pageMaker.endPage}" step="1" varStatus="status" var="i">
						<li class="page-item"><a class="page-link"
							href="${pageContext.request.contextPath}/reservation/listPage?page=${i}&perPageNum=${pageMaker.cri.perPageNum}">${i}</a></li>
					</c:forEach>
					<c:if test="${pageMaker.next == true && pageMaker.endPage > 0}">
						<li class="page-item"><a class="page-link"
							href="${pageContext.request.contextPath}/reservation/listPage?page=${pageMaker.endPage+1}&perPageNum=${pageMaker.cri.perPageNum}"
							aria-label="Next"> <span aria-hidden="true">&raquo;</span> <span
								class="sr-only">Next</span>
						</a></li>
					</c:if>
				</ul>
			</nav>
		</div>
	</div>
	<%@ include file="../home/footer.jsp"%>
</body>
<script
	src="${pageContext.request.contextPath}/static/js/reservation/listPage.js"></script>
</html>