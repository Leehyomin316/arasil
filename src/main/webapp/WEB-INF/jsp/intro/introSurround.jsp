<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>아라실에 오신걸 환영합니다</title>
<script
	src="${pageContext.request.contextPath}/static/jQuery/jquery-3.6.0.min.js"></script>
<script
	src="${pageContext.request.contextPath}/static/bootstrap/js/bootstrap.min.js"></script>
<link
	href="${pageContext.request.contextPath}/static/css/intro/introSurround.css"
	rel="stylesheet"></link>
<link
	href='${pageContext.request.contextPath}/static/bootstrap/css/bootstrap.css'
	rel='stylesheet' type='text/css'>
<link href="${pageContext.request.contextPath}/static/css/header.css" rel="stylesheet"></link>	
<style>
@import
	url('https://fonts.googleapis.com/css2?family=IBM+Plex+Sans+KR:wght@400;500&display=swap')
	;
</style>
</head>
<body>
	<%@ include file="../home/header.jsp"%>
	<div class="main-content">
		<main>
			<header class="title">
				<h1>주변소개</h1>
			</header>
			<figure class="surroundContent">
				<br>
				<h3 class="hTitle">보성 관광지</h3>
				<div class="first-surround">
					<figure class="surround-content">
						<div class="surround-img">
							<img
								src="${pageContext.request.contextPath}/static/img/BoSeong01.jpg">
						</div>
						<div class="surround-text">
							<h3>보성 차밭</h3>
							<h4>녹차향 가득한 보성차밭</h4>
							<span class="line"></span>
							<p>
								보성은 원래부터 한국차의 명산지로 알려져 있는 곳이다. 한반도 끝자락에 위치해 있어 바다와 가깝고, 기온이
								온화하면서 습도와 온도가 차 재배에 아주 적당한 조건을 갖추고 있다. 대한다업관광농원이 이곳에 차재배를 시작한 것은
								1957년부터였다. 국내에서 가장 오래된 차재배지라 할 수 있다. <br> 제주도를 제외하고는 내륙에서
								가장 큰 규모이고, 차의 품격도 국내 제일을 자랑한다.
							</p>
						</div>
					</figure>
					<figure class="surround-content">
						<div class="surround-img">
							<img
								src="${pageContext.request.contextPath}/static/img/BoSeong02.jpg">
						</div>
						<div class="surround-text">
							<h3>율포해수욕장</h3>
							<h4>전국 유일의 녹차와 바다의 천혜 대자연의 조화</h4>
							<span class="line"></span>
							<p>
								호수처럼 잔잔한 득량만이 안겨준 고운 온빛 모래와 해송의 어우러짐이 아름다운 해변으로 수심이 깊지 않아 해수욕에
								편안하다. 그래서 사철 발길이 끊이지 않는 명소, 아름다운 노을, 바지락과 새조개를 잡을 수 있는 모래개펄, 이웃한
								식당들의 넉넉한 인심을 쉽게 만날 수 있다. <br> 바다는 언제나 잔잔한 수면에 길손의 정다운 얼굴을
								비춰주고, 사철 청정한 바다에서는 싱싱한 어패류(해산물)를 만날 수 있다.
							</p>
						</div>
					</figure>
					<figure class="surround-content">
						<div class="surround-img">
							<img
								src="${pageContext.request.contextPath}/static/img/BoSeong03.jpg">
						</div>
						<div class="surround-text">
							<h3>비봉공룡공원</h3>
							<h4>녹차 수도 보성에서 만나는 공룡 화석</h4>
							<span class="line"></span>
							<p>보성군 득량면 비봉리의 공룡알 화석지는 지난 2000년 4월 24일 대한민국 문화재청에 의하여 천연기념물
								제 418호 및 문화재 보호구역으로 지정된 곳이다. 이 공룡알 화석지는 세계가 주목하는 우리나라 최대의 공룡알둥지가
								발견된 곳으로 학계에 보고되고 있고 공룡알 화석지에 대한 관광객의 편의도모를 위해 이곳에 2007년에 소규모
								야외전시장 및 관찰데크를 건설하여 현장 학습장으로 활용하고 있다. 화석지는 비봉공룡공원에서 1km 떨어진곳에 있다.</p>
						</div>
					</figure>
					<figure class="surround-content">
						<div class="surround-img">
							<img
								src="${pageContext.request.contextPath}/static/img/BoSeong04.jpg">
						</div>
						<div class="surround-text">
							<h3>한국차 박물관</h3>
							<h4>한국차의 모든것을 한눈에 보자</h4>
							<span class="line"></span>
							<p>
								차박물관 1층에 차를 이해할 수 있는 차 문화실, 2층 차의 발자취를 한눈에 알 수 있는 시대별 차 도수 전시실인
								차 역사실, <br> 3층에 체험공간인 차 생활실로 구성하여 차의 모든 것을 배우고 체험할 수 있는 교육의
								장으로 보성차와 더불어 한국차에 대한 모든 것을 함께 나눌 수 있는 차 문화 교류의 공간이다.
							</p>
						</div>
					</figure>
					<figure class="surround-content">
						<div class="surround-img">
							<img
								src="${pageContext.request.contextPath}/static/img/BoSeong05.JPG">
						</div>
						<div class="surround-text">
							<h3>태백산맥 문화관</h3>
							<h4>소설 「태백산맥」의 작가 조정래의 문학세계를 한눈에 보다</h4>
							<span class="line"></span>
							<p>
								건축가 김원씨는 소설 「태백산맥」을 통해 어둠에 묻혀버린 우리의 현대사를 보며, 동굴과 굿판을 건물 안으로
								끌어들인다는 생각으로 자연스럽고 절제된 건축양식에 한 발 물러선 듯한 모습으로 문학관을 시각화 시켰다. 그런
								이유에서 문학관은 깊이 10m 아래에 자리잡았고, 전시실에서 관람객이 마주하게 될 일랑 이종상 화백의 벽화는 높이
								8m, 폭 81m에 이른다. <br> 또한 해방 후 부터 6·25를 거친 민족 분단까지 '민족사의
								매몰시대'를 벽 없이 공중에 떠 있는 2층 전시실에 반영했다. <br> 어둠의 터널을 지나 옥상으로 가면
								18m의 유리탑이 새 희망을 상징하듯 솟아 있다.
							</p>
						</div>
					</figure>
				</div>
				<br><br><br>
				<h3 class="hTitle">장흥 관광지</h3><br>
				<div class="second-surround">
					<figure class="surround-content">
						<div class="surround-img">
							<img
								src="${pageContext.request.contextPath}/static/img/JangHeung01.JPG">
						</div>
						<div class="surround-text">
							<h3>편백숲 우드랜드</h3>
							<h4>피톤치드와 음이온을 가장 많이 내뿜는 100ha 편백나무 숲</h4>
							<span class="line"></span>
							<p>장흥군 장흥읍 억불산 자락 100ha에 40년생 이상의 아름드리 편백나무 숲 속에 위치한 억불산 편백숲
								우드랜드는 목재문화체험관, 목공 및 생태건축 체험장, 숲 치유의 장, 산야초 단지, 말레길 등이 조성되어 있다.
								목재문화체험관에는 전시와 체험공간으로 구성되어 있는데 전시관에는 숲과 나무에 관한 내용을 체험관에는 목재문화 전반에
								관한 내용을 체험할 수 있도록 꾸며져 있다.</p>
						</div>
					</figure>
					<figure class="surround-content">
						<div class="surround-img">
							<img
								src="${pageContext.request.contextPath}/static/img/JangHeung02.jpg">
						</div>
						<div class="surround-text">
							<h3>천관산</h3>
							<h4>호남 5대 명산 중 하나 천자의 면류관</h4>
							<span class="line"></span>
							<p>
								호남5대명산 중 하나로 천관산은 다양한 모양으로 솟아 있는 기암괴석이 마치 주옥으로 장식된 천자의 면류관 같다하여
								붙여진 이름이다. 관산읍과 대덕읍 경계에 있는 723m의 산으로 높지는 않지만 온 산이 바위로 이루어져 봉우리마다
								하늘을 찌를듯 솟아있어 웅장함을 더한다.<br> 산을 오르면 남해안 다도해가 한폭의 동양화 처럼 펼쳐지고
								계절마다 다양한 아름다운 모습을 가지고 있다. 봄에는 싱그러운 푸른 잎과 붉은 동백숲, 가을에는 드넓은 억새밭이
								특히 아름답다.
							</p>
						</div>
					</figure>
					<figure class="surround-content">
						<div class="surround-img">
							<img
								src="${pageContext.request.contextPath}/static/img/JangHeung03.JPG">
						</div>
						<div class="surround-text">
							<h3>소등섬</h3>
							<h4>소중한 염원이 담긴 작은 섬 일출이 아름다운 명소</h4>
							<span class="line"></span>
							<p>
								소등섬은 남포마을 앞에 떠있는 작은 무인도이다. 먼 바다에 고기잡이를 나간 남편이나 가족들을 위해 호롱불을 켜놓고
								그 불빛을 보고 무사히 귀환하기를 빌었다하여 소등섬이라 불린다고 한다. <br> 이 섬을 보호하고 연인들의
								간절한 소원을 들어주기 위하여 바다의 용이 승천하지 않고 섬 주변을 휘감고 영원히 머물고 있다는 전설이 전해진다.
								소등섬은 사진 찍기 좋아하는 사람들에게는 잘알려진 일출 명소이며 득량만의 떠오르는 해나, 지는 해와 같이 어우러졌을
								때 특유의 아름다움이 있다.
							</p>
						</div>
					</figure>
					<figure class="surround-content">
						<div class="surround-img">
							<img
								src="${pageContext.request.contextPath}/static/img/JangHeung04.JPG">
						</div>
						<div class="surround-text">
							<h3>정남진 전망대</h3>
							<h4>그림을 그린 듯한 하늘과 탁트인 바다 광화문에서 정남쪽</h4>
							<span class="line"></span>
							<p>
								서울 광화문을 기점으로 위도상 정동쪽에 정동진이 있고 경도상 정남쪽에 정남진 장흥이 있다. <br>
								전망대에서 바라보면 먼바다의 섬들을 내려다 볼 수 있는데 득량만 일대와 고흥 소록도, 거금대교, 완도, 금일도 등
								수많은 섬들을 한눈에 볼 수 있는 명소이다. 푸르른 에메랄드빛 남해바다와 그림을 그린듯한 하늘, 저 멀리 서있는
								웅장한 천관산! 한폭의 그림이 아닐수 없다.
							</p>
						</div>
					</figure>
					<figure class="surround-content">
						<div class="surround-img">
							<img
								src="${pageContext.request.contextPath}/static/img/JangHeung05.JPG">
						</div>
						<div class="surround-text">
							<h3>정남진 토요시장</h3>
							<h4>매주 토요일 열리는 신명나는 축제 전국 최최의 주말관광형 시장</h4>
							<span class="line"></span>
							<p>
								매주 토요일 장흥읍내 장터에서는 토요시장이 열리고 오전 10시면 신명나는 축제가 벌어진다. <br> 장흥의
								전통농악인 버꾸농악 공연과 각종 풍물놀이가 펼쳐지고 품바공연 같은 토속적인 분위기의 공연이 이어져 즐겁게 놀고,
								맛있게 먹고 좋은 것을 사는 실속 있는 장터 여행을 즐길 수 있다. <br> 토요시장은 2017~2018
								한국관광 100선에 선정되기도 한 단순한 시장이 아닌 꼭 가봐야할 명소이다.
							</p>
						</div>
					</figure>
				</div>
			</figure>
		</main>
	</div>
	<%@ include file="../home/footer.jsp"%>
</body>
</html>