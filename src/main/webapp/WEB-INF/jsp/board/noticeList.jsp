<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>


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
	href="${pageContext.request.contextPath}/static/css/noticeBoard/noticeList.css"
	rel="stylesheet"></link>
<link rel="icon" type="image/x-icon"
	href="${pageContext.request.contextPath}/static/img/favicon.ico" />


<script>
	$(function(){
		$("#btnWriteForm").on("click", function(){
			location.href="${pageContext.request.contextPath}/board/noticeForm";
		});
	});
	</script>
<script>
	function fn_contentView(noticeId){
		var url = "${pageContext.request.contextPath}/board/noticeContent";
		url = url + "?noticeId="+noticeId;
		location.href= url;
	}
	</script>
</head>
<body>
	<%@ include file="../home/header.jsp"%>
	<div class="main-content">
		<article>
			<div class="container">
				<form action="noticePage" method="get">
					<div
						class="row d-flex justify-content-center align-items-center searchBar">
						<div class="col-md-8">
							<div class="search">
								<i class="fa fa-search"></i> <input type="text"
									class="form-control" name="noticeTitle"
									value="${noticeVO.noticeTitle}" placeholder="검색어를 입력하세요.">
								<button class="btn btn-primary">Search</button>
							</div>
						</div>
					</div>
				</form>
			</div>
			<div class="login">
				<sec:authorize access="isAnonymous()">
					<a class="login" href="${pageContext.request.contextPath}/login">관리자 로그인</a>
				</sec:authorize>
				<sec:authorize access="isAuthenticated()">
					<span><sec:authentication property="principal.username" />님 반갑니다.</span>
					<a class="login" href="${pageContext.request.contextPath}/logout">로그아웃</a>
				</sec:authorize>
			</div>
			<div class="container">
				<div class="row mb-5">
					<c:choose>
						<c:when test="${empty notice}">
							<tr>
								<td colspan="5" align="center">데이터가 없습니다</td>
							</tr>
						</c:when>
						<c:when test="${!empty notice}">
							<c:forEach var="row" items="${notice}">
								<div class="col-md-4 mb-5">
									<div class="card bg-danger bg-gradient mb-3 text-center">
										<div class="card-body">
											<blockquote class="blockquote">
												<p>
													<c:out value="${row.noticeContent}" />
												</p>
												<footer>
													<a href="#"
														onClick="fn_contentView(<c:out value="${row.noticeId}"/>)">
														<c:out value="${row.noticeTitle}" />
													</a>
												</footer>
											</blockquote>
										</div>
									</div>
								</div>
							</c:forEach>
						</c:when>
					</c:choose>
				</div>
			</div>
			<div>
				<sec:authorize access="hasAnyRole('ROLE_ADMIN')">
	                <ul class="navbar-nav ml-auto ul-margin">
	                    <li class="nav-item active"><a class="nav-link">관리자메뉴</a>
	                    	<ul class="underline">
	                    		<li class="sub-menu"><a class="nav-link" href="${pageContext.request.contextPath}/board/noticeForm">공지사항등록</a></li>
	                    	</ul>
	                    </li>
	                </ul>
				</sec:authorize>   
			</div>
		</article>
	</div>
	<%@ include file="../home/footer.jsp"%>
</body>
<script
	src="${pageContext.request.contextPath}/static/js/noticeBoard/noticeList.js"></script>
</html>