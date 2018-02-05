<template>
	<div class="IntOrder">
		<div class="IntOrder-header"><span>积分订单</span>
			<em class="itemInt">当前积分 : <span>240分</span></em>
		</div>
		<!--订单-->
		<div class="IntCont">
			<div class="IntCont-head" v-for="item in interList">
				<em>订单号 : </em><span>{{item.internum}}</span>
				<em>下单日期 : </em><span>{{item.dates}}</span>
				<span class="shopName">爱果果水果店</span>
				<span class="orderState">关闭</span><em>订单状态 : </em>
				<div class="IntCont-cont">
					<ul class="orderList">
						<li><img src="../../img/person/orderlist.png" alt="" /><span>云南昭通丑苹果</span><span>6个装</span><span><em>¥</em>{{item.buyprize}}X{{item.buynumber}}</span></li>
						<li><img src="../../img/person/orderlist.png" alt="" /><span>云南昭通丑苹果</span><span>6个装</span><span><em>¥</em>{{item.buyprize}}X{{item.buynumber}}</span></li>
					</ul>
					<div class="orderAdd">
						<span>积分 : <em>{{item.nowinter}}</em></span>
					</div>
					<div class="orderDo">
						<router-link to="">查看详情</router-link>
						<button v-on:click="deletes">删除订单</button>
					</div>
				</div>
			</div>
		</div>
	</div>
</template>

<script>
	export default {
		name: "IntOrder",
		data: function() {
			return {
				interList: [{
					odernumber: 150319690000,
					dates:"2015.04.09",
					buyprize:35,
					buynumber:1,
					nowinter:58
				}]
			}

		},
		methods:{
			deletes:function(){
			}
		}

	}
</script>

<style>
	.IntOrder {
		width: 1085px;
		height: 625px;
		border: 1px solid lightgray;
		margin-left: 203px;
		overflow: hidden;
	}
	
	.IntOrder-header {
		width: 100%;
		height: 55px;
		border: 1px solid lightgray;
		font-size: 22px;
		line-height: 55px;
		color: rgb(108, 108, 108);
		padding-left: 20px;
	}
	
	.itemInt {
		float: right;
		padding-right: 50px;
	}
	
	.itemInt>span {
		color: rgb(247, 131, 39);
	}
	
	.IntCont {
		width: 1045px;
		margin-left: 19px;
		margin-top: 23px;
		border-right: 1px solid lightgray;
	}
	
	.IntCont-head {
		width: 1045px;
		height: 50px;
		background: lightgray;
		line-height: 50px;
	}
	
	.IntCont-head>em:nth-of-type(1) {
		padding-left: 20px;
	}
	
	.IntCont-head>em:nth-of-type(2) {
		padding-left: 50px;
	}
	
	.shopName {
		color: rgb(64, 149, 69);
		margin-left: 100px;
	}
	
	.orderState {
		float: right;
		color: rgb(247, 131, 39);
		margin-right: 10px;
	}
	
	.IntCont-head>em:nth-of-type(2) {
		padding-left: 50px;
	}
	
	.IntCont-head>em:nth-of-type(3) {
		float: right;
	}
	
	.IntCont-cont {
		width: 100%;
		height: 242px;
		border-bottom: 1px solid lightgray;
		border-right: 1px solid lightgray;
	}
	
	.orderList {
		width: 700px;
		list-style: none;
		float: left;
	}
	
	.orderList>li {
		width: 700px;
		height: 120px;
		border: 1px solid lightgray;
		float: left;
	}
	
	.orderList>li>img {
		width: 80px;
		height: 80px;
		margin-top: 20px;
		margin-right: 20px;
		float: left;
	}
	
	.orderList>li>span {
		float: left;
		display: inline-block;
		margin-top: 35px;
		margin-right: 120px;
	}
	
	.orderAdd {
		width: 210px;
		height: 242px;
		border: 1px solid lightgray;
		float: left;
		text-align: center;
	}
	
	.orderAdd>span {
		`margin-top: 80px;
		display: inline-block;
	}
	
	.orderDo {
		text-align: center;
	}
	
	.orderDo>a {
		display: inline-block;
		margin-top: 60px;
		color: rgb(64, 149, 69);
	}
	
	.orderDo>button {
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