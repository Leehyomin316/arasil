<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<link
	href="${pageContext.request.contextPath}/static/css/noticeBoard/boardFAQInsert.css"
	rel="stylesheet"></link>
<script src="${pageContext.request.contextPath}/static/js/header.js"></script>		
<script>
	$(function() {
		$("#btnList").on("click", function() {
			location.href = "${pageContext.request.contextPath}/board/boardFAQ";
		});
	});
</script>
</head>
<body>
	<%@ include file="../home/header.jsp"%>
	<div class="main-content">
	<header class="title">
		<h1>FAQ 등록</h1>
	</header>
		<article>
			<div class="container" role="main">
				<form name="form" id="form" role="form" method="post"
					action="${pageContext.request.contextPath}/board/boardFaqSave">
					<div class="mb-3">
						<label for="faqTitle">제목</label> <input type="text"
							class="form-control" name="faqTitle" id="faqTitle" value="${updateFAQ.faqTitle}"
							placeholder="제목을 입력해 주세요" required>
					</div>
					<div class="mb-3">
						<label for="faq_content">내용</label>
						<textarea class="form-control" rows="5" name="faqContent"
							id="faq_content" placeholder="내용을 입력해 주세요" required></textarea>
					</div>
					<input type="hidden" value="admin" name="userId" />
					<div>
						<button type="submit" class="btn btn-sm btn-primary" id="btnSave">저장</button>
						<button type="button" class="btn btn-sm btn-primary" id="btnList">목록</button>
					</div>
				</form>
			</div>
		</article>
	</div>
	<%@ include file="../home/footer.jsp"%>
</body>
</html>