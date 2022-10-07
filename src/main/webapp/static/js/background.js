(function(){
	var now_img;
	var last_img;
	
	window.onload = function() {
		setInterval("fn-change()",4000);
	}
	
	function fn_change(){
		now_img $("img").eq(0);
		last_img $("img").eq(-1);
		
		last_img.addClass("back-ground").css("opacity",0).animate({"opacity":1}, 1000, function(){
			$(".img_area").prepend(last_img);
			now_img.removeClass("back-ground");
		});
		
})();

