<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<script src="${pageContext.request.contextPath}/static/js/header.js"></script>		
<script>
	$(function() {
		$("#btnSave").on("click", function() {
			$("#form").submit();
		});
		$("#btnList")
				.on(
						"click",
						function() {
							location.href = "${pageContext.request.contextPath}/board/noticePage";
						});
	});
</script>
<style>
@media screen and (Min-width:800px){
	body {
		padding-top: 70px;
		padding-bottom: 30px;
	}
}
</style>
</head>
<body>
	<%@ include file="../home/header.jsp"%>
	<div class="main-content">
		<article>
			<div class="container" role="main">
				<h2>공지사항 글쓰기</h2>
				<form name="form" id="form" role="form" method="post"
					action="${pageContext.request.contextPath}/board/saveBoard">
					<div class="mb-3">
						<label for="noticetitle">제목</label> <input type="text"
							class="form-control" name="noticeTitle" id="noticeTitle"
							placeholder="제목을 입력해 주세요">
					</div>
					<div class="mb-3">
						<label for="noticeContent">내용</label>
						<textarea class="form-control" rows="5" name="noticeContent"
							id="noticeContent" placeholder="내용을 입력해 주세요"></textarea>
					</div>
					<input type="hidden" value="admin" name="userId" />
				</form>
				<div>
					<button type="button" class="btn btn-sm btn-primary" id="btnSave">저장</button>
					<button type="button" class="btn btn-sm btn-primary" id="btnList">목록</button>
				</div>
			</div>
		</article>
	</div>
	<%@ include file="../home/footer.jsp"%>
</body>
</html>