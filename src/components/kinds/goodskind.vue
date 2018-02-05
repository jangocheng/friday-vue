<template>
	<div>
		<top></top>
		<!--位置导航-->
			<div class="firday-posnav">
				您当前的位置: <span>首页</span>><span>全部商品</span>><span>苹果</span>>阿克苏
			</div>
			<!--商品分类-->
		  <div class="goods-kind">
		  	<span>一级分类:</span>
		  	<a href="javascript:void(0)">全部</a>
		  	<a href="javascript:void(0)">苹果</a>
		  	<a href="javascript:void(0)">阿克苏</a>
		  	<a href="javascript:void(0)">酒店</a>
		  	<a href="javascript:void(0)">休闲</a>
		  	<a href="javascript:void(0)">电影</a>
		  </div>
		  <div class="goods-kind">
		  	<span>二级分类:</span>
		  	<a href="javascript:void(0)">全部</a>
		  	<a href="javascript:void(0)">苹果</a>
		  	<a href="javascript:void(0)">阿克苏</a>
		  	<a href="javascript:void(0)">酒店</a>
		  	<a href="javascript:void(0)">休闲</a>
		  	<a href="javascript:void(0)">电影</a>
		  </div>
		<!--引入搜索结果组件-->
		<search></search>
		<foot></foot>
	</div>
</template>

<script>
	  import top from '@/components/head/Notload/header'
	import foot from "@/components/foot/foot"
	import search from "@/components/kinds/search"
	export default{
		name:"goodskind",
		components:{
			search,
			top,
			foot
		}
	}
</script>

<style>
	.firday-posnav {
		width: 1240px;
		padding: 20px 20px;
		background-color: #f4f4f4;
		font-size: 14px;
		/*不设置行高会默认撑起6像素*/
		line-height: 14px;
		cursor: pointer;
		color: #666;
		margin: 0 auto;
	}
	
	.firday-posnav span {
		display: inline-block;
		margin: 0 15px;
	}
	/*商品分类*/
	/*对a进行样式重置*/
	a{
		text-decoration: none;
	}
	.goods-kind{
		width: 1280px;
		margin: 0 auto;
		padding: 12px 0;
		height: 30px;
		line-height: 30px;
		color: #8c8c8c;
		border-bottom: 1px solid #e7e7e7;
	}
	.goods-kind a{
		color: #8c8c8c;
		display: inline-block;
		width: 60px;
		height: 25px;
		line-height: 25px;
		margin-left: 20px;
	}
</style>