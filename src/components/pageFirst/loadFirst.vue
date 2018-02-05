<template>
	<div>
		<top></top>
		<div class="f-swiper">
			<swipers></swipers>
		</div>
		<!--热卖商品-->
		<div class="first-hot-sell">
			<a href=""><img src="../../img/first/first-2.jpg" /></a>
			<a href=""><img src="../../img/first/first-3.jpg" /></a>
			<a href=""><img src="../../img/first/first-01.jpg" /></a>
			<a href=""><img src="../../img/first/first-4.jpg" /></a>
		</div>
		<!--礼拜五-->
		<div class="first-firday">
			<img src="../../img/first/first-5.png" />
			<span class="sp1">礼拜五</span>
			<span class="sp2">firday</span>
			<div class="first-firday-settime">
				<span class="sp3">距离开始</span>
				<em>5天</em>
				<em>08</em>:
				<em>16</em>:
				<em>13</em>
				<a href="" class="sp4">更多></a>
			</div>
		</div>
		<!--礼拜五图片-->
		<div class="first-firdayPic">
			<div>
				<img src="../../img/first/first-6.png" />
				<span class="first-goods-name">新西兰佳沛黄金奇异果</span>
				<span class="first-goods-num">6个装</span>
				<em class="first-firday-prize1">礼拜五价:</em> <em class="first-firday-prize2">¥28.80</em>
			</div>
		</div>
		<!--新鲜水果-->
		<div class="first-firday">
			<img src="../../img/first/first-fruit.png" />
			<span class="sp1">新鲜水果</span>
			<span class="sp2">采自新疆优质水果生产基地,品质一流</span>
			<a href="" class="sp5">更多></a>
		</div>
		<!--水果图片-->
		<div class="first-fruitPic">
			<div>
				<img class="first-fruit-pic" src="../../img/first/first-6.png" />
				<span class="first-pic-information">
				<span class="first-fruit-name">新西兰佳沛黄金奇异果</span>
				<span class="first-fruit-intro">果肉绵密,花蜜般的甘甜百吃不厌</span>
				<em class="first-now-prize">¥28.80</em> <em class="first-used-prize">¥40.00</em>
				<!--购物车-->
				<a class="shoping-car" href="javascrip:""">
					<img class="first-shop-pic" src="../../img/first/first-shopcar.png"/>
				</a>
				</span>
			</div>
		</div>
		<!--水产海鲜-->
		<div class="first-firday">
			<img src="../../img/first/first-seafresh.png" />
			<span class="sp1">水产海鲜</span>
			<span class="sp2">国内外新鲜到港的鱼虾蟹贝,我们全都有</span>
			<a href="" class="sp5">更多></a>
		</div>
		
		<!--水果图片-->
		<div class="first-fruitPic">
			<div>
				<img class="first-fruit-pic" src="../../img/first/first-6.png" />
				<span class="first-pic-information">
				<span class="first-fruit-name">新西兰佳沛黄金奇异果</span>
				<span class="first-fruit-intro">果肉绵密,花蜜般的甘甜百吃不厌</span>
				<em class="first-now-prize">¥28.80</em> <em class="first-used-prize">¥40.00</em>
				<!--购物车-->
				<a class="shoping-car" href="javascrip:""">
					<img class="first-shop-pic" src="../../img/first/first-shopcar.png"/>
				</a>
				</span>
			</div>
		</div>
		<!--肉类禽蛋-->
		<div class="first-firday">
			<img src="../../img/first/first-meat.png" />
			<span class="sp1">肉类禽蛋</span>
			<span class="sp2">国内外新鲜到港的鱼虾蟹贝,我们全都有</span>
			<a href="" class="sp5">更多></a>
		</div>
		
		<!--水果图片-->
		<div class="first-fruitPic">
			<div>
				<img class="first-fruit-pic" src="../../img/first/first-6.png" />
				<span class="first-pic-information">
				<span class="first-fruit-name">新西兰佳沛黄金奇异果</span>
				<span class="first-fruit-intro">果肉绵密,花蜜般的甘甜百吃不厌</span>
				<em class="first-now-prize">¥28.80</em> <em class="first-used-prize">¥40.00</em>
				<!--购物车-->
				<a class="shoping-car" href="javascrip:""">
					<img class="first-shop-pic" src="../../img/first/first-shopcar.png"/>
				</a>
				</span>
			</div>
		</div>
		
		
		<!--蛋奶速食-->
		<div class="first-firday">
			<img src="../../img/first/first-milk.png" />
			<span class="sp1">水产海鲜</span>
			<span class="sp2">国内外新鲜到港的鱼虾蟹贝,我们全都有</span>
			<a href="" class="sp5">更多></a>
		</div>
		
		<!--水果图片-->
		<div class="first-fruitPic">
			<div>
				<img class="first-fruit-pic" src="../../img/first/first-6.png" />
				<span class="first-pic-information">
				<span class="first-fruit-name">新西兰佳沛黄金奇异果</span>
				<span class="first-fruit-intro">果肉绵密,花蜜般的甘甜百吃不厌</span>
				<em class="first-now-prize">¥28.80</em> <em class="first-used-prize">¥40.00</em>
				<!--购物车-->
				<a class="shoping-car" href="javascrip:""">
					<img class="first-shop-pic" src="../../img/first/first-shopcar.png"/>
				</a>
				</span>
			</div>
		</div>

		<foot></foot>
	</div>
