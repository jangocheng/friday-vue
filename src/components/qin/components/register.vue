<template>
	<div>
		<regnav></regnav>
		<!--注册log-->
		 <div class="reg-logo">
		 	<img src="../img/head/home-logo.png"/>
		 	<span>
		 		会员登录
		 	</span>
		 </div>
		<div class="reg"> 
         <!--注册页面-->
         <div class="reg-page">
         	<div class="reg-pic">
         		<div>
         			<span>礼拜五会员</span>
         			<span>免费注册</span>
         		</div>
         	</div>
         	<div class="reg-login">
         		<input v-model="phNum" type="text"placeholder="请输入手机号" v-on:change="phoneCheck(phNum)"/>
        
         		<input v-model="passWords"  v-on:change="pwCheck(passWords)" type="password" placeholder="请输入密码(6-20位号码符号)"/>
         		<input v-model="repassWords" v-on:change="reCheck(repassWords)" type="password" placeholder="请再次输入密码确认" /> <br />
         		
         		<input class="reg-checkcode" v-model="code" v-on:change="codeCheck(code)" placeholder="验证码"> <img src="../img/register/checkcode.png"/> <em>看不清换一张</em><br />
         		<input class="reg-phoneCheck" type="text" placeholder="手机验证码" /> <br />
         		<input type="checkbox" /><span> 我已阅读并同意<<礼拜五用户协议>></span> <br />
         			<button class="reg-regBtn">注册</button>
         			<button class="reg-loginBtn">登录</button>
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
		name: "register",
		data:function(){
		return{
			phNum:"",
			passWords:"",
			repassWords:"",
			code:""
		}
		},
		components: {
			Regnav,
			foot
		},
		methods:{
			phoneCheck:function(phNum){
				var Pcheck=false;
				var reg=/^1[3|4|5|8][0-9]\d{4,8}$/
				if(reg.test(this.phNum)){
					Pcheck=true;
				}else{
					alert("请输入正确的手机号")
					
				}
				console.log(Pcheck)
			},
			pwCheck:function(passWords){
				var PWcheck=false
				var reg1=/^[0-9a-zA-Z]{6,20}/ 
				if(reg1.test(this.passWords)){
					PWcheck=true;
				}else{
					alert("请设置正确的密码")
				}
				console.log(PWcheck)
			},
			reCheck:function(repassWords){
				var REcheck=false;
				if(this.repassWords==this.passWords){
					REcheck=true;
				}else{
					alert("请输入正确的密码")
				}
				console.log(REcheck)
			},
			//验证码
			codeCheck:function(code){
				var Codes=false;
				if(this.code=="xqcr"){
					Codes=true;
				}else{
					alert("请输入正确的验证码")
				}
			}
			
		}
	}
</script>

<style>
.reg-logo{
		width: 1280px;
       margin: 30px auto;
	}
	.reg-logo span{
		display: inline-block;
		margin-left: 65px;
		margin-top: 40px;
		padding-left: 40px;
		color: #666;
		border-left: 1px solid #666666;
	}
	/*注册页面*/
	.reg{
		width: 100vw;
		height: 500px;
		margin-top: 40px;
		background: url(../img/register/reg-bg.png) no-repeat ;
		background-size: 100% 100%;
	}
	.reg-page{
		width: 1280px;
		height: 100%;
		margin: 0 auto;
		position: relative;
	}
	.reg-page div{
		display: inline-block;
	}
	.reg-pic{
		width: 492px;
		height: 222px;
		margin-top: 132px;
		margin-left: 217px;
		border: 2px solid white;
		
	}
	.reg-pic div{
		width: 471px;
		height: 200px;
		margin-top: 10px;
		margin-left:10px;
		border: 2px solid white;
		text-align: center;
		font-size: 55px;
	}
	.reg-pic span{
		display: block;
		color: white;
	}
	.reg-pic span:nth-child(1){
		margin-top: 30px;
	}
	.reg-pic span:nth-child(2){
		letter-spacing: 50px;
		margin-left: 40px;
	}
	/*注册*/
	.reg-login{
		width: 388px;
		height: 100%;
		background-color: white;
		position: absolute;
		right: 0;
		text-align: center;	
	}
	.reg-login input{
		width: 265px;
		height: 15px;
		margin: 15px auto;
		padding: 15px 12px;
		font-size: 15px;
		border: none;
		background-color: #f9f9f9
		
	}
	.reg-login .reg-checkcode{
		display:inline-block;
		width: 75px;
		height: 16px;
		text-align: center;
		line-height: 40px;
		outline: none;
		border: none;
	}
	.reg-checkcode+img{
		display: inline-flex;
		margin-left: 18px;
		margin-top: 20px;
	}
	.reg-checkcode+img+em{
		color: #f29322;
		
	}
	.reg-login input[type=checkbox]{
		width: 15px;
		height: 15px;
		border-radius: 50%;
	}
	input[type=checkbox]+span{
		font-size: 15px;
		color: #666;
	}
	.reg-regBtn,.reg-loginBtn{
		width: 134px;
		height: 43px;
		color: white;
		font-size: 20px;
		text-align: center;
		border-radius: 5px;
		border: none;
		outline: none;
		cursor: pointer;
	}
	.reg-regBtn{
		background-color: #f08200
	}
	.reg-loginBtn{
	 background-color: #498e3d
	}
	
</style>