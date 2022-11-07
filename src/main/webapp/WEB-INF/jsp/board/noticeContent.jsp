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
<link
	href="${pageContext.request.contextPath}/static/css/noticeBoard/noticeFAQ.css"
	rel="stylesheet"></link>
<link href="${pageContext.request.contextPath}/static/css/header.css" rel="stylesheet"></link>	
<script src="${pageContext.request.contextPath}/static/js/header.js"></script>	
<script>
	$(function() {
		$("#btnList").on("click",function() {
		location.href = "${pageContext.request.contextPath}/board/noticePage";
		});
		$("#btnUpdate").on("click", function(){
			var url = "${pageContext.request.contextPath}/board/editForm";
			url = url + "?noticeId=" +${notice.noticeId};
			url = url + "&mode=edit";
			
			location.href = url;
		});
		
		$("#btnDelete").on("click",function(){
			var url = "${pageContext.request.contextPath}/board/deleteBoard";
			url = url + "?noticeId=" + ${notice.noticeId};
			location.href = url;
		});
	});
</script>
</head>
<body>
	<%@ include file="../home/header.jsp"%>
	<div class="main-content">
	<article>
		<div class="container" role="main">
		<header class ="title">
			<h1>게시글 내용</h1>
		</header>
				<div class="bg-white rounded shadow-sm">
					<div class="noticeTitle">
					<label for="faqTitle">제목</label> <input type="text"
							class="form-control" name="noticeTitle" id="noticeTitle" value="${notice.noticeTitle}"
							placeholder="제목을 입력해 주세요" readonly>
						<%-- <label>제목 : </label>
						<c:out value="${notice.noticeTitle }" /> --%>
					</div>
					<div class="mb-3">
						<label for="notice_content">내용</label>
						<textarea type="text" class="form-control" rows="5" name="noticeContent"
							id="noticeContent" readonly>${notice.noticeContent}</textarea>
					</div>
				</div>

			</div>
			<div>
				<sec:authorize access="hasAnyRole('ROLE_ADMIN')">
					<button type="button" class="btn btn-sm btn-primary" id="btnUpdate">수정</button>
					<button type="button" class="btn btn-sm btn-primary" id="btnDelete">삭제</button>
				</sec:authorize>
				<button type="button" class="btn btn-sm btn-primary" id="btnList">목록</button>
			</div>
		</article>
		</div>
	<%@ include file="../home/footer.jsp"%>
</body>
</html>