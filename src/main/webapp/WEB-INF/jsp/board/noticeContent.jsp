<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.scci.vo.NoticeVO"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>


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
		
		const updateBtn = document.querySelector("#btnUpdate");
		const formObj = document.querySelector("#form");
		updateBtn.addEventListener("click", function(){
			formObj.submit();
		});
	});
</script>
</head>

<body>
	<article>
		<div class="container" role="main">
			<h2>공지사항 상세보기</h2>
			<form name="form" id="form" role="form" method="post"
				action="${pageContext.request.contextPath}/board/updateNotice">
				<div class="mb-3">
					<label for="noticetitle">제목</label> <input type="text"
						class="form-control" name="noticeTitle" id="noticeTitle" value="${notice.noticeTitle}"
						placeholder="제목을 입력해 주세요">
				</div>
				<div class="mb-3">
					<label for="noticeContent">내용</label>
					<textarea class="form-control" rows="5" name="noticeContent"  id="noticeContent"
						placeholder="내용을 입력해 주세요">${notice.noticeContent}</textarea>
				</div>
				<input type="hidden" value="admin" name="userId"/>
				<input type="hidden" name="noticeId" value="${notice.noticeId}"/>				
			</form>
			<div>
				<sec:authorize access="hasAnyRole('ROLE_ADMIN')">
					<button type="button" class="btn btn-sm btn-primary" id="btnUpdate">수정</button>
					<button type="button" class="btn btn-sm btn-primary" id="btnDelete">삭제</button>
				</sec:authorize>			
				<button type="button" class="btn btn-sm btn-primary" id="btnList">목록</button>
			</div>
		</div>
	</article>
</body>
</html>