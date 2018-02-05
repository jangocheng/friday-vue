<template>
	<div>
		<heads></heads>
		<!--注册log-->
		<div class="reg-logo">
			<img src="../img/head/home-logo.png" />
			<span>
		 		会员登录
		 	</span>
		</div>
		<div class="resets">
			<div class="resets-page">
				<div class="resets-pic">
					<div>
						<span>礼拜五会员</span>
						<span>免费注册</span>
					</div>
				</div>
				<!--登录框-->
				<div class="login">
					<!--头部-->
					<div class="login-header">
						<router-link to="">登录</router-link>
						<router-link to="">账号密码登录</router-link>
						<span></span>
					</div>

				</div>
			</div>

		</div>

		<foot></foot>
	</div>
</template>
<script>
	import heads from "@/components/Notlogged"
	import foot from "@/components/foot"
	export default {
		name: "login",
		components: {
			foot,
			heads,
		}
	}
</script>

<style>
	.reg-logo {
		width: 1280px;
		margin: 30px auto;
	}
	
	.reg-logo span {
		display: inline-block;
		margin-left: 65px;
		margin-top: 40px;
		padding-left: 40px;
		color: #666;
		border-left: 1px solid #666666;
	}
	/*找回密码页面*/
	
	.resets {
		width: 100vw;
		height: 500px;
		margin-top: 40px;
		background: url(../img/register/reg-bg.png) no-repeat;
		background-size: 100% 100%;
	}
	
	.resets-page {
		width: 1280px;
		height: 100%;
		margin: 0 auto;
		position: relative;
	}
	
	.resets-page div {
		display: inline-block;
	}
	
	.resets-pic {
		width: 492px;
		height: 222px;
		margin-top: 132px;
		margin-left: 217px;
		border: 2px solid white;
	}
	
	.resets-pic div {
		display: block;
		width: 471px;
		height: 200px;
		margin-top: 10px;
		margin-left: 10px;
		border: 2px solid white;
		text-align: center;
		font-size: 55px;
	}
	
	.resets-pic span {
		display: block;
		color: white;
	}
	
	.resets-pic span:nth-child(1) {
		margin-top: 30px;
	}
	
	.resets-pic span:nth-child(2) {
		letter-spacing: 50px;
		margin-left: 40px;
	}
	/*登录页面*/
	
	.login {
		width: 388px;
		height: 100%;
		background-color: white;
		position: absolute;
		right: 0;
		border: 1px solid red;
	}
	.login-header{
		margin-bottom: 20px;
		border: 1px solid cyan;
	}
	.login-header a:first-child{
		font-weight: 400;
		color: #666;
		font-size: 24px;
		line-height: 24px;
	}
	.login-header a:nth-child(2){
		font-size: 18px;
		color: #498e3d;
		float: right;
		margin-right: 20px;
	}
	.login-header>span{
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
</style>