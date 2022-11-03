<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.scci.vo.FaqVO"%>
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
<link href="${pageContext.request.contextPath}/static/css/header.css" rel="stylesheet"></link>	
<link
	href="${pageContext.request.contextPath}/static/css/noticeBoard/noticeFAQ.css"
	rel="stylesheet"></link>
<script src="${pageContext.request.contextPath}/static/js/header.js"></script>
<link href="${pageContext.request.contextPath}/static/css/header.css" rel="stylesheet"></link>
<script>
	$(function() {
		$("#btnInsert").on("click", function() {
			location.href = "${pageContext.request.contextPath}/board/boardFAQInsert";
		});
	});
</script>
<script>
	function fn_updateFAQ(faqId) {
		var url = "${pageContext.request.contextPath}/board/boardFAQupdate";
		url = url + "?faqId="+faqId;
		location.href = url;
	};
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
				<c:choose>
					<c:when test="${empty FAQ}">
						<tr>
							<td colspan="5" align="center">데이터가 없습니다</td>
						</tr>
					</c:when>
					<c:when test="${!empty FAQ}">
						<c:forEach items="${FAQ}" var="row" >
							<tr>
								<details>
								<summary><b>&nbsp;${row.faqTitle}</b></summary>
								<pre class="FAQ-container"><b>&nbsp;&nbsp;&nbsp;-&nbsp;${row.faqContent}</b></pre>
									<sec:authorize access="hasAnyRole('ROLE_ADMIN')">
										<button type="button" class="btn btn-sm btn-primary" id="btnUpdate" 
												onclick="fn_updateFAQ(<c:out value="${row.faqId}"/>)">수정</button>
									</sec:authorize>
								</details>
							</tr>
						</c:forEach>
					</c:when>
				</c:choose>
			</div>
			<div>
				<sec:authorize access="hasAnyRole('ROLE_ADMIN')">
					<button type="button" class="btn btn-sm btn-primary" id="btnInsert">등록</button>
				</sec:authorize>
			</div>
		</article>
		<article>
			<img src="${pageContext.request.contextPath}/static/img/FAQ.jpg"/>
		</article>
	</div>
			<%@ include file="../home/footer.jsp"%>
</body>
</html>