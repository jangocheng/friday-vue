<template>
	<div class="myCollection">
		<p>我的收藏</p>
		<div class="collectionCont">
			<div class="collContDaf">
				<img src="../../img/person/ware.png" alt="" />
				<p class="wareName">你我山前没相见,山后别相逢</p>
				<p class="wareTitle">你可知道你的名字解释了我的一生</p>
				<span class="warePrice"><em class="nowPrice">¥28.80</em><em class="originalPrice">¥40.00</em><em class="carImg"></em></span><br />
				<span class="colDaf">已失效</span>
			</div>
			<div class="collContSue">
				<img src="../../img/person/ware.png" alt="" />
				<p class="wareName">你我山前没相见,山后别相逢</p>
				<p class="wareTitle">你可知道你的名字解释了我的一生</p>
				<span class="warePrice"><em class="nowPrice">¥28.80</em><em class="originalPrice">¥40.00</em><em class="carImg"></em></span><br />
				<span class="colButton">取消收藏</span>
			</div>
		</div>
	</div>
</template>

<script>
</script>

<style>
	.myCollection {
		float: right;
		width: 1085px;
		height: 625px;
		border: 1px solid lightgray;
	}
	
	.myCollection>p {
		margin: 0;
		line-height: 55px;
		width: 100%;
		font-size: 20px;
		padding-left: 20px;
		border-bottom: 1px solid lightgray
	}
	
	.collectionCont>div {
		width: 305px;
		height: 480px;
		border: 1px solid lightgray;
		float: left;
		margin-top: 40px;
		margin-left: 45px;
	}
	
	.collectionCont>div>img {
		margin-top: 35px;
		width: 261px;
		height: 253px;
		margin-left: 20px;
	}
	
	.wareName {
		margin: 0;
		margin-top: 15px;
		font-size: 17px;
		margin-left: 17px;
	}
	
	.wareTitle {
		margin-left: 22px;
		font-size: 14px;
	}
	
	.warePrice {
		display: inline-block;
		padding-left: 20px;
	}
	
	.nowPrice {
		font-size: 20px;
		color: rgb(255, 137, 137);
	}
	
	.originalPrice {
		text-decoration: line-through;
		font-size: 16px;
		padding-left: 10px;
		padding-right: 80px;
	}
	
	.carImg {
		display: inline-block;
		width: 33px;
		height: 33px;
		background: url(../../img/person/shopCar.png) no-repeat;
		background-size: 33px;
		margin-bottom: -10px;
	}
	
	.colDaf {
		display: inline-block;
		width: 150px;
		height: 35px;
		background: lightgray;
		text-align: center;
		line-height: 35px;
		margin-left: 77px;
		border-radius: 20px;
		color: white;
		margin-top: 15px;
	}
	
	.colButton {
		display: inline-block;
		width: 150px;
		height: 35px;
		background: rgb(75, 148, 61);
		text-align: center;
		line-height: 35px;
		margin-left: 77px;
		border-radius: 20px;
		color: white;
		margin-top: 15px;
	}
</style>