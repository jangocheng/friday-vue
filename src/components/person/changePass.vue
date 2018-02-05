<template>
	<div class="changePass">
		<p>修改密码</p>
		<div class="changePassCont">
         		<input v-model="phNum" type="text"placeholder="请输入手机号" v-on:change="phoneCheck(phNum)"/>
         
         		<input v-model="passWords"  v-on:change="pwCheck(passWords)" type="password" placeholder="请输入密码(6-20位号码符号)"/>
         		
         		<input v-model="repassWords" v-on:change="reCheck(repassWords)" type="password" placeholder="请再次输入密码确认" /> <br />
         		<div><input class="changeCheck" v-model="code" v-on:change="codeCheck(code)" placeholder="验证码"> <img src="../../img/register/checkcode.png"/> <em class="changeCode">看不清换一张</em></div>
         		<input class="reg-phoneCheck" type="text" placeholder="手机验证码" /> <br />
         			<button class="changePasBtn" >提交修改</button>
         	</div>
	</div>
</template>

<script>
	export default {
		name: "register",
		data:function(){
		return{
			phNum:"",
			passWords:"",
			repassWords:"",
			code:"",
			PWcheck:false,
			Pcheck:false,
			Codes:false
		}
		},
		methods:{
			phoneCheck:function(phNum){
				var reg=/^1[3|4|5|8][0-9]\d{4,8}$/
				if(reg.test(this.phNum)){
					this.Pcheck=true;
				}else{
					alert("请输入正确的手机号")
				}
			},
			pwCheck:function(passWords){
				var reg1=/^[0-9a-zA-Z]{6,20}/ 
				if(reg1.test(this.passWords)){
					this.PWcheck=true;
				}else{
					alert("请设置正确的密码")
				}
			},
			reCheck:function(repassWords){
				if(this.repassWords==this.passWords){
					this.REcheck=true;
				}else{
					alert("请输入正确的密码")
				}
			},
			//验证码
			codeCheck:function(code){
				if(this.code=="xqcr"){
					this.Codes=true;
				}else{
					alert("请输入正确的验证码")
				}
			},
			registerFn:function(){
				 this.$http.post('/api/reg',{
                           username:this.phNum,
   passwords: this.passWords,
   act:"reg"
                        }).then(function(res){
                            alert(res.data);
                        },function(res){
                            alert(res.status);
                        });
if(this.PWcheck&&this.Pcheck&&this.Codes){

			}
			}
		}
	}
</script>

<style>
	.changePass {
		float: right;
		width: 1085px;
		height: 625px;
		border: 1px solid lightgray;
	}
	
	.changePass>p {
		line-height: 55px;
		width: 100%;
		font-size: 20px;
		padding-left: 20px;
		border-bottom: 1px solid lightgray
	}
	.changePassCont{
		width: 388px;
		margin-left: 20px ;
        margin-top: 50px;
	}
	.changePassCont>input{
		width: 265px;
		height: 15px;
		margin: 15px 0 0 15px;
		padding: 15px 12px;
		font-size: 15px;
		border: none;
		background-color: #f9f9f9
	}
		.changeCode{
		float: left;
		line-height: 76px;
		font-size: 14px;
	}
	.changeCheck{
		display:inline-block;
		width: 75px;
		height: 16px;
		text-align: center;
		line-height: 40px;
		padding: 15px 12px;
		outline: none;
		border: none;
		float: left;
		background-color: #f9f9f9;
		margin-left:15px ;
		margin-top: 15px;
	}
	.changeCheck+img{
		margin-left: 18px;
		margin-top: 20px;
		float: left;
	}
	.changeCheck+img+em{
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
	.changePasBtn{
		width: 134px;
		height: 43px;
		color: white;
		font-size: 20px;
		text-align: center;
		border-radius: 5px;
		border: none;
		outline: none;
		cursor: pointer;
		margin-left:18px ;
		margin-top: 15px;
background-color: #f08200;
	}
	
</style>