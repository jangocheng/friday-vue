<template>
	<div>
		<div class="submitOrders">
			<load></load>
			<div class="submitOrders-content">
				<div class="submitOrders-content-header">
					<div class="submitOrders-content-logo">
						<router-link to="/"><img src="../../img/head/home-logo.png" /></router-link>
						<em>订单提交成功</em><i>></i>
						<em class="submitOrders-content-active">确认订单信息</em><i>></i>
						<em>我的购物车</em>
					</div>
				</div>
			</div>
		</div>
			<changeaddress v-if="addresBol"></changeaddress>
		<div class="orderSub-person">
			<h3>收货人地址</h3>
			<router-link to=""><span v-on:click="changeAddFn()">使用新地址</span></router-link>
			<div class="orderSub-defaultads">
				<input type="radio" />
				<i>秦豆豆 河南 郑州市 高新区 莲花街蓝鸥科技 固定电话010-21541589</i>
				<span>默认地址</span>
				<router-link to="">删除</router-link>
				<router-link to="">修改</router-link>
			</div>
			<div class="orderSub-newads" v-for="item in addRess">
				<input type="radio" />
				<i>{{item.to}}</i>
				<router-link to="">删除</router-link>
				<router-link to="">修改</router-link>
				<span>设置为默认地址</span>
			</div>
			<i>展开其他地址</i>
			<em>收起地址</em>
			<ul class="orderSub-ifmtion">
				<li>
					<h3>商品信息</h3>
				</li>
				<li>
					<i class="orderSub-name">商品名称</i>
					<i class="orderSub-default">规格</i>
					<i class="orderSub-pe">单价</i>
					<i class="orderSub-num">数量</i>
					<i class="orderSub-all">金额</i>
				</li>
				<li v-for="item in goodsPrise">
					<div class="orderSub-name">
						<img   :src="item.bigImg" />
						<span>{{item.title}}</span>
					</div>
					<em class="orderSub-default">{{item.rulerBuy}}</em>
					<em class="orderSub-pe">{{item.jiage}}</em>
					<div class="orderSub-num">
						<button v-on:click="jian(item)">-</button><input disabled="disabled" type="text" v-model="num" /><button v-on:click="jia(item)">+</button>
					</div>
					<em class="orderSub-active">¥{{item.shopcarAl}}</em>
				</li>
			</ul>
			<!--运费金额合计-->
			<div class="orderALL">
				<span>商家合计<i>¥{{allMon}}</i></span>
				<span>商品金额<i>¥{{allParse}}</i></span>
				<span>运费<i>¥5.00</i></span>
			</div>
			<!--开票信息-->
			<div class="order-open">
				<span class="order-openintro">开票信息</span>
				<form class="order-choose">
					<input type="radio" id="no" name="no" />
					<lable for="no">不需要</lable>
					<input type="radio" id="per" name="no" />
					<lable for="per">个人</lable>
					<input type="radio" id="unit" name="no" />
					<lable for="unit">单位</lable>
				</form>
				<span class="order-title">发票抬头:</span>
				<input type="" />
				<span class="order-check">请填写后认真核对发票信息</span>
				
			</div>
			<!--添加备注信息-->
			<div class="order-remark">
				<span>添加订单备注</span>
				<input type="" placeholder="限45个字,请填写有关商品,支付,发票信息" />
			</div>
			<!--次日达礼拜五专享-->
			<div class="order-next">
				<p class="order-nextday">	次日达·礼拜五专享</p>
				<span>选择送达时间:</span> <span class="order-sendtime">2016年9月18日<em>12:00~3:00</em></span> <span class="order-change"><img src="../../img/order.png"/>点击修改</span>
				<div class="order-time">
				<table border="0" cellspacing="0" cellpadding="0">
					<tr v-for="i in timelist">
					<td v-for="item in i">{{item}}</td>
					</tr>
				</table>
				<button class="order-no">取消</button><button class="order-yes">确定</button>
				</div>
			</div>
			<div class="order-submoney">
				<span class="order-b1">实付金额: <em>¥{{allMon}}</em></span>
				<span class="order-b2">订单完成后可获得积分: <em>300积分</em></span>
				<router-link to="/topupPayment"><button class="order-b3" v-on:click="ordFn()">提交订单</button></router-link>
			</div>

		</div>
		<foot></foot>
	</div>
