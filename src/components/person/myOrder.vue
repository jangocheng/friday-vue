<template>
	<div class="myOrder">
		<p>我的订单</p>

		<div class="myOrder-cont">
			<ul>
				<li><span class="checkspan">全部</span></li>
				<li><span>待付款</span></li>
				<li><span>带发货</span></li>
				<li><span>待收货</span></li>
				<li><router-link to="/person/appraise">待评价</router-link></li>
				<li><span>退款/售后</span></li>
				<li><span>已完成/关闭</span></li>
				<li>
					<router-link to="">订单回收站</router-link>
				</li>
			</ul>
			<div class="orderCont">
				<div class="orderCont-head">
					<em>订单号 : </em><span>150319690000</span>
					<em>下单日期 : </em><span>2015.04.09</span>
					<span  class="shopName">爱果果水果店</span>
					<span class="orderState">关闭</span><em>订单状态 : </em>
					<div class="orderCont-cont">
						<ul class="orderList">
							<li><img src="../../img/person/orderlist.png" alt="" /><span>云南昭通丑苹果</span><span>6个装</span><span><em>¥</em>35.0X1</span></li>
							<li><img src="../../img/person/orderlist.png" alt="" /><span>云南昭通丑苹果</span><span>6个装</span><span><em>¥</em>35.0X1</span></li>
						</ul>
						<div class="orderAdd">
							<em>店铺合计 : </em><span>¥ 105.0</span>
							<span>(含运费 : ¥8.0)</span>
						</div>
						<div class="orderDo">
								<router-link to="/person/orderMes">查看详情</router-link>
							<button>删除订单</button>
						</div>
					
					</div>
				</div>
			</div>
		</div>
	</div>
</template>

<script>
</script>

<style>
	.myOrder {
		float: right;
		width: 1085px;
		border: 1px solid lightgray;
	}
	
	.myOrder>p {
		line-height: 55px;
		width: 100%;
		font-size: 20px;
		padding-left: 20px;
		border-bottom: 1px solid lightgray
	}
.myOrder-cont{
	width: 100%;
	}
	.myOrder-cont>ul {
		list-style: none;
		display: flex;
		justify-content: center;
		margin-top: 23px;
	}
	
	.myOrder-cont>ul>li {
		width: 12%;
		border-right: 1px solid  lightgray;
		text-align: center;
		font-size:17px;
		color: gray;
	}
	.myOrder-cont>ul>li>a{
		color: gray;
	}
	.myOrder-cont>ul>li:nth-child(1) {
			width: 6%;
		}
	.myOrder-cont>ul>li:nth-child(8){
		width: 17%;
	} 	
	.myOrder-cont>ul>li:nth-child(8) a{
		display: inline-block;
		float: right;
		color: rgb(64,149,69);
	}
	.myOrder-cont>ul>li:nth-child(1) span{
		display: inline-block;
       float: left;
	}
		.checkspan {
			color: white;
		background: rgb(247, 131, 39);
	}
	.orderCont{
	 width: 1045px;
	 margin-left: 19px;	
	 margin-top: 23px;
	 		border-right: 1px solid lightgray;
	}
	.orderCont-head{
		width: 1045px;
		height: 50px;
		background: lightgray;
		line-height: 50px;
	}
	.orderCont-head>em:nth-of-type(1){
	 padding-left: 20px;
	}
	.orderCont-head>em:nth-of-type(2){
		padding-left: 50px;
	}
	.shopName{
			color: rgb(64,149,69);
		margin-left: 100px;
	}
	.orderState{
		float: right;
		color:rgb(247, 131, 39);
		margin-right: 10px;
	}
	.orderCont-head>em:nth-of-type(2){
		padding-left: 50px;
	}
	.orderCont-head>em:nth-of-type(3){
			float: right;
	}
	.orderCont-cont{
		width: 100%;
		height: 242px;
		border-bottom: 1px solid lightgray;
border-right: 1px solid lightgray;
	}
	.orderList{
		width:700px;
		list-style: none;
		float: left;	
	}
	.orderList>li{
		width: 700px;
		height: 120px;
		border: 1px solid lightgray;
		float:left;
	}
	.orderList>li>img{
		width: 80px;
		height: 80px;
		margin-top: 20px;
		margin-right: 20px;
		float:left;
	}
	.orderList>li>span{
		float:left;
	display: inline-block;
	margin-top: 35px;
	margin-right: 120px;
	}
	.orderAdd{
		width: 210px;
		height: 242px;
		border: 1px solid lightgray;
		float:left;
	    text-align: center;
	}
	.orderAdd>span{
		display: inline-block;
	}
		.orderAdd>span:nth-child(2){
			margin-top: 60px;
		}
		.orderDo{
			text-align: center;
			
		}
		.orderDo>a{
		display: inline-block;
		margin-top: 60px;
		color: rgb(64,149,69);
		}
		.orderDo>button{
			display: inline-block;
			background: rgb(247, 131, 39);
			color: white;
			width: 90px;
			height: 30px;
			font-size: 16px;
			border-radius: 5px;
			border: none;
		}
		
</style>
