i<template>
	<div class="changePhone">
		<p>换绑手机</p>
		<div class="cpCont">
			<div class="cpLeft">
				<div class="cpLeftOne">
					1.验证原手机号
					<em></em>
					<i></i>
				</div>
				<div class="cpLeftTwo">
					2.验证新手机号
					<em></em>
					<i></i>
				</div>
				<div class="cpLeftThere">
				3.换绑成功				
				</div>			
			</div>
			    <input  type="password" placeholder="请再次输入密码确认" /> <br />
         		<div class="yanzhengDiv"><input class="changeCheck"   placeholder="验证码"> <img src="../../img/register/checkcode.png"/> <em class="changeCode">看不清换一张</em>	</div> 
         		<input class="reg-phoneCheck" type="text" placeholder="输入密码验证身份" /> <br />
         		<button class="changePasBtn" >提交修改</button>
		</div>
	</div>
</template>

<script>
	
</script>

<style>
	p{
		margin: 0;
		padding: 0;
	}
	.changePhone {
		float: right;
		width: 1085px;
		height: 625px;
		border: 1px solid lightgray;
	}
	
	.changePhone>p {
		line-height: 55px;
		width: 100%;
		font-size: 20px;
		padding-left: 20px;
		border-bottom: 1px solid lightgray
	}
	.cpLeft{
		width: 715px;
		height: 45px;
		background: rgb(73,142,61);
		margin-top: 40px;
		margin-left: 65px;
		position: relative;
		overflow: hidden;
	}
	.cpLeft>div{
		width: 33.333%;
		height: 45px;
	     float: left;
	     position: relative;
	     text-align: center;
        color: white;
        font-size:18px ;
        line-height: 45px;
	}
.cpLeftOne>em{
		display: inline-block;
		width: 32px;
		height: 32px;
		position: absolute;
		 left:93% ;
		 top:6.3px ;
		background: rgb(73,142,61);
		z-index: 2;
		transform: rotateZ(45deg);
		float: left;
	}
	.cpLeftOne{
		z-index: 5;
	}
		.cpLeftTwo{
		z-index: 3;
	}
			.changeCode{
		float: left;
		line-height: 76px;
		font-size: 14px;
	}
	.cpLeftThere{
		z-index: 2;
	}
	.cpLeftOne>i{
		display: inline-block;
		width: 45px;
		height: 45px;
		position: absolute;
		left:95% ;
		background: white;
		transform: rotateZ(45deg);
		float: left;
	}
	.cpLeftTwo{
	background: rgb(225,225,225);
	}
		.cpLeftThere{
	background: rgb(225,225,225);
	}
	.cpLeftTwo>em{
		display: inline-block;
		width: 32px;
		height: 32px;
		position: absolute;
			 left:93% ;
		 top:6.3px ;
		background: rgb(225,225,225);
		z-index: 2;
		transform: rotateZ(45deg);
		float: left;
	}
	.cpLeftTwo>i{
		display: inline-block;
		width: 45px;
		height: 45px;
		position: absolute;
				left:95% ;
		background: white;
		transform: rotateZ(45deg);
				float: left;
	}
	.cpCont>input{
		width: 265px;
		height: 15px;
		margin: 15px 0 0 15px;
		padding: 15px 12px;
		font-size: 15px;
		border: none;
				margin-left: 65px;
		background-color: #f9f9f9
	}
	.cpCont>div>img{
		margin-left: 18px;
		margin-top: 20px;
		float: left;
	}
	.yanzhengDiv{
		overflow: hidden;
		margin-left: 50px;
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
		margin-left:65px ;
		margin-top: 15px;
        background-color: #f08200;
	}
</style>