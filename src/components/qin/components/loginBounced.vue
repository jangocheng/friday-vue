<template>
	<div class="loginBounced-content">
				<div class="loginBounced-content-content">
					<div class="loginBounced-content-header">
						<router-link to="">登录</router-link>
						<router-link to="">账号密码登录</router-link>
						<span></span>
					</div>
					<div class="loginBounced-content-contents">
					    <input type="text" placeholder="请输入手机号"/>
					    <span></span>
					    <strong class="loginBounced-phone"><i>!</i>请输入手机号</strong>
					    <strong class="loginBounced-phones"><i>!</i>手机号码不正确,请重新输入</strong>
					    <div class="loginBounced-content-verificationCode">
					   	    <input type="text" placeholder="验证码"/>
					   	    <div class="loginBounced-verificationCode-photo">
					   	    	    <img src="../img/loginBounced/loginBounced-verificationCode.png"/>
					   	    	    <i>看不清换一张</i>
					   	    </div>
					   	    <strong class="loginBounced-verificationCode"><i>!</i>请输入验证码</strong>
					        <strong class="loginBounced-verificationCodes"><i>!</i>验证码不正确,请重新输入</strong>
					   	    <div class="loginBounced-phoneverificationCode">
					   	     	<input type="text" placeholder="手机验证码"/>
					   	     	<em>获取验证码</em>
					   	     	<strong class="loginBounced-phoneVerificationCode"><i>!</i>请输入手机验证码</strong>
					            <strong class="loginBounced-phoneVerificationCodes"><i>!</i>手机验证码不正确,请重新输入</strong>
					   	    </div>
					   	    <div class="loginBounced-isautomation">
					   	    	    <input type="checkbox" />
					   	    	    <i>自动登录</i>
					   	    	    <em>忘记密码?</em>
					   	    </div>
					   	    <router-link to="" class="loginBounced-clickLogin">登录</router-link>
					   	    <router-link to="" class="loginBounced-clickRegistered">会员注册</router-link>
					   	    	<h4>提示 : 未注册用户将直接注册成为礼拜五用户</h4>
					   	    <h3><i>----------- </i>用合作网站登录<i> -----------</i></h3>
					   	    <div class="loginBounced-weChatLoginMethod">
					   	    	    <router-link to=""><img src="../img/loginBounced/loginBounced-weChat.png"/></router-link>
					   	    </div>
					   	    <div class="loginBounced-QQLoginMethod">
					   	    	    <router-link to=""><img src="../img/loginBounced/loginBounced-QQ.png"/></router-link>
					   	    </div> 
					    </div>
					</div>
				</div>
			</div>
</template>

<script>
	require("../js/loginBounced.js");
	export default{
		name:"loginBounced"
	}
</script>

