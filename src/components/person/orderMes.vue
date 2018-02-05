<template>
	<div class="orderMes">
		<div class="orderMesHead">
			<em>订单编号 : </em>
			<span>
			150319690000 
		</span><em>订单状态 : </em><span class="orderState1">
			待付款
		</span>
			<button class="cancelBtn">取消订单</button>
			<button class="payBtn">立即支付</button>

		</div>
		<div class="orderDetails">
			<p>支付方式<em>支付宝</em></p>
			<p>支付流水<em>456783245823154</em></p>
			<p>下单时间<em>2016-04-03 16:11:38</em></p>
			<p>支付时间</p>
			<p>发货时间</p>
			<p>收货时间</p>
			<p>取消时间</p>
			<p>申请退款时间</p>
			<p>退款原因</p>
			<p>退款时间</p>
			<p>订单备注<em>为谁风露立中霄</em></p>
		</div>
		<p>收货人信息</p>
		<div class="consignee">
			<p>收货人姓名<em>秦豆豆</em></p>
			<p>地址<em>中国河南找豆豆</em></p>
			<p>联系方式<em>手机 : 13243161668/固定电话 : 010-12548756</em></p>
		</div>
		<p>发票抬头</p>
		<div class="invoice">
			<p>发票抬头<em>大连万达股份有限公司</em></p>
			<p>发票内容<em>明细</em></p>
		</div>
		<p>卖家信息</p>
		<div class="shop">
			<p>店铺名称<em>爱豆豆水果店</em></p>
			<p>真实名字<em>秦豆豆</em></p>
			<p>联系方式<em>手机 : 13243161668/固定电话 : 010-12548756</em></p>
		</div>
		<ul class="ordermesList">
			<li>
				<span>爱豆豆水果店</span>
				<span>规格</span>
				<span>单价</span>
				<span>数量</span>
				<span>金额</span>
			</li>
			<li>
				<span><img src="../../img/person/bigHeadimg.png" alt="" /><em>云南蒙自石榴</em></span>
				<span>8个装</span>
				<span>¥ 569</span>
				<span>1</span>
				<span>¥ 569</span>
			</li>
			<li>
				<span><img src="../../img/person/bigHeadimg.png" alt="" /><em>云南蒙自石榴云南蒙自石榴云南蒙自石榴</em></span>
				<span>8个装</span>
				<span>¥ 569</span>
				<span>1</span>
				<span>¥ 569</span>
			</li>
		</ul>
		<div class="payDiv">
			<span>实付金额<i>¥ 9999</i> </span><br />
			<button>取消订单</button>
			<button>立即付款</button>
		</div>
	</div>
</template>

<script>
</script>

<style>
	.orderMes {
		width: 1087px;
		border: 1px solid lightgray;
		float: right;
	}
	
	.orderMesHead {
		width: 1087px;
		height: 55px;
		border-bottom: 1px solid lightgray;
		line-height: 55px;
		font: 17px;
	}
	
	.orderMesHead>em:nth-of-type(1) {
		display: inline-block;
		margin-left: 20px;
	}
	
	.orderMesHead>em:nth-of-type(2) {
		display: inline-block;
		margin-left: 200px;
	}
	
	.orderState1 {
		color: rgb(240, 130, 0);
	}
	
	.payBtn {
		display: inline-block;
		border: none;
		background: rgb(61, 142, 67);
		float: right;
		border-radius: 5px;
		margin-right: 18px;
		margin-top: 18px;
	}
	
	.cancelBtn {
		display: inline-block;
		border: none;
		background: lightgray;
		border-radius: 5px;
		float: right;
		margin-right: 18px;
		margin-top: 18px;
	}
	
	.orderDetails {
		width: 1048px;
		height: 420px;
		margin: 20px auto;
		background: lightgray;
		overflow: hidden;
		font-size: 15px;
		color: gray;
	}
	
	.orderDetails>p {
		margin-left: 20px;
	}
	
	.orderDetails>p>em {
		display: inline-block;
		margin-left: 50px;
	}
	
	.orderMes>p {
		color: rgb(61, 142, 67);
		padding-left: 20px
	}
	
	.consignee {
		width: 1047px;
		height: 128px;
		background: lightgray;
		margin: 20px auto;
		overflow: hidden;
		color: gray;
	}
	
	.consignee>p {
		margin-left: 20px;
	}
	
	.consignee>p>em {
		display: inline-block;
		margin-left: 50px;
	}
	
	.invoice {
		width: 1047px;
		height: 95px;
		background: lightgray;
		margin: 20px auto;
		overflow: hidden;
		color: gray;
	}
	
	.invoice>p {
		margin-left: 20px;
	}
	
	.invoice>p>em {
		display: inline-block;
		margin-left: 50px;
	}
	
	.shop {
		width: 1047px;
		height: 131px;
		background: lightgray;
		margin: 20px auto;
		overflow: hidden;
		color: gray;
	}
	
	.shop>p {
		margin-left: 20px;
	}
	
	.shop>p>em {
		display: inline-block;
		margin-left: 50px;
	}
	
	.ordermesList {
		width: 1047px;
		margin: 0 auto;
		list-style: none;
		border-left: 1px solid lightgray;
		border-right: 1px solid lightgray;
	}
	
	.ordermesList>li {
		width: 100%;
		height: 122px;
		line-height: 122px;
		border-bottom: 1px solid lightgray;
	}
	
	.ordermesList>li:nth-child(1) {
		width: 100%;
		height: 45px;
		background: lightgray;
		line-height: 45px;
	}
	
	.ordermesList>li>span {
		display: inline-block;
		width: 15%;
		text-align: center;
	}
	
	.ordermesList>li>span:nth-child(1) {
		display: inline-block;
		width: 37.2%;
		text-align: left;
	}
	
	.ordermesList>li>span>img {
		width: 80px;
		height: 80px;
		margin-top: 20px;
		margin-right: 10px;
	}
	
	.payDiv {
		float: right;
		margin-right: 20px;
		margin-top: 20px;
		font-size: 17px;
		margin-bottom: 30px;
	}
	
	.payDiv>span {
		float: right;
	}
	
	.payDiv>span>i {
		color: red;
		font-size: 26px;
	}
	
	.payDiv>button {
		display: inline-block;
		width: 150px;
		height: 50px;
		border: none;
		/*margin: 20px;*/
		color: white;
		font-size: 16px;
	}
	
	.payDiv>button:nth-of-type(1) {
		background: lightgray;
		/*float: left;*/
	}
	
	.payDiv>button:nth-of-type(2) {
		background: rgb(240, 130, 0);
		float: right;
	}
</style>