<template>
<div>
<Regnav></Regnav>
<!--中间log-->
<div class="pay-log">
	<img src="../img/foot/homelogo.png"/>
	<div class="pay-left">
		<span>我的购物车</span>
		<span>></span>
		<span>确认订单信息</span>
		<span>></span>
		<span>订单提交成功</span>
	</div>
</div>
<!--支付成功页面-->
<div class="pay-success">
	<img src="../img/paysuccess/right.png"/>
	<img src="../img/paysuccess/text.png"/>
	<div class="pay-btn">
		<span>查看订单</span>
		<span>返回首页</span>
	</div>
	<span class="pay-odernum">订单编号: <em>20150901.144912ah941</em></span>
</div>


<foot></foot>
</div>




</template>

<script>
	import Regnav from "@/components/reg-nav"
	import foot from "@/components/foot"
	export default{
		name:"paysuccess",
		components:{
			Regnav,
			foot
		}
	}
</script>

<style>
	/*中间log*/
	.pay-log{
		width: 1280px;
		height: 94px;
		line-height: 94px;
		margin: 20px auto;
		color: #666666;
	}
	.pay-left{
		display:inline-block ;
		margin-top:10px;
		margin-left:360px;
		width: 540px;
		height: 60px;
		cursor: pointer;
	}
	.pay-left span{
		display: inline-block;
		margin-left: 35px;
	}
	.pay-left span:nth-child(5){
		color: #F08200;
	}
	/*支付成功页面*/
	.pay-success{
		width: 1280px;
		height: 500px;
		margin: 10px auto;
		text-align: center;
	}
	.pay-success img:nth-child(1){
		display: block;
		margin-top: 80px;
		margin-left: 600px;
	}
	.pay-success img:nth-child(2){
		display: block;
		margin-top: 40px;
		margin-left: 580px;
	}
	.pay-btn{
		width: 400px;
		height: 60px;
		line-height: 60px;
		margin-left: 440px;
		margin-top: 50px;
	}
	.pay-btn span{
		display: inline-block;
		width: 170px;
		height: 40px;
		line-height: 40px;
		color: white;
		font-size: 20px;
		text-align: center;
		background-color: #498E3D;
		border-radius: 5px;
		cursor: pointer;
	}
	.pay-btn span:nth-child(1){
		background-color: #f08200;
		margin-right: 40px;
	}
	/*订单号*/
	.pay-odernum{
		display: inline-block;
		width: 330px;
		height: 30px;
		line-height: 30px;
		text-align: center;
		color: #a0a0a0;
		margin-top: 50px;
	}
	.pay-odernum em{
		display: inline-block;
		margin-left: 10px;
	}
</style>