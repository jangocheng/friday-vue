$(function(){
	var lift = 0;
	$(window).scroll(function(){
		var lift = $(window).scrollTop();
		if(lift > 150){
			$(".footAnchor").css("opacity","1");
		}else{
			$(".footAnchor").css("opacity","0");
		}
	})
	
	$(".footAnchor>span").click(function(){
		$("html,body").animate({
			scrollTop:0
		},"slow")
	})
})