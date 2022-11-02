<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 
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
<script src="${pageContext.request.contextPath}/static/js/header.js"></script>		
<!-- <script>
	$(function() {
		$("#btnList").on("click", function() {
			location.href = "${pageContext.request.contextPath}/board/noticePage";
		});
	});
</script> -->
<script>
		$(function(){
			$("#btnSave").on("click", function(){
				$("#form").submit();
			});
			$("#btnList").on("click", function(){
				location.href="${pageContext.request.contextPath}/board/noticePage";
			});
			
		});
</script>
<script>	
		$(document).ready(function(){
			var mode = '<c:out value="${mode}"/>';
			if( mode == 'edit'){
				// 입력 셋팅
				$("input:hidden[name='noticeId']").val(<c:out value="${notice.noticeId}"/>);
				$("input:hidden[name='mode']").val('<c:out value ="${mode}"/>');
				$("#userId").val('<c:out value ="${notice.userId}"/>');
				$("#noticeTitle").val('<c:out value ="${notice.noticeTitle}"/>');
				$("#noticeContent").val('<c:out value="${notice.noticeContent}"/>');
			}
		});
</script>
</head>
<body>
	<%@ include file="../home/header.jsp"%>
	<div class="main-content">
	<header class="title">
		<h1>공지사항 글쓰기</h1>
	</header>
		<article>
			<div class="container">
				<form:form name="form" id="form" role="form" modelAttribute="NoticeVO" method="post"
					action="${pageContext.request.contextPath}/board/saveBoard">
					<form:hidden path="noticeId" />
					<input type="hidden" name="mode" />
					<div class="mb-3">
						<label for="noticeTitle">제목</label>
						<form:input path="noticeTitle" class="form-control"
							id="noticeTitle" placeholder="제목을 입력해 주세요" />
					</div>
					<div class="mb-3">
						<label for="noticeContent">내용</label>
						<form:textarea path="noticeContent" class="form-control" rows="5"
							id="noticeContent" placeholder="내용을 입력해 주세요" />
					</div>
					<input type="hidden" value="admin" name="userId" />
				</form:form>
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
		<%-- <article>
			<div class="container" role="main">
				<form name="form" id="form" role="form" method="post" 
					action="${pageContext.request.contextPath}/board/saveBoard">
					<div class="mb-3">
						<label for="noticetitle">제목</label> <input type="text"
							class="form-control" name="noticeTitle" id="noticeTitle"
							placeholder="제목을 입력해 주세요" required>
					</div>
					<div class="mb-3">
						<label for="noticeContent">내용</label>
						<textarea class="form-control" rows="5" name="noticeContent"
							id="noticeContent" placeholder="내용을 입력해 주세요" required></textarea>
					</div>
					<input type="hidden" value="admin" name="userId" />
					<div>
						<button type="submit" class="btn btn-sm btn-primary" id="btnSave">저장</button>
						<button type="button" class="btn btn-sm btn-primary" id="btnList">목록</button>
					</div>
				</form>
			</div>
		</article> --%>

<!-- 
<script>
		$(function(){
			$("#btnSave").on("click", function(){
				$("#form").submit();
			});
			$("#btnList").on("click", function(){
				location.href="${pageContext.request.contextPath}/board/noticePage";
			});
		});
</script>
<script>	
		$(document).ready(function(){
			var mode = '<c:out value="${mode}"/>';
			if( mode == 'edit'){
				// 입력 셋팅
				$(#user_id).prop('readonly',true);
				$("input:hidden[name='notice_id']").val(<c:out value="${notice.noticeId}"/>);
				$("input:hidden[name='mode']").val('<c:out value ="${mode}"/>');
				$("#user_id").val('<c:out value ="${notice.userId}"/>');
				$("#notice_title").val('c:out value ="${notice.noticeTitle}"/>');
				$("#notice_content").val('c:out value="${notice.noticeContent}"/>');
			}
		});
</script>
</head>
<body>
	<article>
		<div class="container" role="main">
			<h2>공지사항 글쓰기</h2>
			<form:form name="form" id="form" role="form" modelAttribute="NoticeVO" method="post"
				action="${pageContext.request.contextPath}/board/saveBoard">
				<form:hidden path="noticeId" />
				<input type="hidden" name="mode" />


				<div class="mb-3">
					<label for="notice_title">제목</label>
					<form:input path="noticeTitle" class="form-control"
						id="notice_title" placeholder="제목을 입력해 주세요" />
				</div>
				<div class="mb-3">
					<label for="notice_content">내용</label>
					<form:textarea path="noticeContent" class="form-control" rows="5"
						id="noticeContent" placeholder="내용을 입력해 주세요" />
				</div>
				<input type="hidden" value="admin" name="userId" />
			</form:form>
			<div>
				<button type="button" class="btn btn-sm btn-primary" id="btnSave">저장</button>
				<button type="button" class="btn btn-sm btn-primary" id="btnList">목록</button>
			</div>
		</div>
	</article>
</body>
</html>
 -->