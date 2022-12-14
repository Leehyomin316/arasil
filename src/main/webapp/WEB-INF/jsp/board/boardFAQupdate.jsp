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
	href="${pageContext.request.contextPath}/static/css/noticeBoard/boardFAQupdate.css"
	rel="stylesheet"></link>
<link href="${pageContext.request.contextPath}/static/css/header.css" rel="stylesheet"></link>	
<script src="${pageContext.request.contextPath}/static/js/header.js"></script>		
<script>
	$(function() {
		$("#btnList").on("click", function() {
			location.href = "${pageContext.request.contextPath}/board/boardFAQ";
		});
		
// 		const saveBtn = document.querySelector("#btnSave");
// 		const formObj = document.querySelector("#form");
// 		saveBtn.addEventListener("click", function(){
// 			formObj.submit();
// 		});
	});
</script>
<script>
	$(function() {
		const saveBtn = document.querySelector("#btnSave");
		const formObj = document.querySelector("#form");
		saveBtn.addEventListener("click", function(){
			if(!confirm('저장하시겠습니까?')){
				return false;
			}
			formObj.submit();
		});
	});
</script>
<script>
	$(function() {
		const form = document.getElementById("form");
		const deleteUrl = "${pageContext.request.contextPath}/board/deleteFAQ";
		$("#btnDelete").on("click",function(){
			if(!confirm('삭제하시겠습니까?')){
				return false;
			}
			form.action = deleteUrl;
			form.submit();
		});
	});
</script>

</head>
<body>
	<%@ include file="../home/header.jsp"%>
	<div class="main-content">
	<header class="title">
		<h1>FAQ 수정</h1>
	</header>
		<article>
			<div class="container" role="main">
			<form name="form" id="form" role="form" method="post"
				action="${pageContext.request.contextPath}/board/updateFAQ">
					<div class="mb-3">
						<label for="faqTitle"><b>제목</b></label>
						<input type="text" class="form-control" name="faqTitle" id="faq_title"
							value="${boardFAQupdate.faqTitle}" placeholder="제목을 입력해 주세요" required>
					</div>
					<div class="mb-3">
						<label for="faqContent"><b>내용</b></label>
						<textarea class="form-control" rows="5" name="faqContent"
							id="faq_content" placeholder="내용을 입력해 주세요" required>${boardFAQupdate.faqContent}</textarea>
					</div>
						<input type="hidden" value="admin" name="userId" />
						<input type="hidden" name="faqId" value="<c:out value="${boardFAQupdate.faqId}"></c:out>"/>	
					<div>
						<button type="button" class="btn btn-sm btn-primary" id="btnSave">저장</button>
						<button type="button" class="btn btn-sm btn-primary" id="btnDelete">삭제</button>
						<button type="button" class="btn btn-sm btn-primary" id="btnList">목록</button>
					</div>
				</form>
			</div>
		</article>
	</div>
	<%@ include file="../home/footer.jsp"%>
</body>
</html>