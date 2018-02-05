<template>
	<!--搜索结果的组件-->
	<div>
		<div class="search">
			<!--搜索排序-->
			<div class="s-order">
				<div class="s-left">
					<span>排序:</span>
					<a href="javascript:void(0)">销量</a>
					<a href="javascript:void(0)">价格</a>
					<a href="javascript:void(0)">评分最高</a>
				</div>
				<div class="s-right">
					<span>筛选:</span>
					<a href="javascript:void(0)" class="s-all">全国</a>
					<a href="javascript:void(0)">次日达</a>
				</div>

			</div>

			<!--搜索结果-->
			<div class="s-res">
				<!--水果图片-->
				<div class="first-fruitPic">
					<div>
						<img class="first-fruit-pic" src="../../img/first/first-6.png" />
						<span class="first-pic-information">
				<span class="first-fruit-name">新西兰佳沛黄金奇异果</span>
						<span class="first-fruit-intro">果肉绵密,花蜜般的甘甜百吃不厌</span>
						<em class="first-now-prize">¥28.80</em> <em class="first-used-prize">¥40.00</em>
						<!--购物车-->
						<a class="shoping-car" href="javascript:void(0)">
							<img class="first-shop-pic" src="../../img/first/first-shopcar.png" />
						</a>
						</span>
					</div>
				</div>

			</div>
		</div>
	</div>
</template>

<script>
	export default {
		name: "search"
	}
</script>

<style>
	.search {
		width: 1280px;
		margin: 0 auto;
	}
	em{
		font-style: normal;
	}
	a{
		font-style: normal;
	    text-decoration: none;
	}
	/*搜索排序*/
	
	.s-order {
		width: 100%;
		height: 40px;
		line-height: 40px;
	}
	.s-left,.s-right {
		display: inline-block;
	}
	.s-left span {
		display: inline-block;
		color: #707070;
	}
	.s-left a,.s-right a {
		margin-left: 30px;
		display: inline-block;
		width: 100px;
		height: 25px;
		line-height: 25px;
		color: #707070;
		background-color: #EDEDED;
		text-align: center;
	}
	.s-right {
		float: right;
		width: 300px;
		height: 25px;
	}
	.s-right span {
		display: inline-block;
		color: #707070;
	}
	.s-right a {
		clear: both;
		margin-left: 20px;
	}
	.s-right .s-all {
		background-color: #498E3D;
		color: white;
	}
	/*搜索结果展示页*/
	.s-res {
		width: 1280px;
		margin: 20px auto;
	}
	.first-fruitPic {
		width: 1280px;
		margin: 0 auto;
		display: flex;
		justify-content: space-between;
	}
	.first-fruitPic div {
		display: inline-block;
		width: 297px;
		height: 430px;
		font-size: 18px;
		text-align: center;
	}
	/*水果下面的图片*/
	
	.first-fruit-pic {
		display: block;
		margin: 70px auto;
		height: 167px;
		width: 267px;
	}
	.first-pic-information {
		display: inline-block;
		width: 270px;
		height: 128px;
		padding: 0 15px;
		text-align: start;
		position: relative;
	}
	
	.first-fruit-name {
		display: block;
		line-height: 48px;
		color: #333333;
	}
	.first-fruit-intro {
		display: block;
		margin-bottom: 15px;
		color: #666666;
		font-size: 14px;
	}
	.first-now-prize {
		color: #ff5757;
	}
	.first-used-prize {
		display: inline-block;
		font-size: 14px;
		text-decoration: line-through;
		color: #666666;
		margin-left: 10px;
	}
	.shoping-car .first-shop-pic {
		display: inline-block;
		width: 34px;
		height: 30px;
		position: absolute;
		right: 15px;
	}
</style>