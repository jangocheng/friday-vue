<template>
	<div class="submitOrders">
		<small_Shoppingcarthead></small_Shoppingcarthead>
		<div class="submitOrders-content">
			<div class="submitOrders-content-header">
				<div class="submitOrders-content-logo">
						<router-link to="/">
					<img src="../../img/head/home-logo.png"/>
					</router-link>
					<h3>充值支付</h3>
				</div>
			</div>
			<div class="submitOrders-content-content">
			    <div class="submitOrders-money">
			    	    <span>应付金额 : <i>{{money}}</i> ( 在线支付 )</span>
			    	     <i>订单编号 : <em>425954156947</em></i>
			    	    <h4>支付平台</h4>
			    </div>
			    <div class="submitOrders-choosepay">
			    	    <span class="submitOrders-choosepay-shixin"><span></span></span>
			    	    <img class="submitOrders-choosepay-leftone" src="../../img/submitOrders/submitOrders-zhifubao.png"/>
			    	    <span><span></span></span>
			    	    <img class="submitOrders-choosepay-lefttwo" src="../../img/submitOrders/submitOrders-weixin.png"/>
			    	    <span><span></span></span>
			    	    <div class="submitOrders-choosepay-border">
			    	    	    <img src="../../img/submitOrders/submitOrders-yinlian.png"/>
			    	  	    <i>银联支付</i>
			    	    </div>
			    	    <span><span></span></span>
			    	    <div class="submitOrders-choosepay-borders">
			    	        <img src="../../img/submitOrders/submitOrders-yue.png"/>
			    	        <i>余额支付 ( ¥500 )</i>
			    	    </div>
			    </div>
			    <div class="submitOrders-alipay">
			    	    <div class="submitOrders-alipay-box">
			    	    	   	<div class="submitOrders-alipay-left">
			    	    	       	<h4>使用电脑支付</h4>
			    	    	       	<img src="../../img/submitOrders/submitOrders-diannao.png"/>
			    	    	       	<router-link to="/paysuccess">立即支付</router-link>
			    	       	</div>
			    	       	<h4>或</h4>
			    	       	<div class="submitOrders-alipay-right">
			    	    	      	 <h4>使用支付宝钱包扫一扫付款</h4>
			    	    	    	   <img src="../../img/submitOrders/submitOrders-zhifubaoma.png"/>
			    	      	 </div>
			    	    </div>
			    </div>
			    <div class="submitOrders-weChat">
			    	    <div class="submitOrders-weChat-content">
			    	    	    <div class="submitOrders-weChat-contentleft">
			    	    	    	    <img src="../../img/submitOrders/submitOrders-weixinsaoma.png"/>
			    	    	    </div>
			    	    	    <div class="submitOrders-weChat-contentright">
			    	    	    	    <h4>使用微信扫一扫付款</h4>
			    	    	    	    <img src="../../img/submitOrders/submitOrders-zhifubaoma.png"/>
			    	    	    	    <em></em>
			    	    	    </div>
			    	    </div>
			    </div>
			</div>
		</div>
		<foot></foot>
	</div>
</template>

<script>
	require("../../js/submitOrders.js");
	import foot from '@/components/foot/foot'
	import small_Shoppingcarthead from '@/components/shop/small_Shoppingcarthead'
	export default{
		name:"home",
		components:{
			foot,
			small_Shoppingcarthead
		},
		data(){
			return {
				money:sessionStorage.getItem("nowmoney")
			}
		}
	}
</script>

