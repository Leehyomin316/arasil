//공유하기 기능 주소수정 필요
function shareTwitter() {
    var sendText = "아라실"; // 전달할 텍스트
    var sendUrl = "${pageContext.request.contextPath}/jsp/home"; // 전달할 URL
    window.open("https://twitter.com/intent/tweet?text=" + sendText + "&url=" + sendUrl);
}
function shareFacebook() {
    var sendUrl = "${pageContext.request.contextPath}/jsp/home"; // 전달할 URL
    window.open("http://www.facebook.com/sharer/sharer.php?u=" + sendUrl);
}