</template>
<script>
	 import top from '@/components/head/Notload/header'
	import foot from "@/components/foot/foot"
	import swipers from "@/components/other/selfSwiper"
	export default {
		name: "first-page",
		components: {
			top,
			foot,
			swipers
		}

	}
</script>
<style>
	.f-swiper {
		width: 100%;
		height: 450px;
		overflow: hidden;
	}
	.first-hot-sell {
		width: 1280px;
		height: 142px;
		margin: 10px auto;
		display: flex;
		justify-content: space-between;
	}
	/*礼拜五*/
	.first-firday {
		width: 1220px;
		padding: 30px;
		height: 40px;
		background-color: #ebffe8;
		margin: 10px auto;
		position: relative;
		border-bottom: 1px solid #498e3d;
	}
	
	.first-firday span {
		display: inline-block;
	}
	.first-firday .sp1 {
		font-size: 25px;
		color: #498e3d;
		margin: 0 15px;
	}
	.first-firday .sp2 {
		color: #afb4ae;
		font-size: 22px;
	}
	.first-firday-settime {
		display: inline-block;
		width: 500px;
		height: 40px;
		font-size: 20px;
		margin-left: 500px;
		line-height: 40px;
		color: #f08200;
	}
	.sp3 {
		font-size: 25px;
		color: #498e3d;
	}
	.first-firday-settime em {
		display: inline-block;
		width: 60px;
		height: 40px;
		background-color: #f08200;
		border-radius: 5px;
		color: white;
		font-size: 22px;
		text-align: center;
		line-height: 40px;
		margin: 0 4px;
	}
	.sp4 {
		color: #498e3d;
		margin-left: 10px;
	}
	/*礼拜五下面的图片*/
	.first-firdayPic,.first-fruitPic {
		width: 1280px;
		margin: 0 auto;
		display: flex;
		justify-content: space-between;
	}
	.first-firdayPic div,.first-fruitPic div {
		display: inline-block;
		width: 300px;
		height: 430px;
		font-size: 18px;
		background-color: #f8f6f7;
		text-align: center;
	}
	.first-firdayPic img {
		display: block;
		margin: 70px auto;
		height: 167px;
		width: 267px;
	}
	.first-goods-name {
		display: block;
		font-size: 18px;
		color: #5a5a5a;
	}
	.first-goods-num {
		display: block;
		font-size: 18px;
		color: #838383;
		margin-top: 10px;
		margin-bottom: 18px;
	}
	.first-firday-prize1 {
		font-size: 18px;
		color: #f08200;
	}
	
	.first-firday-prize2 {
		color: #ff5757;
	}
	.sp5 {
		display: inline-block;
		position: absolute;
		right: 30px;
	}
	/*水果下面的图片*/
	.first-fruit-pic{
		display: block;
		margin: 70px auto;
		height: 167px;
		width: 267px;
	}
	.first-pic-information{
		display: inline-block;
		width: 270px;
		height: 128px;
		padding: 0 15px;
		text-align: start;
		position: relative;
	}
	.first-fruit-name{
		display: block;
		line-height: 48px;
		color: #333333;
	}
	.first-fruit-intro{
		display: block;
		margin-bottom: 15px;
		color: #666666;
		font-size: 14px;
	}
	.first-now-prize{
		color: #ff5757;
	}
	.first-used-prize{
		display: inline-block;
		font-size: 14px;
		text-decoration: line-through;
		color: #666666;
		margin-left: 10px;
	}
	.shoping-car .first-shop-pic{
		display: inline-block;
		width: 34px;
		height: 30px;
        position: absolute;
        right: 15px;
	}
	
</style>