</template>

<script>
	import load from "@/components/head/load/reg-nav"
	import changeaddress from '@/components/addres/changeaddress'
	import foot from '@/components/foot/foot'
	import small_Shoppingcarthead from '@/components/shop/small_Shoppingcarthead'
	export default {
		name: "emptyShopcar",
		components: {
			foot,
			small_Shoppingcarthead,
			changeaddress,
			load
		},

		data: function() {
			return {
						allParse:0,
						allMon:5,
				goodsPrise:[],
				//时刻表
				timelist:[["10:00-13:00","11:00-14:00","12:00-15:00","13:00-16:00","14:00-17:00"],["15:00-18:00","16:00-19:00","17:00-20:00","18:00-21:00","19:00-22:00"]],
				addRess: [{
					to: "秦豆豆 河南 郑州市 高新区 莲花街蓝鸥科技 固定电话010-21541589"
				}],
				goodsPrise: sessionStorage.getItem("Goodlist"),
				num: 1
			}
		},
		computed:{
			addresBol(){
				return this.$store.state.addresBol
			}	
		},
		methods: {
			ordFn:function(){
				sessionStorage.setItem("nowmoney",this.allMon)
			},
				
			changeAddFn:function(){
				this.$store.state.addresBol=true;
			},
			jian: function(item) {
			this.allParse=0;
				if(	item.buyNum == 0) {
					item.buyNum = 0;
					item.shopcarAl=item.buyNum-0*item.jiage-0;
				}else {
					item.buyNum--;
				    item.shopcarAl=item.buyNum*item.jiage;
				}
				for(var f=0;f<this.goodsPrise.length;f++){
				this.allParse+=this.goodsPrise[f].shopcarAl;
					
				}		
				this.allMon=this.allParse+5
			},
			jia: function(item) {
				this.num++;
				this.allParse=0;
				item.buyNum++;
				item.shopcarAl=item.buyNum*item.jiage;
				for(var f=0;f<this.goodsPrise.length;f++){
				this.allParse+=this.goodsPrise[f].shopcarAl;
				}		
				this.allMon=this.allParse+5
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
						if (data) {
							for(var i in data){
							console.log(data)
							data[i].shopcarAl=data[i].buyNum*data[i].jiage;
							_that.goodsPrise=data;
							_that.allParse+=data[i].shopcarAl;
							_that.allMon=_that.allParse+5;
							}
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
	
	img {
		vertical-align: top;
	}
	
	a {
		text-decoration: none;
	}
	
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
	
	.emptyShopcar-content {
		height: 310px;
	}
	
	.emptyShopcar-contents {
		width: 321px;
		height: 110px;
		margin: auto;
		margin-top: 181px;
	}
	
	.emptyShopcar-contents>img {
		float: left;
	}
	
	.emptyShopcar-text {
		font-size: 19px;
		line-height: 19px;
		margin-top: 16px;
		color: #666;
		float: right;
		margin-right: 8px;
		letter-spacing: 1px;
	}
	
	.emptyShopcar-contents>a {
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
	
	.orderSub-person {
		width: 1280px;
		margin: auto;
	}
	
	.orderSub-person>h3 {
		font-size: 19px;
		line-height: 58px;
		color: #666;
		display: inline-block;
	}
	
	.orderSub-person>a {
		font-size: 14px;
		color: #FFFFFF;
		background: #F08200;
		width: 90px;
		height: 30px;
		line-height: 30px;
		text-align: center;
		display: inline-block;
		border-radius: 5px;
		float: right;
		margin-top: 16px;
		margin-bottom: 13px;
	}
	
	.orderSub-defaultads {
		border: 1px solid #e4e4e4;
		background: #f4fff2;
		margin-bottom: 12px;
	}
	
	.orderSub-defaultads>input {
		margin-left: 18px;
		margin-right: 12px;
	}
	
	.orderSub-defaultads>i {
		font-style: normal;
		color: #666;
		font-size: 15px;
		line-height: 38px;
		margin-right: 20px;
	}
	
	.orderSub-defaultads>span {
		color: #999;
		font-size: 14px;
	}
	
	.orderSub-defaultads>a {
		line-height: 14px;
		float: right;
		color: #498e3d;
		margin-right: 15px;
		margin-left: 25px;
		margin-top: 12px;
	}
	
	.orderSub-newads {
		background: #f4fff2;
		margin-bottom: 12px;
	}
	
	.orderSub-newads>input {
		margin-left: 18px;
		margin-right: 12px;
	}
	
	.orderSub-newads>i {
		font-style: normal;
		color: #666;
		font-size: 15px;
		line-height: 38px;
		margin-right: 30px;
	}
	
	.orderSub-newads>a{
		line-height: 14px;
		float: right;
		color: #498e3d;
		margin-right: 15px;
		margin-left: 25px;
		line-height: 38px;
	}
	
	.orderSub-newads>span {
		float: right;
		color: #F08200;
		font-size: 14px;
		line-height: 38px;
	}
	
	.orderSub-person>i,
	.orderSub-person>em {
		font-style: normal;
		color: #498e3d;
		margin-bottom: 10px;
		line-height: 54px;
	}
	
	.orderSub-person>i {
		background: url(../../img/makesOrder/makesOrder_goods.png) no-repeat;
		background-image: 12px;
		padding-right: 20px;
		background-position: 100px 7px;
	}
	
	.orderSub-person>em {
		background: url(../../img/makesOrder/makesOrder_上箭头.png) no-repeat;
		background-image: 12px;
		padding-right: 20px;
		background-position: 70px 7px;
	}
	
	.orderSub-ifmtion {
		margin-bottom: 30px;
		list-style: none;
	}
	
	.orderSub-ifmtion>li>h3 {
		font-size: 19px;
		line-height: 60px;
		color: #666;
		border-top: 1px solid #e9e9e9;
	}
	
	.orderSub-ifmtion>li:nth-child(2) {
		background: #f2f2f2;
		color: #333;
		height: 47px;
		line-height: 47px;
	}
	
	.orderSub-ifmtion>li:nth-child(2) i {
		display: inline-block;
		font-style: normal;
		text-align: center;
	}
	
	.orderSub-name {
		display: inline-block;
	}
	
	.orderSub-num {
		display: inline-block;
		text-align: center;
	}
	
	.orderSub-ifmtion>li>em {
		display: inline-block;
		text-align: center;
	}
	
	.orderSub-ifmtion>li:nth-child(n+3) {
		height: 120px;
		border: 1px solid #ececec;
		border-top: none;
	}
	
	.orderSub-active {
		color: #ff5757;
		font-size: 18px;
		line-height: 120px;
	}
	
	.orderSub-default {
		color: #999;
		font-style: normal;
	}
	
	.orderSub-name>img {
		width: 80px;
		height: 80px;
		margin-top: -30px;
		margin-left: 60px;
	}
	
	.orderSub-name>span {
		font-size: 15px;
		color: #666;
		margin-left: 20px;
	}
	
	.orderSub-num>input {
		text-align: center;
		width: 47px;
		height: 23px;
		padding: 0;
		font-size: 16px;
		color: #999999;
	}
	
	.orderSub-num>button {
		width: 27px;
		height: 27px;
		color: #999999;
		font-size: 16px;
	}
	
	.orderSub-note {
		height: 116px;
		border-top: 1px solid #ececec;
		border-bottom: 1px solid #ececec;
	}
	
	.orderSub-note>h3 {
		font-size: 18px;
		line-height: 60px;
		color: #666;
	}
	
	.orderSub-note>input {
		width: 615px;
		height: 35px;
		font-size: 15px;
		padding-left: 10px;
		outline: none;
	}
	
	.orderSub-refer {
		height: 191px;
		float: right;
	}
	
	.orderSub-refer>i,
	.orderSub-refer>em {
		font-style: normal;
	}
	
	.orderSub-refer>a {
		background: #F08200;
		color: #FFFFFF;
		width: 150px;
		height: 50px;
		line-height: 50px;
		text-align: center;
		border-radius: 5px;
		display: block;
	}
	
	.orderSub-refer>i {
		font-size: 17px;
		color: #666;
	}
	
	.orderSub-refer>em {
		font-size: 22px;
		color: #ff5757;
		line-height: 102px;
	}
	
	.orderSub-name {
		width: 30%;
	}
	
	.orderSub-default {
		width: 15%;
	}
	
	.orderSub-pe {
		font-style: normal;
		width: 15%;
	}
	
	.orderSub-num {
		width: 15%;
	}
	
	.orderSub-all {
		width: 15%;
	}
	
	.orderSub-active {
		width: 15%;
		text-align: center;
		display: inline-block;
	}
	
	.orderALL {
		width: 1280px;
		height: 50px;
		line-height: 50px;
		font-size: 18px;
		padding-bottom: 10px;
		border-bottom: 1px solid #E9E9E9;
	}
	
	.orderALL span {
		display: inline-block;
		float: right;
		height: 50px;
		color: #666666;
		margin-right: 30px;
	}
	
	.orderALL span i {
		font-style: normal;
		color: #FF5757;
		font-size: 24px;
		float: right;
		padding-left: 20px;
	}
	/*开票信息*/
	.order-open{
		margin: 30px auto;
		width: 1280px;
		height: 150px;
		color: #666666;
		border-top:1px solid #E9E9E9;
		border-bottom:1px solid  #E9E9E9;
	}
	.order-openintro{
		display: block;
		font-size: 20px;
		padding: 20px 0;
	}
	.order-choose{
		padding-bottom: 15px;
	}
	.order-title+input{
		width: 370px;
		height: 30px;
		outline: none;
		line-height: 30px;
	}
	.order-check{
		display: inline-block;
		margin-left: 30px;
	}
	/*添加订单备注*/
	.order-remark{
		width: 1280px;
		height: 110px;
		border-bottom: 1px solid #E9E9E9;
	}
	.order-remark span{
		display: block;
		font-size: 20px;
		padding: 10px 0;
		color: #666666;
	}
	.order-remark span+input{
		width: 630px;
		height: 35px;
		line-height: 35px;
		font-size: 15px;
		padding-left:10px ;
	}
	/*次日达礼拜五专享*/
	.order-next{
		width: 1280px;
		height: 280px;
		border-top: 1px solid #E9E9E9;
		border-bottom: 1px solid #E9E9E9;
	}
	.order-nextday{
		line-height: 50px;
		color: #498E3D;
	}
	.order-nextday+span{
		color: #8C8C8C;
	}
	.order-sendtime{
		display: inline-block;
		margin:0 20px;
	}
	.order-sendtime em{
		font-style: normal;
	}
	.order-change{
		color: #498E3D;
		cursor: pointer;
	}
	.order-change img{
		display: inline-block;
		margin-right: 10px;
	}
	/*时刻表*/
	.order-time{
		width: 545px;
		height: 150px;
		border: 1px solid #D3D3D3;
		background-color: #f8fff7;
		margin-top: 15px ;
		margin-left: 150px;
		text-align: center;
	}
	table{
		padding: 20px 40px;
		color: #707070;
	}
	table td{
		border: 1px solid #E9E9E9;
	}
	.order-time button{
		width: 90px;
		height: 30px;
		text-align: center;
		line-height: 30px;
		border-radius: 5px;
		outline: none;
		border: none;
		color: white;
		font-size: 17px;
		margin: 10px;
		cursor: pointer;
		background-color: #999999;
	}
	.order-time .order-yes{
		background-color: #F08200;
	}
	/*提交订单*/
	.order-submoney{
		height: 230px;
		width: 300px;
		float: right;
		text-align: end;
	}
	.order-submoney span{
		display: block;
		line-height: 50px;
	}
	.order-b1{
		margin-top: 30px;
		color: #707070;
	}
	.order-b1 em{
		font-style:normal ;
		font-size: 24px;
		color: #FF5757;
	}
	.order-b2{
		color: #4d4d4d;
	}
	.order-b2 em{
		font-style:normal ;
		color: #F08200;
	}
	.order-submoney button{
		width: 150px;
		height: 50px;
		text-align: center;
		line-height: 50px;
		background-color: #F08200;
		color: white;
		border: none;
		outline: none;
		border-radius: 5px;
		font-size: 20px;
		margin-top:25px ;
		cursor: pointer;
	}
	
</style>