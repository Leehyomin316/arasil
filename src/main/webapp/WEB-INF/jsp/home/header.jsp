<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Menu</title>
<link href="${pageContext.request.contextPath}/static/css/header.css" rel="stylesheet"></link>
<script src="${pageContext.request.contextPath}/static/js/shareing.js"></script>
<link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/static/img/favicon.ico" />
<script src="https://kit.fontawesome.com/5c8c9f57c5.js" crossorigin="anonymous"></script>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-basy fixed-top">
        <div class="container px-4 px-lg-5">
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
            <a class="navbar-brand" href="${pageContext.request.contextPath}/"><img src="<c:url value='/static/img/icon02.png'/>" id="icon"/></a>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav ml-auto ul-top">
			   		<sec:authorize access="isAnonymous()">
						<li class="nav-item active">
						<a class="login" href="${pageContext.request.contextPath}/login"><i class="fa-solid fa-right-to-bracket"></i></a>
						</li>
					</sec:authorize>
					<sec:authorize access="isAuthenticated()">
						<li class="nav-item active">
						<span><sec:authentication property="principal.username" />님 반갑니다.</span>
						</li>
						<li class="nav-item active">
						<a class="login" href="${pageContext.request.contextPath}/logout"><i class="fa-solid fa-right-from-bracket"></i></a>
						</li>
					</sec:authorize>
                </ul>
                <sec:authorize access="isAnonymous()">
                <ul class="navbar-nav ml-auto ul-margin">
                    <li class="nav-item active"><a class="nav-link">소개</a>
                    	<ul class="underline">
                    		<li class="sub-menu"><a class="nav-link" href="#!">공간소개</a></li>
                    		<li class="sub-menu"><a class="nav-link" href="#!">주변소개</a></li>
                   			<li class="sub-menu"><a class="nav-link" href="#!">찾아오시는길</a></li>
                    	</ul>
                    </li>
                </ul>
                <ul class="navbar-nav ml-auto ul-margin">
                    <li class="nav-item active"><a class="nav-link">예약</a>
                    	<ul class="underline">
                    		<li class="sub-menu"><a class="nav-link" href="#!">예약안내</a></li>
                    		<li class="sub-menu"><a class="nav-link" href="${pageContext.request.contextPath}/reservation/register">실시간예약</a></li>
                    		<li class="sub-menu"><a class="nav-link" href="${pageContext.request.contextPath}/reservation/roomSchedule">예약현황</a></li>
                   			<li class="sub-menu"><a class="nav-link" href="#!">예약조회/취소</a></li>
                    	</ul>
                    </li>
                </ul>
                <ul class="navbar-nav ml-auto ul-margin">
                    <li class="nav-item active"><a class="nav-link">게시판</a>
                    	<ul class="underline">
                    		<li class="sub-menu"><a class="nav-link" href="${pageContext.request.contextPath}/board/noticePage">공지사항</a></li>
                    		<li class="sub-menu"><a class="nav-link" href="#!">자주묻는 질문</a></li>
                   			<li class="sub-menu"><a class="nav-link" href="#!">이용수칙</a></li>
                    	</ul>
                    </li>
                </ul>
                <ul class="navbar-nav ml-auto ul-margin">
                    <li class="nav-item active"><a class="nav-link">기타</a>
                    	<ul class="underline">
                    		<li class="sub-menu"><a class="nav-link" href="https://blog.naver.com/wlsfhrytk">네이버 블로그</a></li>
                    		<li class="sub-menu"><a class="nav-link" href="https://www.instagram.com/arasil_pension/">인스타그램</a></li>
                   			<li class="sub-menu">
                   			<a id="btnTwitter" class="link-icon twitter nav-link" href="javascript:shareTwitter();">
                   			<img src="<c:url value='/static/img/icontwitter.png'/>" class="link-icon"/></a>
                   			<a id="btnFacebook" class="link-icon facebook nav-link" href="javascript:shareFacebook();">
                   			<img src="<c:url value='/static/img/iconfacebook.png'/>"class="link-icon"/></a></li>
                   			<li class="sub-menu"> </li>
                    	</ul>
                    </li>
                </ul>
                </sec:authorize>
                <sec:authorize access="hasAnyRole('ROLE_ADMIN')">
                <ul class="navbar-nav ml-auto ul-margin">
                    <li class="nav-item active"><a class="nav-link">관리자메뉴</a>
                    	<ul class="underline">
                    		<li class="sub-menu"><a class="nav-link" href="${pageContext.request.contextPath}/board/noticePage">공지사항</a></li>
                    		<li class="sub-menu"><a class="nav-link" href="${pageContext.request.contextPath}/reservation/roomSchedule">예약현황</a></li>
                    		<li class="sub-menu"><a class="nav-link" href="${pageContext.request.contextPath}/board/noticeForm">공지사항등록</a></li>
                    	</ul>
                    </li>
                </ul>
				</sec:authorize>             
            </div> 
        </div>
    </nav>
</body>
</html>
