<template>
	<div>
		<heads></heads>
		<div class="special-pic">
			<!--位置导航-->
			<div class="firday-posnav">
				您当前的位置: <span>首页</span>><span>专题</span>
			</div>
		
		<!--图片集-->
		<div class="special-pic1">
			<img src="../img/special/pic1.png"/>
	         <div class="s-b1">
	         	<div class="s-b2">
	         		<strong>礼拜五</strong>
	         		<span>新鲜美食限量抢</span>
	         	</div>
	         	
	         </div>
		</div>
		<div class="special-pic2">
			<img src="../img/special/pic2.png"/>
			<div class="spcial-text1">
				<img src="../img/special/pic22.png"/>
			</div>
		</div>
		<div class="special-pic3">
		<img src="../img/special/pic3.png"/>
		<div class="spcial-text1">
			<img src="../img/special/pic33.png"/>
		</div>
		</div>
		</div>
		<foot></foot>

	</div>
</template>

<script>
	import heads from "@/components/header"
	import foot from "@/components/foot"
	export default {
		name: "special",
		components: {
			heads,
			foot
		}
	}
</script>

<style>
	.special-pic{
		width: 1280px;
		margin: 0 auto;
	}
	.firday-posnav {
		width: 1240px;
		padding: 20px 20px;
		background-color: #f4f4f4;
		font-size: 14px;
		/*不设置行高会默认撑起6像素*/
		line-height: 14px;
		cursor: pointer;
		color: #666;
		margin: 0px 0 20px;
	}
	
	.firday-posnav span {
		display: inline-block;
		margin: 0 15px;
	}
	.special-pic1,.special-pic2,.special-pic3{
		width: 100%;
		height: 500px;
		position: relative;
		margin: 10px 0;
		cursor: pointer;
	}
	.spcial-text1{
		width: 530px;
		height: 70px;
		position: absolute;
		top: 50%;
		margin-top: -35px;
		left: 50%;
		margin-left: -265px;
	}
	.s-b1{
		width: 490px;
		height: 220px;
		position: absolute;
		top: 50%;
		margin-top: -110px;
		left: 50%;
		margin-left: -245px;
		border: 1px solid white;
	}
	.s-b2{
		width: 470px;
		height: 200px;
		margin: 10px;
		border: 1px solid white;
		text-align: center;
	}
	.s-b2 strong{
		display: block;
		margin-top: 40px;
		font-size: 65px;
		color: white;
	}
	.s-b2 span{
		margin: 0;
		display: block;
		font-size: 35px;
		color: white;
		letter-spacing: 10px;
	}
</style>