<style>
	body,div,h3,h4,em,span,a,input,i,strong{
		margin: 0;
		padding: 0;
	}
	a{
		text-decoration: none;
	}
	html,body,#app,.loginBounced{
		height: 100%;
	}
	.loginBounced-content{
		width: 378px;
		height: 500px;
		background: #fff;
		margin: auto;
		margin-top: 200px;
		border: 1px solid red;
	}
	.loginBounced-content-content{
		width: 307px;
		height: 451px;
		margin: auto;
		margin-top: 24px;
		position: relative;
	}
	.loginBounced-content-header{
		margin-bottom: 20px;
	}
	.loginBounced-content-header a:first-child{
		font-weight: 400;
		color: #666;
		font-size: 24px;
		line-height: 24px;
	}
	.loginBounced-content-header a:nth-child(2){
		font-size: 18px;
		color: #498e3d;
		float: right;
		margin-right: 20px;
	}
	.loginBounced-content-header>span{
		width: 15px;
		height: 17px;
		display: inline-block;
		background: url(../img/loginBounced/loginBounced-person.png);
		background-size: 15px 17px;
		margin-bottom: -2px;
		margin-left: 5px;
		position: absolute;
		right: 0;
		top: 4px;
	}
	.loginBounced-content-content input{
		width: 295px;
		height: 42px;
		background: #f9f9f9;
		outline: none;
		border: 1px solid #d3d3d3;
		padding-left: 10px;
		font-size: 17px;
	}
	.loginBounced-content-content input:focus{
		border-color: #F08200;
	}
	.loginBounced-content-contents>input{
		margin-bottom: 30px;
	}
	.loginBounced-content-contents>span{
		width: 12px;
		height: 12px;
		display: inline-block;
		background: url(../img/loginBounced/loginBounced-check .png) no-repeat;
		position: absolute;
		top: 62px;
		right: 15px;
		display: none;
	}
	.loginBounced-content-contents strong{
		font-size: 13px;
		color: #db2630;
		position: absolute;
		left: 0;
		top: 96px;
	}
	.loginBounced-content-contents strong i{
		width: 13px;
		height: 13px;
		background: #db2630;
		border-radius: 50%;
		display: inline-block;
		line-height: 13px;
		color: #FFFFFF;
		text-align: center;
		font-size: 12px;
		margin-right: 5px;
		font-style: normal;
	}
	.loginBounced-content-verificationCode>input{
		width: 101px;
	}
	.loginBounced-content-verificationCode>strong{
		position: absolute;
		left: 0;
		top: 170px;
	}
	.loginBounced-verificationCode-photo{
		display: inline-block;
		float: right;
	}
	.loginBounced-verificationCode-photo img{
		margin-top: 5px;
		margin-right: 5px;
		margin-bottom: -13px;
	}
	.loginBounced-verificationCode-photo i{
		font-size: 14px;
		line-height: 44px;
		color: #F08200;
		font-style: normal;
		cursor: pointer;
	}
	.loginBounced-phoneverificationCode>input{
		margin-top: 29px;
	}
	.loginBounced-phoneverificationCode>em{
		width: 100px;
		height: 33px;
		color: #fff;
		background: #498e3d;
		line-height: 33px;
		text-align: center;
		font-size: 14px;
		display: block;
		position: absolute;
		right: 6px;
		top: 201px;
		font-style: normal;
		cursor: pointer;
	}
	.loginBounced-phoneverificationCode>strong{
		position: absolute;
		left: 0;
		top: 238px;
	}
	.loginBounced-isautomation input{
		width: 14px;
		height: 14px;
	}
	.loginBounced-isautomation{
		font-size: 14px;
		height: 55px;
		line-height: 55px;
	}
	.loginBounced-isautomation i{
		color: #666;
		font-style: normal;
	}
	.loginBounced-isautomation em{
		font-style: normal;
		float: right;
		color: #F08200;
		text-decoration: underline;
		cursor: pointer;
	}
	.loginBounced-clickLogin,.loginBounced-clickRegistered{
		color: #fff;
		font-size: 18px;
		width: 133px;
		height: 45px;
		line-height: 45px;
		text-align: center;
		display: inline-block;
		border-radius: 5px;
		margin-bottom: 9px;
	}
	.loginBounced-clickLogin{
		background: #F08200;
	}
	.loginBounced-clickRegistered{
		background: #498e3d;
		float: right;
	}
	.loginBounced-content-verificationCode>h4{
		font-size: 14px;
		color: #999;
		line-height: 28px;
	}
	.loginBounced-content-verificationCode>h3{
		font-size: 15px;
		color: #666;
		line-height: 33px;
		margin-bottom: 10px;
	}
	.loginBounced-content-verificationCode>h3>i{
		font-size: 14px;
		color: #999;
	}
	.loginBounced-weChatLoginMethod{
		width: 32px;
		height: 30px;
		border: 1px solid #00cd0d;
		border-radius: 50%;
		padding-top: 10px;
		padding-left: 8px;
		margin-left: 95px;
	}
	.loginBounced-QQLoginMethod{
		width: 30px;
		height: 30px;
		border: 1px solid #4dafea;
		border-radius: 50%;
		padding-top: 10px;
		padding-left: 10px;
		margin-left: 15px;
	}
	.loginBounced-weChatLoginMethod,.loginBounced-QQLoginMethod{
		display: inline-block;
	}
	.loginBounced-weChatLoginMethod>img,.loginBounced-QQLoginMethod>img{
		width: 24px;
	}
	.loginBounced-phone,.loginBounced-phones,.loginBounced-verificationCode,.loginBounced-verificationCodes,.loginBounced-phoneVerificationCode,.loginBounced-phoneVerificationCodes{
		display: none;
	}
</style>