<style>
	body,template,div,a,i,em,span,h3,h4{
		margin: 0;
		padding: 0;
	}
	img{
		vertical-align: top;
	}
	a{text-decoration: none;}
	h3,h4{font-weight: normal;}
	.submitOrders-header{
		background: #eee;
		font-size: 13px;
		height: 36px;
		line-height: 36px;
		color: #787878;
	}
	.submitOrders-header-content{
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
	.submitOrders-header-left,.submitOrders-header-right{
		display: inline-block;
	}
	.submitOrders-header-left:after{
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
	.submitOrders-header-right{
		float: right;
	}
	.submitOrders-header-userphone i{
		color: #498E3D;
		font-style: normal;
	}
	.submitOrders-header-userphone,.submitOrders-nav{
		display: inline-block;
	}
	.submitOrders-nav>a{
		color: #787878;
		padding: 0 12px;
		border-right: 1px solid #999;
	}
	.submitOrders-header-right>img{
		margin-top: 10px;
		margin-left: 10px;
	}
	.submitOrders-header-right>i{
		font-style: normal;
		color: #666;
		font-weight: bolder;
	}
	.submitOrders-content-header{
		border-bottom: 1px solid #e4e4e4;
	}
	.submitOrders-content-logo{
		width: 1280px;
		height: 130px;
		margin: auto;
		font-size: 18px;
	}
	.submitOrders-content-logo img{
		margin-top: 31px;
	}
	.submitOrders-content-logo h3{
		border-left: 1px solid #cecece;
		display: inline-block;
		margin-left: 57px;
		font-size: 20px;
		line-height: 38px;
		margin-top: 57px;
		padding-left: 42px;
		color: #666;
	}
	.submitOrders-content-content{
		width: 1280px;
		margin: auto;
		margin-bottom: 41px;
	}
	.submitOrders-money{
		height: 147px;
		border-bottom: 1px solid #e5e5e5;
	}
	.submitOrders-money h4{
		line-height: 60px;
	}
	.submitOrders-money span{
		display: inline-block;
		margin-top: 5px;
		line-height: 81px;
	}
	.submitOrders-money span,.submitOrders-money h4{
		font-size: 19px;
		color: #666;
	}
	.submitOrders-money span i{
		font-style: normal;
		font-size: 21px;
		color: red;
	}
	.submitOrders-money>i{
		font-style: normal;
		font-size: 15px;
		float: right;
		color: #666;
		margin-top: 49px;
	}
	.submitOrders-money>i>em{
		font-style: normal;
	}
	.submitOrders-choosepay{
		height: 145px;
	}
	.submitOrders-choosepay .submitOrders-choosepay-leftone,.submitOrders-choosepay .submitOrders-choosepay-lefttwo{
		width: 100px;
		padding: 5px 16px;
		margin-top: 53px;
		border: 1px solid #e5e5e5;
		height: 26px;
		margin-right: 30px;
	}
	.submitOrders-choosepay>span{
		width: 15px;
		height: 15px;
		border: 1px solid #e5e5e5;
		border-radius: 50%;
		display: inline-block;
		margin-top: 61px;
		text-align: center;
		margin-right: 5px;
	}
	.submitOrders-choosepay-border>i,.submitOrders-choosepay-borders>i{
		font-style: normal;
	}
	.submitOrders-choosepay-border{
		display: inline-block;
		width: 132px;
		height: 36px;
		border: 1px solid #e5e5e5;
		line-height: 38px;
		margin-right: 30px;
	}
	.submitOrders-choosepay-border img{
		margin-top: 6px;
		margin-left: 10px;
	}
	.submitOrders-choosepay-borders{
		display: inline-block;
		width: 191px;
		height: 36px;
		border: 1px solid #e5e5e5;
		line-height: 38px;
	}
	.submitOrders-choosepay-borders img{
		margin-top: 4px;
		margin-left: 10px;
	}
	.submitOrders-choosepay .submitOrders-choosepay-shixin{
		border-color: #1d76c7;
	}
	.submitOrders-choosepay-shixin span{
		width: 9px;
		height: 9px;
		background: #1d76c7;
		display: inline-block;
		border-radius: 50%;
		margin-bottom: 5px;
	}
	.submitOrders-alipay{
		height: 397px;
		border: 1px solid #e5e5e5;
		font-size: 19px;
		color: #595959;
	}
	.submitOrders-alipay-box{
		display: flex;
		width: 691px;
		margin: auto;
		justify-content: space-between;
	}
	.submitOrders-alipay-box>h4{
		line-height: 397px;
	}
	.submitOrders-alipay-left h4,.submitOrders-alipay-right h4{
		text-align: center;
		margin-top: 17px;
		line-height: 103px;
	}
	.submitOrders-alipay-right h4{
		margin-left: -5px;
	}
	.submitOrders-alipay-left a{
		display: block;
		text-align: center;
		width: 170px;
		height: 46px;
		background: #f08200;
		color: #FFFFFF;
		line-height: 46px;
		border-radius: 5px;
		margin-top: 37px;
		margin-left: -3px;
	}
	.submitOrders-weChat{
		height: 369px;
		border: 1px solid #e5e5e5;
		margin-top: 40px;
	}
	.submitOrders-weChat-content{
		width: 740px;
		height: 275px;
		margin: auto;
		margin-top: 47px;
		display: flex;
		justify-content: space-between;
	}
	.submitOrders-weChat-contentleft{
		height: 275px;
		width: 340px;
		border-right: 1px solid #e5e5e5;
	}
	.submitOrders-weChat-contentleft img{
		height: 327px;
		margin-top: -23px;
		margin-left: -47px;
	}
	.submitOrders-weChat-contentright{
		text-align: center;
		margin-right: 31px;
		position: relative;
	}
	.submitOrders-weChat-contentright img{
		width: 216px;
	}
	.submitOrders-weChat-contentright h4{
		font-size: 19px;
		margin-bottom: 40px;
		line-height: 19px;
	}
	.submitOrders-weChat-contentright em{
		width: 47px;
		height: 47px;
		background: url(../../img/submitOrders/submitOrders-weixintubiao.png) no-repeat;
		display: inline-block;
		position: absolute;
		top: 145px;
		left: 84px;
		font-style: normal;
	}
</style>