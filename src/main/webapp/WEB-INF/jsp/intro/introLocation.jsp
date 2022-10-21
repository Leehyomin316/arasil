<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아라실 찾아오시는 길</title>
<script
	src="${pageContext.request.contextPath}/static/jQuery/jquery-3.6.0.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/header.js"></script>
<link
	href="${pageContext.request.contextPath}/static/css/intro/introLocation.css"
	rel="stylesheet"></link>
</head>
<body>
	<%@ include file="/WEB-INF/jsp/home/header.jsp"%>
	<div class="main-content">
		<div>
			<img src="${pageContext.request.contextPath}/static/img/introLocation.jpg" class="introbackground">
		</div>
		<div id="map" style="width: 80%; height: 450px;"></div>
		<div class="bus">
			<div><img src="${pageContext.request.contextPath}/static/img/bus.png"
				class="bus" /></div>
			<div><p>장흥시외버스터미널 : 장흥터미널-전일, 장흥터미널-수락, 장흥터미널-용곡</p></div>
		</div>
	</div>

	<%@ include file="/WEB-INF/jsp/home/footer.jsp"%>
	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=2763b9b327520dc81e3d716c3730366c"></script>
	<script>
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		mapOption = {
			center : new kakao.maps.LatLng(34.6373501, 127.0334672), // 지도의 중심좌표
			level : 3
		// 지도의 확대 레벨
		};

		var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

		// 마커가 표시될 위치입니다 
		var markerPosition = new kakao.maps.LatLng(34.6373501, 127.0334672);

		// 마커를 생성합니다
		var marker = new kakao.maps.Marker({
			position : markerPosition
		});

		// 마커가 지도 위에 표시되도록 설정합니다
		marker.setMap(map);

		// 아래 코드는 지도 위의 마커를 제거하는 코드입니다
		// marker.setMap(null);
	</script>
</body>
</html>