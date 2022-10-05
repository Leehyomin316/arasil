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
<script src="${pageContext.request.contextPath}/static/js/home.js"></script>
<link href="${pageContext.request.contextPath}/static/css/homeStyle.css"
	rel="stylesheet"></link>
<link rel="icon" type="image/x-icon"
	href="${pageContext.request.contextPath}/static/img/favicon.ico" />
</head>
<body>
	<%@ include file="../home/header.jsp"%>
	<article>
		<div class="container">
				<h1>공지사항</h1>
				<div class="table-responsive">
				<table class="table table-striped table-sm">
					<thead class="thead-dark">
						<tr>
							<th scope="col">번호</th>
							<th scope="col">제목</th>
							<th scope="col">작성자</th>
							<th scope="col">작성일자</th>
							<th scope="col">조회수</th>
						</tr>
					</thead>
					<tbody>
						<c:choose>
							<c:when test="${empty noticePage}">
								<tr>
									<td colspan="5" align="center">데이터가 없습니다</td>
								</tr>
							</c:when>
							<c:when test="${!empty noticePage}">

								<c:forEach var="row" items="${list}">
									<tr>
										<td>${row.boardNo}</td>
										<td>${row.boardTitle}</td>
										<td>${row.boardWriter}</td>
										<td><fmt:formatDate value="${row.boardDate}"
												pattern="yyyy-MM-dd HH:mm:ss" /></td>
									</tr>
								</c:forEach>
							</c:when>
						</c:choose>
					</tbody>
				</table>
				</div>
		</div>
	</article>
	<%@ include file="../home/footer.jsp"%>
</body>
</html>