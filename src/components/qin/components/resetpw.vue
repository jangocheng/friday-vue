<template>
	<div>
		<regnav></regnav>
		<!--注册log-->
		<div class="reg-logo">
			<img src="../img/head/home-logo.png" />
			<span>找回密码</span>
		</div>
		<div class="resets">
			<!--找回密码页面-->
			<div class="resets-page">
				<div class="resets-pic">
					<div>
						<span>礼拜五会员</span>
						<span>免费注册</span>
					</div>
				</div>
				<!--重置密码-->
				<div class="reset-pw">
					<div class="reset-title">重置密码</div>
					<div class="reset-phones">
						<div>
							<input placeholder="请输入手机号" v-model="rephNum" v-on:change="rephoneCheck(rephNum)" />
							<span class="resets-phone-right">️</span>
						</div>
						<p class="reset-phone-warn"> <em></em> 请输入正确手机号</p>
					</div>
					<!--验证码-->
					<div class="reset-check">
						<input v-model="reCode" v-on:change="recodeCheck(reCode)" type="text" placeholder="验证码" />
						<img src="../img/reset/reset-dulcode.png" />
						<em>看不清换一张</em>
					</div>
					<!--密码-->
					<div class="reset-passWord">
						<div>
							<input v-model="rePasswd" v-on:change="rePwCheck(rePasswd)" type="password" placeholder="请输入密码(6-20位号码字符)" />
						</div>
						<p class="reset-passW-warn"> <em></em> 密码格式不正确,请重新输入</p>
					</div>
					<!--再次输入密码-->
					<div class="reset-reinput">
						<div>
							<input v-model="reinputs" v-on:change="reDulCheck(reinputs)" type="password" placeholder="请再次输入密码" />
						</div>
						<p class="reset-reinput-warn"> <em></em> 两次密码输入不一致</p>
					</div>
					<!--手机验证码-->
					<div class="reset-checkPhone">
						<input type="" placeholder="请输入手机验证码" />
						<span class="reset-cp-getBtn">获取验证码</span>
					</div>
					<div class="reset-submit">
						<button class="reset-submit-btn" disabled="disabled">提交</button>
					</div>

				</div>

			</div>
		</div>
		<foot></foot>
	</div>
</template>

<script>
	import Regnav from '@/components/reg-nav'
	import foot from '@/components/foot'
	export default {
		name: "resetpw",
		components: {
			Regnav,
			foot
		},
		data: function() {
			return {
				rephNum: "",
				reCode: "",
				rePasswd:"",
				reinputs:" "
			}
		},
		methods: {
			//手机号码验证函数
			rephoneCheck: function(rephNum) {
				var rebol1= false;
				var reg = /^1[3|4|5|8][0-9]\d{4,8}$/
				if(reg.test(this.rephNum)) {
					rebol1 = true;
					$(".resets-phone-right").css("display", "block")
				} else {
					$(".reset-phone-warn").css("display", "block")
					$(".reset-phones input").val(" ")
				}
			},
			//验证码函数
			recodeCheck: function(reCode) {
				var rebol2 = false;
				if(this.reCode == "xqcr") {
					rebol2 = true;
				} else {
					alert("请输入正确的验证码")
				}

			},
			//密码验证
			rePwCheck:function(rePasswd){
				var rebol3=false;
				var reg1=/^[0-9a-zA-Z]{6,20}/ 
				if(reg1.test(this.rePasswd)){
					rebol3=true;
				}else{
					$(".reset-passW-warn").css("display", "block")
					$(".reset-passWord input").val("")
				}
			},
			//再次输入密码验证
			reDulCheck:function(reinputs){
				var rebol4=false;
				if(this.reinputs==this.rePasswd){
					rebol4=true;
					
				}else{
					$(".reset-reinput-warn").css("display","block")
				}
			}
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
	/*找回密码*/
	
	.reset-pw {
		width: 388px;
		height: 100%;
		background-color: white;
		position: absolute;
		right: 0;
		text-align: center;
	}
	
	.reset-pw div {
		width: 310px;
		margin: 0 auto;
	}
	
	.reset-title {
		text-align: start;
		height: 20px;
		font-size: 20px;
		padding-top: 30px;
		padding-bottom: 20px;
		color: #666666;
	}
	/*手机号 密码 再次输入密码*/
	
	.reset-phones,
	.reset-passWord,
	.reset-reinput,
	.reset-checkPhone,
	.reset-submit {
		position: relative;
		height: 70px;
	}
	
	.reset-phones input,
	.reset-passWord input,
	.reset-reinput input,
	.reset-checkPhone input {
		background-color: #F9F9F9;
		width: 280px;
		font-size: 18px;
		padding: 10px 14px;
		/*color: #999999;*/
		outline: none;
		border: 1px solid #D3D3D3;
	}
	
	.resets-phone-right {
		position: absolute;
		top: 15px;
		right: 20px;
		display: inline-block;
		width: 13px;
		height: 13px;
		border-radius: 50%;
		background: url(../img/reset/reset-success.png) no-repeat;
		display: none;
	}
	/*手机号输错,密码输错警告*/
	
	.reset-phone-warn,
	.reset-passW-warn,
	.reset-reinput-warn {
		color: #e45c64;
		text-align: start;
		display: inline-block;
		width: 100%;
		height: 25px;
		margin-top: 0;
		font-size: 12px;
		display: none;
	}
	
	.reset-phone-warn em,
	.reset-passW-warn em,
	.reset-reinput-warn em {
		display: inline-block;
		width: 13px;
		height: 13px;
		background: url(../img/reset/reset-waring.png) no-repeat left;
	}
	/*验证码*/
	
	.reset-check {
		width: 100%;
		height: 70px;
	}
	
	.reset-check input {
		font-size: 18px;
		/*color: #999999;*/
		width: 90px;
		outline: none;
		background-color: #F9F9F9;
		padding: 10px 13px;
	}
	
	.reset-check img {
		display: inline-block;
		margin-top: 8px;
		margin-left: 10px;
	}
	
	.reset-check em {
		font-size: 15px;
		color: #f08200;
		cursor: pointer;
	}
	/*获取手机验证码*/
	
	.reset-cp-getBtn {
		position: absolute;
		top: 5px;
		right: 5px;
		display: inline-block;
		width: 100px;
		height: 35px;
		font-size: 14px;
		color: white;
		text-align: center;
		line-height: 35px;
		background-color: #498e3d;
		cursor: pointer;
	}
	/*提交按钮*/
	.reset-submit-btn {
		display: inline-block;
		width: 100%;
		height: 45px;
		line-height: 45px;
		text-align: center;
		color: white;
		background-color: #f08200;
		outline: none;
		border: none;
		border-radius: 5px;
		font-size: 20px;
		cursor: pointer;
	}
</style>