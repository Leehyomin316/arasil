//공유하기 기능 주소수정 필요
function shareTwitter() {
    var sendText = "아라실"; // 전달할 텍스트
    var sendUrl = "http://localhost:8080/arasil"; // 전달할 URL
    window.open("https://twitter.com/intent/tweet?text=" + sendText + "&url=" + sendUrl);
}
function shareFacebook() {
    var sendUrl = "http://localhost:8080/arasil"; // 전달할 URL
    window.open("http://www.facebook.com/sharer/sharer.php?u=" + sendUrl);
}
function shareKakao() {
 
  // 사용할 앱의 JavaScript 키 설정
  Kakao.init('2763b9b327520dc81e3d716c3730366c');
 
  // 카카오링크 버튼 생성
  Kakao.Link.createDefaultButton({
    container: '#btnKakao', // 카카오공유버튼ID
    objectType: 'feed',
    content: {
      title: "아라실 팬션", // 보여질 제목
      description: '#아라실 팬션 #팬션 #한옥팬션 #한옥마을 #장흥', // 보여질 설명
      imageUrl: "http://localhost:8080/arasil/", // 콘텐츠 URL
      link: {
         mobileWebUrl: 'http://localhost:8080/arasil/',
         webUrl: 'http://localhost:8080/arasil/',
      }
    }
  });
}