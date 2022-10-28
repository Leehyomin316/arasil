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
	href="${pageContext.request.contextPath}/static/css/noticeBoard/noticePage.css"
	rel="stylesheet"></link>
<link rel="icon" type="image/x-icon"
	href="${pageContext.request.contextPath}/static/img/favicon.ico" />
<script src="${pageContext.request.contextPath}/static/js/header.js"></script>

<script>
	$(function(){
		$("#btnWriteForm").on("click", function(){
			location.href="${pageContext.request.contextPath}/board/noticeForm";
		});
	});
</script>
<script>
	function fn_contentView(noticeId){
		var url = "${pageContext.request.contextPath}/board/noticeContent";
		url = url + "?noticeId="+noticeId;
		location.href= url;
	}
</script>

</head>
<body>
	<%@ include file="../home/header.jsp"%>
	<div class="main-content">
		<article>
			<h2>공지사항</h2>
			<div class="table-responsive">
				<table class="table table-striped table-sm">
					<thead class="thead-dark">
						<tr>
							<th scope="col">번호</th>
							<th scope="col">제목</th>
							<th scope="col">작성일자</th>
							<th scope="col">작성자</th>
						</tr>
					</thead>
					<tbody>
<%-- 						<c:choose> --%>
<%-- 							<c:when test="${empty notice}"> --%>
<!-- 								<tr> -->
<!-- 									<td colspan="5" align="center">데이터가 없습니다</td> -->
<!-- 								</tr> -->
<%-- 							</c:when> --%>
<%-- 							<c:when test="${!empty notice}"> --%>
<%-- 								<c:forEach var="row" items="${notice}"> --%>
<!-- 									<tr> -->
<%-- 										<td>${row.notice_id}</td> --%>
<!-- 										<td><a href="#" -->
<%-- 											onClick="fn_contentView(<c:out value="${row.notice_id}"/>)"> --%>
<%-- 												<c:out value="${row.notice_title}" /> --%>
<!-- 										</a></td> -->
<%-- 										<td><fmt:formatDate value="${row.notice_date}" --%>
<%-- 												pattern="yyyy-MM-dd HH:mm:ss" /></td> --%>
<%-- 										<td>${row.user_id}</td> --%>
<!-- 									</tr> -->
<%-- 								</c:forEach> --%>
<%-- 							</c:when> --%>
<%-- 						</c:choose> --%>
					</tbody>
				</table>
			</div>
			<div>
				<button type="button" class="btn btn-sm-btn-primary"
					id="btnWriteForm">글쓰기</button>
			</div>
		</article>
	</div>
	<%@ include file="../home/footer.jsp"%>
</body>
</html>