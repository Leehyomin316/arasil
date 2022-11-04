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
	href="${pageContext.request.contextPath}/static/css/noticeBoard/noticeContent.css"
	rel="stylesheet"></link>
<link href="${pageContext.request.contextPath}/static/css/header.css" rel="stylesheet"></link>	
<script src="${pageContext.request.contextPath}/static/js/header.js"></script>	
<!-- <script>
/* 	$(function() {
		$("#btnList").on("click",function() {
		location.href = "${pageContext.request.contextPath}/board/noticePage";
		});
		
		const updateBtn = document.querySelector("#btnUpdate");
		const formObj = document.querySelector("#form");
		updateBtn.addEventListener("click", function(){
			formObj.submit();
		});
		
	}); */
// 		const delete = document.querySelector("#btnDelete");
//		$("#btnDelete").on("click", function(){
//		});
//		delete.addEventListener("click", function(){
//		});
</script> -->
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
	<%-- <article>
	<header class="title">
			<h1>공지사항 상세보기</h1>
	</header>
		<div class="container" role="main">
			<form name="form" id="form" role="form" method="post"
				action="${pageContext.request.contextPath}/board/updateNotice"
				action="${pageContext.request.contextPath}/board/deleteNotice"
				>
				<div class="mb-3">
					<label for="noticetitle">제목</label> <input type="text"
						class="form-control" name="noticeTitle" id="noticeTitle" value="${notice.noticeTitle}"
						placeholder="제목을 입력해 주세요" >
				</div>
				<div class="mb-3">
					<label for="noticeContent">내용</label>
					<textarea class="form-control" rows="5" name="noticeContent"  id="noticeContent"
						placeholder="내용을 입력해 주세요">${notice.noticeContent}</textarea>
				</div>
				<input type="hidden" value="admin" name="userId"/>
				<input type="hidden" name="noticeId" value="${notice.noticeId}"/>				
				<div>
					<sec:authorize access="hasAnyRole('ROLE_ADMIN')">
						<button type="button" class="btn btn-sm btn-primary" id="btnUpdate">수정</button>
						<button type="button" class="btn btn-sm btn-primary" id="btnDelete">삭제</button>
					</sec:authorize>			
					<button type="button" class="btn btn-sm btn-primary" id="btnList">목록</button>
				</div>
			</form>
		</div>
	</article> --%>
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
						<label type="text" class="form-control" rows="5" name="noticeContent"
							id="noticeContent" readonly>${notice.noticeContent}</label>
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
		</div>
	</article>
	</div>
	<%@ include file="../home/footer.jsp"%>
</body>
</html>
<!-- 
<script>
	$(function() {
		$("#btnList").on("click",function() {
		location.href = "${pageContext.request.contextPath}/board/noticePage";
		});
		$("#btnUpdate").on("click", function(){
			var url = "${pageContext.request.contextPath}/board/editForm";
			url = url + "?noticeId=" +${pageContent.noticeId};
			url = url + "&mode=edit";
			
			location.href = url;
		});
		
		$("#btnDelete").on("click",function(){
			var url = "${pageContext.request.contextPath}/board/deleteBoard";
			url = url + "?noticeId=" + ${pageContent.noticeId};
			location.href = url;
		});
	});
</script>
</head>

<body>
	<article>
		<div class="container" role="main">
			<h2>게시글 내용</h2>
				<div class="bg-white rounded shadow-sm">
					<div class="noticeTitle">
						<c:out value="${pageContent.noticeTitle }" />
					</div>
					<div class="notice_info_box">
						<span class="notice_author">
								<c:out value="${pageContent.userId}" /></span>
						<span class="noticeDate">
								<c:out value="${pageContent.noticeDate}" /></span>
					</div>
					<div class="notice_content">${pageContent.noticeContent }</div>
				</div>

			</div>

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
