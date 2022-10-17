
$(function autoslide(){
	var slideIndex = 0;
	init();
	function init(){
		showSlides();
		slideIndex++;
//		setInterval(()=>{
//			showSlides();
//			slideIndex++;
//		}, 5000);
//		function stopFun() {
//                  clearInterval(init);    
//             }
//             // 브라우저 호환(크로스브라우징)을 위해 메소드 제공 여부를 체크 합니다. 
//             // 이미지에 마우스오버시 "정지", 마우스아웃시 "시작" 이벤트를 적용합니다.
//             if (document.addEventListener){
//                  document.imgimg.addEventListener("mouseover",stopFun,false);
//                  document.imgimg.addEventListener("mouseout",init,false);
//             } else {
//                  document.imgimg.attachEvent("onmouseover",stopFun);
//                  document.imgimg.attachEvent("onmouseout",init);
//             }
////		$("currentSlide").off("setInterval")	
	};

	
	function showSlides() {
		var slides = document.getElementsByClassName("mySlides");
		var dots = document.getElementsByClassName("demo");
		var captionText = document.getElementById("caption");
		if (slideIndex == slides.length) { slideIndex = 0 }

		for (let i = 0; i < slides.length; i++) {
			slides[i].style.display = "none";
		}
		for (let i = 0; i < dots.length; i++) {
			dots[i].classList.remove("active-slider");
		}
		slides[slideIndex].style.display = "block";
		dots[slideIndex].classList.add("active-slider");
		captionText.innerHTML = dots[slideIndex].alt;
	}	
})();

function currentSlide(Index){
	var slides = document.getElementsByClassName("mySlides");
	var dots = document.getElementsByClassName("demo");
	var captionText = document.getElementById("caption");
	if (Index == slides.length) { Index = 0 }

	for (let i = 0; i < slides.length; i++) {
		slides[i].style.display = "none";
	}
	for (let i = 0; i < dots.length; i++) {
		dots[i].classList.remove("active-slider");
	}
	slides[Index].style.display = "block";
	dots[Index].classList.add("active-slider");
	captionText.innerHTML = dots[Index].alt;
}
