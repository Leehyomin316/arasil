<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page session="true"%>
<!DOCTYPE html>
<html>
<head>
<script	src="${pageContext.request.contextPath}/static/jQuery/jquery-3.6.0.min.js"></script>
<link href="${pageContext.request.contextPath}/static/bootstrap/css/bootstrap.css" rel="stylesheet"></link>
<title>Login Page</title>
</head>
<body>
<div>
	<section class="vh-100" style="background-color: rgba(254,254,254,0.8);">
	  <div class="container py-5 h-100">
	    <div class="row d-flex justify-content-center align-items-center h-100">
	      <div class="col col-xl-10">
	        <div class="card" style="border-radius: 1rem;">
	          <div class="row g-0">
	            <div class="col-md-6 col-lg-5 d-none d-md-block">
	              <img src="${pageContext.request.contextPath}/static/img/login01.jpg"
	                alt="login form" class="img-fluid" style="border-radius: 1rem 0 0 1rem;" />
	            </div>
	            <div class="col-md-6 col-lg-7 d-flex align-items-center">
	              <div class="card-body p-4 p-lg-5 text-black">
	
					<form name='loginForm' action="<c:url value='/j_spring_security_check' />" method='POST'>
	                  <div class="d-flex align-items-center mb-3 pb-1">
	                    <i class="fas fa-cubes fa-2x me-3" style="color: #ff6219;"></i>
	                    <span class="h1 fw-bold mb-0">관리자 로그인</span>
	                  </div>
	
	                  <h5 class="fw-normal mb-3 pb-3" style="letter-spacing: 1px;">관리자용 입니다</h5>
	
	                  <div class="form-outline mb-4">
	                    <input name="username" type="text" id="form2Example17" class="form-control form-control-lg" />
	                    <label class="form-label" for="form2Example17">ID</label>
	                  </div>
	
	                  <div class="form-outline mb-4">
	                    <input name="password" type="password" id="form2Example27" class="form-control form-control-lg" />
	                    <label class="form-label" for="form2Example27">PASSWORD</label>
	                  </div>
	
	                  <div class="pt-1 mb-4">
	                    <button class="btn btn-dark btn-lg btn-block" type="submit">Login</button>
	                  </div>
	
	                  <a class="small text-muted" href="#!">비밀번호 찾기</a>
<!-- 	                  <p class="mb-5 pb-lg-2" style="color: #393f81;">Don't have an account? <a href="#!" -->
<!-- 	                      style="color: #393f81;">Register here</a></p> -->
<!-- 	                  <a href="#!" class="small text-muted">이용약관</a> -->
<!-- 	                  <a href="#!" class="small text-muted">개인 정보 정책</a> -->
	                  <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
	                </form>
	
	              </div>
	            </div>
	          </div>
	        </div>
	      </div>
	    </div>
	  </div>
	</section>
</div>
</body>
</html>