<template>
	<div>
	<load></load>
	<div class="emptyShopcar">
		<div class="submitOrders">
			<div class="submitOrders-content">
				<div class="submitOrders-content-header">
					<div class="submitOrders-content-logo">
						<router-link to="/">
						<img src="../../img/head/home-logo.png" /></router-link>
						<em>订单提交成功</em><i>></i>
						<em>确认订单信息</em><i>></i>
						<em class="submitOrders-content-active">我的购物车</em>
					</div>
				</div>
			</div>
		</div>
		<shopcar v-if="shopCarBol"></shopcar>
		<div class="emptyShopcar-content" v-if="!shopCarBol">
			<div class="emptyShopcar-contents">
				<img src="../../img/shopcar/shoppingcar.png"/>
			    <div class="emptyShopcar-text">您的购物车是空的</div>
			    <router-link to="/firstPage">去首页看看</router-link>
			</div>
		</div>
		<foot></foot>
	</div>
	</div>
</template>

<script>
	import load from "@/components/head/load/reg-nav"
	import foot from '@/components/foot/foot'
	import shopcar from '@/components/shop/shopCar'
	export default {
		name: "emptyShopcar",
		components: {
			foot,
			shopcar,
			load,	
		},
		data(){
			return{
					shopCarBol:false
			}
		},
		created(){
			var _that =this;
					$.ajax({
					type: "post",
					dataType: "json",
					url: "/api/buy",
					data: {
                    phNum:sessionStorage.getItem("phNum"),
                    act:"carMes"
					},
					success: function(data) {
						console.log(data)
						if (data!="") {
							for(var i in data){
							console.log(data)
							data[i].shopcarAl=data[i].buyNum*data[i].jiage;
							_that.Goodlist=data;
							_that.allParse+=data[i].shopcarAl;
							}
						sessionStorage.setItem("gdPrise",_that.Goodlist),
						_that.shopCarBol=true 
						}
					}
				});
			},
		
	}
</script>

<style>
	body,template,div,a,i,em,span,{
		margin: 0;
		padding: 0;
	}
	img {vertical-align: top;}
	a{text-decoration: none;}
	.submitOrders-header {
		background: #eee;
		font-size: 13px;
		height: 36px;
		line-height: 36px;
		color: #787878;
	}
	.submitOrders-header-content {
		width: 1280px;
		margin: auto;
		position: relative;
	}
	select {
		appearance: none;
		border: none;
		font-size: 13px;
		color: #787878;
		background-color: transparent;
		cursor: pointer;
	}
	.submitOrders-header-left,
	.submitOrders-header-right {
		display: inline-block;
	}
	.submitOrders-header-left:after {
		content: "";
		width: 0;
		height: 0;
		border-left: 3.5px solid transparent;
		border-right: 3.5px solid transparent;
		border-top: 4px solid #787878;
		position: absolute;
		top: 16px;
		left: 135px;
	}
	.submitOrders-header-right {
		float: right;
	}
	.submitOrders-header-userphone i {
		color: #498E3D;
		font-style: normal;
	}
	.submitOrders-header-userphone,
	.submitOrders-nav {
		display: inline-block;
	}
	.submitOrders-nav>a {
		color: #787878;
		padding: 0 12px;
		border-right: 1px solid #999;
	}
	.submitOrders-header-right>img {
		margin-top: 10px;
		margin-left: 10px;
	}
	.submitOrders-header-right>i {
		font-style: normal;
		color: #666;
		font-weight: bolder;
	}
	.submitOrders-content-header {
		border-bottom: 1px solid #e4e4e4;
	}
	.submitOrders-content-logo {
		width: 1280px;
		height: 130px;
		margin: auto;
		font-size: 18px;
	}
	.submitOrders-content-logo img {
		margin-top: 31px;
	}
	.submitOrders-content-logo em,
	.submitOrders-content-logo i {
		font-style: normal;
		float: right;
		line-height: 130px;
	}
	.submitOrders-content-logo em {
		color: #333;
	}
	.submitOrders-content-logo i {
		color: #999;
		margin: 0 40px;
	}
	.submitOrders-content-logo .submitOrders-content-active {
		color: #f08200;
	}
	.emptyShopcar-content{
		height: 310px;
	}
	.emptyShopcar-contents{
		width: 321px;
		height: 110px;
		margin: auto;
		margin-top: 181px;
	}
	.emptyShopcar-contents>img{
		float: left;
	}
	.emptyShopcar-text{
		font-size: 19px;
		line-height: 19px;
		margin-top: 16px;
		color: #666;
		float: right;
		margin-right: 8px;
		letter-spacing: 1px;
	}
	.emptyShopcar-contents>a{
		color: #fff;
		font-size: 18px;
		background: #F08200;
		width: 170px;
		height: 45px;
		text-align: center;
		line-height: 45px;
		display: inline-block;
		border-radius: 5px;
		float: right;
		margin-top: 30px;
	}
</style>