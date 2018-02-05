$(function(){
	var loginPhone = /^1[3|5|7|8][0-9]{9}$/;
	$(".loginBounced-content-contents>input").blur(function(){
		var phone = $(".loginBounced-content-contents>input").val();
		console.log(phone);
		if(phone == ""){
		    $(".loginBounced-phone").show(300).delay(500).hide(300);
		    $(".loginBounced-content-contents>span").hide();
	    }else if(!loginPhone.test(phone)){
	    	    $(".loginBounced-phones").show(300).delay(500).hide(300);
	    	    $(".loginBounced-content-contents>span").hide();
	    }else if(phone=="" && !loginPhone.test(phone)){
	    	    $(".loginBounced-phone").show(300).delay(500).hide(300);
	    	    $(".loginBounced-content-contents>span").hide();
	    }else{
	    	    $(".loginBounced-content-contents>span").show();
	    }
	})
	$(".loginBounced-content-verificationCode>input").blur(function(){
		var verificationCode = $(".loginBounced-content-verificationCode>input").val();
		if(verificationCode == ""){
		    $(".loginBounced-verificationCode").show(300).delay(500).hide(300);
	    }
	})
	$(".loginBounced-phoneverificationCode>input").blur(function(){
		var phoneverificationCode = $(".loginBounced-phoneverificationCode>input").val();
		if(phoneverificationCode == ""){
		    $(".loginBounced-phoneVerificationCode").show(300).delay(500).hide(300);
	    }
	})
	var bool = true;
	$(".loginBounced-content-header>a:eq(1)").click(function(){
		if(bool){
			$(".loginBounced-content-header>a:eq(1)").text("账号密码登录");
			$(".loginBounced-phoneverificationCode>input").attr("placeholder","手机验证码");
			$(".loginBounced-phoneverificationCode>em").show();
		}else{
			$(".loginBounced-content-header>a:eq(1)").text("手机验证码登录");
			$(".loginBounced-phoneverificationCode>input").attr("placeholder","请输入密码");
			$(".loginBounced-phoneverificationCode>em").hide();
		}
		bool = !bool;
	})
})
