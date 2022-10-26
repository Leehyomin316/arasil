<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	href="${pageContext.request.contextPath}/static/css/noticeBoard/noticeFAQ.css"
	rel="stylesheet"></link>
<script src="${pageContext.request.contextPath}/static/js/header.js"></script>
<script>
$(function() {
	$("#btnInsert").on("click", function() {
		location.href = "${pageContext.request.contextPath}/board/noticeFAQInsert";
	});
});
</script>

</head>
<body>
	<%@ include file="../home/header.jsp"%>
	<div class="main-content">
		<article>
			<header class="title">
				<h1>자주묻는질문</h1>
			</header>
			<div class="FAQ_div">
				<details id = showFAQ>
					<summary>펜션을 최대 몇명까지 이용할 수 있나요?</summary>
					<p>&nbsp;&nbsp;&nbsp;- 최대 20명까지 이용 가능합니다</p>
				</details>
				<details id = showFAQ>
					<summary>바베큐 시설이 있나요?</summary>
					<p>&nbsp;&nbsp;&nbsp;- 야외에 바베큐 그릴이 준비되어있습니다</p>
				</details>
				<details id = showFAQ>
					<summary>몇일 이후까지 예약 가능한가요?</summary>
					<p>&nbsp;&nbsp;&nbsp;- 최대 90일이후 까지 예약 가능합니다</p>
				</details>
			</div>
			<div>
				<sec:authorize access="hasAnyRole('ROLE_ADMIN')">
					<button type="button" class="btn btn-sm btn-primary" id="btnInsert">등록</button>
				</sec:authorize>		
			</div>
		</article>
	</div>
			<%@ include file="../home/footer.jsp"%>
</body>
</html>