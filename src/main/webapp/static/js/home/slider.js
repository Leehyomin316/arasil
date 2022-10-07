
$(function(){
	var slideIndex = 0;
	init();
	function init(){
		showSlides();
		slideIndex++;
		setInterval(()=>{
			showSlides();
			slideIndex++;
		}, 2000);
	}
	
//	setInterval(()=>{
//		showSlides(slideIndex++);
//	}, 2000)
	
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