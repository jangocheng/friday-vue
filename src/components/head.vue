<template>
	<header>
				<notlogged></notlogged>
				<!--中间部分-->	
				<div class="header-top">
				<div class="header-center">
					<!--礼拜五logo-->
					<img src="../img/head/home-logo.png"/>
					<input  class="center-search" type="" placeholder="请输入关键字进行搜索" />
					<div class="search-logo"><img class="logo-pic" src="../img/head/center-search.png"/></div>
					<!--个人中心-->
					<a class="center-user" >个人中心</a>
					<a class="center-shopcar">购物车</a>
				</div>
				<!--热门-->
				<div class="header-hot">
					热门:
					<a href="">杂粮饭</a>
					<a href="">辣椒酱</a>
					<a href="">水果礼蓝</a>
					<a href="">擦玻璃</a>
					<a href="">蟹肉棒</a>
					<a href="">苹果</a>
				</div>
				<!--底部-->
				<div class="header-bottom">
					<span class="allkinds" v-on:mouseenter="enter()"  v-on:mouseleave="leave()">全部分类</span>
					<span >首页</span>
					<span >同城</span>
					<span >礼拜五</span>
					<span >积分商城</span>
					<!--全部分类-->
					<ul v-on:mouseenter="enter()" v-on:mouseleave="leave()">
						<li>
							<img src="http://qiniu.libaiwu.com.cn/goodsimg/1499328700168.jpg?imageMogr2/thumbnail/30x30!"/><a href="">新鲜水果</a>
					    </li>
						<li>
							<img src="http://qiniu.libaiwu.com.cn/goodsimg/1499328721907.jpg?imageMogr2/thumbnail/30x30!"/>
							<a href="">田园蔬菜</a>
						</li>
						<li>
							<img src="http://qiniu.libaiwu.com.cn/goodsimg/1499328739164.jpg?imageMogr2/thumbnail/30x30!"/>
							<a href="">肉类家禽</a
						</li>
						<li>
							<img src="http://qiniu.libaiwu.com.cn/goodsimg/1499328754690.jpg?imageMogr2/thumbnail/30x30!"/>
							<a href="">海鲜水产</a>
						</li>
						<li>
							<img src="http://qiniu.libaiwu.com.cn/goodsimg/1499328773807.jpg?imageMogr2/thumbnail/30x30!"/>
							<a href="">优选食材</a>
						</li>
						<li>
							<img src="http://qiniu.libaiwu.com.cn/goodsimg/1499328787452.jpg?imageMogr2/thumbnail/30x30!"/>
							<a href="">零食酒水</a>
						</li>
						<li>
							<img src="http://qiniu.libaiwu.com.cn/goodsimg/1499328800596.jpg?imageMogr2/thumbnail/30x30!"/>
							<a href="">蛋奶素食</a>
						</li>
						<li>
							<img src="http://qiniu.libaiwu.com.cn/goodsimg/1499328812080.jpg?imageMogr2/thumbnail/30x30!"/>
							<a href="">全球代购</a>
						</li>
						<li><a href=""></a></li>
					</ul>
				</div>
			</div>
	</header>
</template>

<script>
		import notlogged from "@/components/notlogged"
	export default {
		name: "header",
		components:{
			notlogged
		},
		methods:{
		enter:function(){  
			$(".allkinds").css({"background":"white","color":"black"})
				$(".header-bottom ul").css("display","block")
		
		},
		leave:function(){                      
				$(".header-bottom ul").css("display","none")
		
		},
	}
	}
   
</script>

<style>
	* {
		margin: 0;
		padding: 0;
	}
	a {
		text-decoration: none;
	}
	html,body,template {
		width: 100%;
		height: 100%;
	}
	header {
		width: 100%;
		margin: 0 auto;
		height: 216px;
	}
	.header-top{
		width: 1280px;
		margin: 0 auto;
	}
	.nav-top{
		width: 100%;
		height: 35px;
		position: relative;
	}
	.header-container {
		width: 167px;
		height: 35px;
		line-height: 35px;
		font-size: 15px;
		color: #666;
		display: inline-block;
		position: relative;
	}
	/*去除select的默认样式*/
	
	select {
		appearance: none;
		border: none;
		font-size: 15px;
		color: #666666;
		background-color: transparent;
		cursor: pointer;
		
	}
	
	.header-container:after {
		content: " ";
		width: 0;
		height: 0;
		border-left: 5px solid transparent;
		border-right: 5px solid transparent;
		border-top: 8px solid #666;
		position: absolute;
		top: 13px;
		right: 0px;
	}
	/*顶部右边样式*/
	.nav-top-right{
	  display: inline-block;
	  width: 470px;
	  height: 35px;
	  line-height: 35px;
	  overflow: hidden;
	  position: absolute;
	  right: 0;
	}
	.nav-top-right a{
		color: black;
		font-size: 14px;
		padding: 0 10px;
		border-right: 1px solid gray;
	}
	.nav-top-right a:nth-child(6){
		margin-left: 5px;
		padding-left:23px;
		border-right: none;
		background: url(../img/head/top-phone.png) no-repeat left center;
	}
	/*中间部分*/
	.header-center{
		width: 100%;
		height: 70px;
		margin-top: 25px;
		position: relative;
	}
	.center-search{
		width: 440px;
		border: 2px solid #4b943d;
		font-size: 16px;
		color: #a0a0a0;
		display: inline-block;
		padding: 12px 10px;
		position: absolute;
		bottom: 4px;
		left: 470px;
	}
	.search-logo{
		display: inline-block;
		width: 40px;
		height: 48px;
		background-color:#4b943d; 
		position: absolute;
		bottom: 4px;
		left: 932px;
		cursor: pointer;
	}
	.logo-pic{
		display: inline-block;
		position: absolute;
		left: 10px;
		top: 12px;
	}
	/*个人中心*/
	.center-user,.center-shopcar{
		display: inline-block;
		color: #666666;
		height: 40px;
	    width: 100px;
	    padding-right: 20px;
	    font-size: 14px;
	    line-height: 40px;
	    border: 1px solid #e5e5e5;
	    position: absolute;
	    text-align: right;
	}
	.center-user{
		right: 150px;
	    bottom: 4px;
	    background: url(../img/head/head-user.png) no-repeat 20px center;
	     background-color: #f8f8f6;
	}
	.center-shopcar{
		right: 3px;
	    bottom: 4px;
	    background: url(../img/head/head-user.png) no-repeat 20px center;
	     background-color: #f8f8f6;
	}
	/*热门*/
	.header-hot{
		color: #707070;
		width: 1000px;
		padding-left:180px;
		text-align: center;
	}
	.header-hot a{
		font-size: 15px;
		display: inline-block;
		margin-left: 14px;
		color: #707070;
	}
	/*底部*/
	.header-bottom{
		width: 100%;
		height: 50px;
		margin-top: 14px;
	}
	.header-bottom span{
		display: inline-block;
		padding: 14px 50px;
		color: #333;
		border-left: 1px solid #e8e8e8;
	}
	.header-bottom span:hover{
		color: white;
		background-color: rgb(240,130,0)
	}

	/*全部分类列表样式*/
	.header-bottom ul{
		position: absolute;
		list-style: none;
		width: 170px;
		height: 500px;
	    display: none;
	    background: white;
	    z-index: 2;
	}
	.header-bottom ul li{
		text-align: center;
		height: 25px;
		padding: 15px 20px;
		width: 130px;
		cursor: pointer;
		border: 1px solid lightgray;
	}
	.header-bottom ul img{
		float: left;
	}
	.header-bottom ul a{
		color: #666666;
	}
	
</style>