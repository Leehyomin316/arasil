<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>아라실에 오신걸 환영합니다</title>
<link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/static/img/favicon.ico" />
</head>
<body>
	<!-- Navigation-->
	<%@ include file="home/header.jsp"%>
	<%-- 	<c:import url="header.jsp"></c:import> --%>
	<div class="main-content">
		<img src="<c:url value='/static/img/home2.jpg'/>" id="back-ground"/>
			
	    

		<section>
	       <div class="container px-4 px-lg-5">
	           <div class="row gx-4 gx-lg-5">
	               <div class="col-lg-6">
	                    <h1 class="mt-5">hello</h1>
	                   <p></p>
	               </div>
	           </div>
	       </div>
	    </section>

	</div>


    <%@ include file="home/footer.jsp"%>
</body>
</html>