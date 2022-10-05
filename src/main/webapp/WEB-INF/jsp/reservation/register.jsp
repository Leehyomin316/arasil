<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<title>아라실에 오신걸 환영합니다</title>
	<script	src="${pageContext.request.contextPath}/static/jQuery/jquery-3.6.0.min.js"></script>
	<link href="${pageContext.request.contextPath}/static/css/reservation/register.css" rel="stylesheet"></link>
    <link href='${pageContext.request.contextPath}/static/bootstrap/css/bootstrap.css' rel='stylesheet' type='text/css'>
</head>
<body>
<%@ include file="../home/header.jsp"%>
<div class="main_content">
    <section class="select_date_container">
        <div class="sec_cal">
            <div class="cal_nav">
              <a href="javascript:;" class="nav-btn go-prev">prev</a>
              <div class="year-month"></div>
              <a href="javascript:;" class="nav-btn go-next">next</a>
            </div>
            <div class="cal_wrap">
                <div class="days">
                    <div class="day">MON</div>
                    <div class="day">TUE</div>
                    <div class="day">WED</div>
                    <div class="day">THU</div>
                    <div class="day">FRI</div>
                    <div class="day">SAT</div>
                    <div class="day">SUN</div>
                </div>
                <div class="dates"></div>
            </div>
        </div>
        <div class="usage_rules">
            <pre>■ 입실/퇴실 시간
ㅁ 입실시간 : 오후 2시 ~ 오후 10시
ㅁ 퇴실시간 : 익일 오전 11시 까지
ㅁ 오후 10시 이후의 입실은 미리 연락부탁드립니다.

■ 인원 추가요금
ㅁ 기준인원 초과 시 추가요금 발생
ㅁ (유아,아동,성인) 1인 추가 2만원
ㅁ 최대인원 초과 시 입실(환불) 불가
ㅁ (영유아 포함) 최대 수용 인원 초과를 엄격히 금함


■ 예약안내
ㅁ 펜션연락처는 예약과 동시에 고객님의 휴대폰으로 자동발송됩니다.
ㅁ 예약 전 취소수수료를 꼭 확인바랍니다.

■ 증빙안내
ㅁ 펜션라이프는 판매대행처로 소득세법과 부가가치세법에 따라 세금계산서가발행되지 않습니다.
ㅁ 신용카드 결제는 신용카드매출전표, 실시간 계좌이체는 현금영수증으로 결제증빙이 가능합니다.</pre>
        </div>
    </section>
    <section class="select_room_container">
        <div class="select_room_table">
            <table class="table">
                <thead>
                    <tr>
                        <th scope="col">선택</th>
                        <th scope="col">객실명</th>
                        <th scope="col">예약상태</th>
                        <th scope="col">예약방법</th>
                        <th scope="col">인원(기준/최대)</th>
                        <th scope="col">크기</th>
                        <th scope="col">요금</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <th scope="row"><input class="form-check-input" type="radio" name="roomType"></th>
                        <td>jhon</td>
                        <td>Jon@gmail.com</td>
                        <td>10/10/1995</td>
                        <td><button class="btn btn-sm btn-primary">Edit</button></td>
                        <td><button class="btn btn-sm btn-danger">Delete</button></td>
                    </tr>
                    <tr>
                        <th scope="row"><input class="form-check-input" type="radio" name="roomType"></th>
                        <td>mark</td>
                        <td>mark@gmail.com</td>
                        <td>10/10/1996</td>
                        <td><button class="btn btn-sm btn-primary">Edit</button></td>
                        <td><button class="btn btn-sm btn-danger">Delete</button></td>
                    </tr>
                    <tr>
                        <th scope="row"><input class="form-check-input" type="radio" name="roomType"></th>
                        <td>Raj</td>
                        <td>raj@gmail.com</td>
                        <td>10/10/1997</td>
                        <td><button class="btn btn-sm btn-primary">Edit</button></td>
                        <td><button class="btn btn-sm btn-danger">Delete</button></td>
                    </tr>
                </tbody>
            </table>     
        </div>
    </section>
    <section class="select_option_container">
        <h5>옵션 선택 및 예약</h5>
        <div class="select_option_table">
            <table class="table">
                <thead>
                    <tr>
                        <th scope="col">객실정보</th>
                        <th scope="col">이용일</th>
                        <th scope="col">기간</th>
                        <th scope="col">객실수</th>
                        <th scope="col">이용인원</th>
                        <th scope="col">이용요금</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <th scope="row"><input class="form-check-input" type="radio" name="roomType"></th>
                        <td>jhon</td>
                        <td>Jon@gmail.com</td>
                        <td>10/10/1995</td>
                        <td><button class="btn btn-sm btn-primary">Edit</button></td>
                        <td><button class="btn btn-sm btn-danger">Delete</button></td>
                    </tr>
                </tbody>
            </table>     
        </div>
    </section>
</div>
<%@ include file="../home/footer.jsp"%>
</body>
<script src="${pageContext.request.contextPath}/static/js/reservation/register.js"></script>
</html>