<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.scci.vo.NoticeVO"%>


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
<link rel="icon" type="image/x-icon"
	href="${pageContext.request.contextPath}/static/img/favicon.ico" />

<script>
	$(function() {
		$("#btnList").on("click",function() {
		location.href = "${pageContext.request.contextPath}/board/noticePage";
		});
	});
</script>
</head>

<body>
	<article>
		<div class="container" role="main">
			<h2>게시글 내용</h2>
			<div class="bg-white rounded shadow-sm">
				<div class ="noticeTitle">
					<label>제목</label>
				</div>
				<div>
				<input name="title" readonly="readonly" value = '<c:out value="${pageContent.noticeTitle }"/>'>
				</div>
				<div>
				<lable>내용</lable>
				</div>
				<div>
				<input name="content" readonly="readonly" value = '<c:out value = "${pageContent.noticeContent }"/>'>
				</div>
				<div>
				<label>작성자 : </label><c:out value = "${pageContent.userId }"/>
				</div>
				<div>
				<label>작성날짜 : </label><c:out value = "${pageContent.noticeDate }"/>
				</div>
			</div>
			
			<div style="margin-top: 20px">
				<button type="button" class="btn btn-sm btn-primary" id="btnUpdate">수정</button>
				<button type="button" class="btn btn-sm btn-primary" id="btnDelete">삭제</button>
				<button type="button" class="btn btn-sm btn-primary" id="btnList">목록</button>
			</div>
		</div>
	</article>
</body>
</html>