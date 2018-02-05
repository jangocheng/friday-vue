<template>
	<div class="recentBrowse">
		<p>最近浏览</p>
		<div class="recentCont">
			<div class="recentCont-cont">
			<img src="../../img/person/ware.png" alt=""/>
			<em class="colseBut"></em>
			<p class="wareName">你我山前没相见,山后别相逢</p>
			<p class="wareTitle">你可知道你的名字解释了我的一生</p>
			<span class="warePrice"><em class="nowPrice">¥28.80</em><em class="originalPrice">¥40.00</em><em class="carImg"></em></span><br />
			</div>
			
		</div>
		</div>
</template>

<script>
</script>

<style>
	.recentBrowse {
		float: right;
		width: 1085px;
		border: 1px solid lightgray;
		margin-bottom: 40px;
	}
	.recentBrowse>p {
		line-height: 57px;
		margin: 0;
		font-size: 20px;
		padding-left: 20px;
		border-bottom: 1px solid lightgray
	}
		.recentCont>div{
		width: 305px;
		height: 433px;
		border: 1px solid lightgray;
		float: left;
		margin: 23px 54px 35px 32px;
	}
		.recentCont>div>img{
		margin-top: 35px;
		width: 261px;
		height: 253px;
		margin-left: 20px;
	}
	.wareName{
		margin: 0;
		margin-top: -20px;
		font-size: 20px;
		margin-left: 20px;
	}
	.wareTitle{
		margin: 0;
		margin-left: 20px;
		font-size:14px;
		line-height: 44px;
	}
	.warePrice{
		display: inline-block;
		padding-left: 20px;
	}
	.nowPrice{
		font-size:26px;
		color: rgb(255,137,137);
	}
	.originalPrice{
		text-decoration: line-through;
		color: gray;
		padding-left: 10px;
		padding-right:80px ;
	}
	.carImg{
		display: inline-block;
		width: 34px;
		height: 30px;
		background: url(../../img/person/shopCar.png);
	}
	.colseBut{
		display: inline-block;
		width: 30px;
		height: 30px;
       background: url(../../img/person/colseBut.png);
       position: relative;
       top:-260px;
       left:260px ;
	}
</style>