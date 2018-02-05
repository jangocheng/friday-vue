$(function(){
	$(".firday-show").mouseover(function(){
		$(".firday-bigshow").show();
		$(".zoom").show();
		$(".firday-show").mousemove(function(eve){
			var e = window.event || eve;
			var dx = e.clientX - $(".firday-show").offset().left - $(".zoom").width()/2;
			var dy = e.clientY - $(".firday-show").offset().top - $(".zoom").height()/2 + $(window).scrollTop();
			var maxL = $(".firday-show").width() - $(".zoom").width();
			var maxT = $(".firday-show").height() - $(".zoom").height();
			if(dx > maxL){
				dx = maxL;
			}
			if(dx < 0){
				dx = 0;
			}
			if(dy > maxT){
				dy = maxT;
			}
			if(dy < 0){
				dy = 0;
			}
			
			$(".zoom").css({
				"left":dx+"px",
				"top":dy+"px"
			});
			var scaleX = dx/maxL;
			var scaleY = dy/maxT;
			$(".firday-bigshow>img").css({
				"left":-($(".firday-bigshow>img").width() - $(".firday-bigshow").width())*scaleX+"px",
				"top":-($(".firday-bigshow>img").height() - $(".firday-bigshow").height())*scaleY+"px"
			})
		})
	})
	$(".firday-show").mouseout(function(){
		$(".firday-bigshow").hide();
		$(".zoom").hide();
	})
	$(".firday-listshow-inside>img").click(function(){
		$(this).css({
			"width":"86px",
			"height":"86px",
			"border":"2px solid #F08200"
			}).siblings().css({
			"width":"90px",
			"height":"90px",
			"border":"none"
			});
		
		$(".pic").attr("src",$(this).attr("src"));
		$(".pics").attr("src",$(this).attr("src"));
	})
	$(".firday-right").click(function(){
		$(".firday-listshow-inside").css("left","-105px");
	})
	$(".firday-left").click(function(){
		if($(".firday-listshow-inside").css("left","-105px")){
			$(".firday-listshow-inside").css("left",0)
		}
	})
	$(".firday-weight em").on("click",function(){
		$(".firday-weight em").css("background-color","white")
		$(".firday-weight em").css("border","1px solid #d4d4d4")
		$(this).css("border","1px solid green")
		$(this).css("background-color","#F4FFF2")
	})
	window.onscroll=function(){
		if(scrollY>900){
			$(".com-nav-addcar").css("display","block")
		}
	}
	//商品详情与商品评价
	$(".com-nav .change").on("click",function(){
		$(".com-nav .change").css("background-color","#F4F4F4")
		$(".com-nav .change").css("border","1px solid #e4e4e4")
		$(this).css("border-top","1px solid green")
		$(this).css("background-color","white")
	})
	
	
})
