<template>
	<div>
	<notlogged v-if='!loadBol'></notlogged>
	<load v-if='loadBol'></load>
		<div class="box">
			<!--中间部分-->
			<div class="header-center">
				<!--礼拜五logo-->
				<router-link to="/"><img src="../../../img/head/home-logo.png" /></router-link>
				<input class="center-search" type="" placeholder="请输入关键字进行搜索" />
				<div class="search-logo"><router-link to="/goodskind"><img class="logo-pic" src="../../../img/head/center-search.png"/></router-link></div>
				<!--个人中心-->
				<span class="center-user"  v-on:click="logFn()">
					个人中心
				</span>
				<span  class="center-shopcar" v-on:click="logFn1()">购物车</span>
				
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
				<div class="header-allkinds" v-on:mouseenter="enter()" v-on:mouseleave="leave()">全部分类

					<!--最外层的div-->
					<div class="header-nav-box">
						<!--全部分类中的一级导航-->
						<ul class="uls">
							<li v-for="item in items"  class="lis" v-on:mouseenter="shownext($event)" v-on:mouseleave="hide($event)">
								<img :src="item.pic" />
								<span>{{item.name}}</span>
								<!--二级导航-->
								<div v-on:mouseenter="bgchange()"  v-on:mouseleave="bgchange1()" class="second-nav1">
									<ul>
										<li v-for="title in item.navs">{{title}}</li>
									</ul>
								</div>
							</li>
						</ul>

					</div>
					<!--右侧div-->
					<div class="header-nav-right"></div>
				</div>
				<div class="cg">
					<router-link to="/">首页</router-link>
			    </div>
				<div class="cg">
					<router-link to="/samecity">同城</router-link>
					</div>
				<div class="cg">
					<router-link to="/firday">礼拜五</router-link>
					</div>
				<div class="cg">
					<router-link to="/integral">积分商城</router-link>
					</div>
				<div class="cg">
					<!--跳转到404页面-->
					<router-link to="/nav">导航+</router-link>
					</div>

			</div>
		</div>
	</div>
</template>

<script>
import notlogged from "@/components/head/Notload/notlogged"
import load from "@/components/head/load/reg-nav"
	export default {
		name: "headFoot",
		data: function(){
			return {
			items: [{
					pic: require("../../../img/head/1.png"),
					name:"新鲜水果",
					navs:[
					'水果礼盒',
					'进口水果',
					'有机水果',
					'进口水果'
					]
					
			},{
				pic:require("../../../img/head/2.png"),
				name:"田园蔬菜",
				navs:[
					'蔬菜礼盒',
					'有机蔬菜',
					'地产蔬菜',
					'进口蔬菜'
					]
			},{
				pic:require("../../../img/head/3.png"),
				name:"肉类家禽",
				navs:[
					'羊肉',
					'牛肉',
					'鸡肉',
					'鸭肉'
					]
			},{
				pic:require("../../../img/head/4.png"),
				name:"海鲜水产",
				navs:[
					'海鲜礼盒',
					'国产海鲜',
					'进口海鲜',
					'干货其他'
					]
			},{
				pic:require("../../../img/head/5.png"),
				name:"优选食材",
				navs:[
					'优选米面',
					'优选杂粮',
					'粮油调味',
					'其他食材'
					]
			},{
				pic:require("../../../img/head/6.png"),
				name:"零食酒水",
				navs:[
					'葡萄酒',
					'白酒',
					'茶叶',
					'零食坚果',
					"特色干果"
					]
			},{
				pic:require("../../../img/head/7.png"),
				name:"蛋奶速食",
				navs:[
					'方便面',
					'奶制品',
					'其他',
					]
			},{
				pic:require("../../../img/head/8.png"),
				name:"全球代购",
				navs:[
					'母婴用品',
					'洗护用品',
					'保健品',
					'鸭肉'
					]
			},	
			]
		}
		},
		computed:{
			loadBol(){
				return  sessionStorage.getItem("loadBol");	
			}
		},
		components: {
			notlogged,
			load
		},
		methods: {
		logFn:function(){
		if(sessionStorage.getItem("phNum")){
		this.$router.push({path:'/person'});
		}
		else{
				this.$store.state.logoBol=true
			}
			},
			logFn1:function(){
		if(sessionStorage.getItem("phNum")){
			this.$router.push({path:'/shopCar'});
		}else{
				this.$store.state.logoBol=true
			}
			},
			changebg:function(event){
				var el=event.target;
				$(el).css("background-color","#fo8200")
			},
			enter: function() {
				$(".header-nav-box").css({
					"display": "block"
				})
			},
			//移入一级li标签二级导航出现
			shownext: function(event) {
				var el = event.target;
//				console.log(el)
				$(el).find(".second-nav1").css("display", "block");
				//出现二级导航背景
				$(".header-nav-right").css("display", "block")
				//出现二级导航
			},
			//移除li标签二级导航隐藏
			hide:function(event){
				var el = event.target;
				$(el).find(".second-nav1").css("display", "none");
			},
			//移入二级导航框背景透明
			bgchange: function() {
				$(".second-nav1 ul li").css("background-color", "transparent")
			},
			//移除li标签背景为白色
			bgchange1: function() {
				$(".second-nav1 ul li").css("background-color", "white")
			},
			leave: function() {
				$(".header-nav-box").css({
					"display": "none"
				})
				$(".header-nav-right").css("display", "none")
			},
		}
	}
</script>

<style>
	.box {
		width: 1280px;
		height: 180px;
		margin: 0 auto;
		position: relative;
	}
	
	.header-center {
		width: 100%;
		height: 70px;
		margin-top: 25px;
		position: relative;
	}
	
	.center-search {
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
	
	.search-logo {
		display: inline-block;
		width: 40px;
		height: 48px;
		background-color: #4b943d;
		position: absolute;
		bottom: 4px;
		left: 932px;
		cursor: pointer;
	}
	
	.logo-pic {
		display: inline-block;
		position: absolute;
		left: 10px;
		top: 12px;
	}
	/*个人中心*/
	
	.center-user,
	.center-shopcar {
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
	
	.center-user {
		right: 150px;
		bottom: 4px;
		background: url(../../../img/head/head-user.png) no-repeat 20px center;
		background-color: #f8f8f6;
	}
	
	.center-shopcar {
		right: 3px;
		bottom: 4px;
		background: url(../../../img/head/head-user.png) no-repeat 20px center;
		background-color: #f8f8f6;
	}
	/*热门*/
	
	.header-hot {
		color: #707070;
		width: 1000px;
		padding-left: 180px;
		text-align: center;
	}
	
	.header-hot a {
		font-size: 15px;
		display: inline-block;
		margin-left: 14px;
		color: #707070;
	}
	/*底部*/
	
	.header-bottom {
		width: 100%;
		height: 50px;
		margin-top: 14px;
	}
	
	.header-bottom div {
		display: inline-block;
		text-align: center;
		padding: 15px 0;
		width: 150px;
		line-height: 20px;
		color: #323333;
		border-right: 1px solid #E8E8E8;
		float: left;
		cursor: pointer;
		position: relative;
	}
	.header-bottom div a{
		color: #323333;
	}
	.header-bottom .cg:hover{
	 	background-color: #f08200;
	 	
	}
	.header-bottom .cg a:hover{
		color: white;
	}
	/*一级导航列表*/
	
	.header-bottom .header-nav-box {
		margin: 0;
		padding: 0;
		position: absolute;
		top: 51px;
		left: 0;
		width: 150px;
		height: 490px;
		background-color: #ebffe7;
		display: none;
		z-index: 3;
	}
	
	.header-nav-box .uls {
		margin: 0;
		padding: 0;
		width: 150px;
		height: 500px;
		position: absolute;
		top: 0;
		left: 0;
		list-style: none;
	}
	
	.header-nav-box .uls .lis {
		width: 120px;
		height: 60px;
		line-height: 60px;
		padding: 0 15px;
		border-bottom: 1px solid #efeeec;
		background-color: white;
		cursor: pointer;
		color: #404040;
	}
	
	.header-nav-box .uls .lis:hover {
		background-color: transparent;
	}
	
	.header-nav-box ul li img {
		margin-top: 15px;
	}
	/*右侧div*/
	
	.header-bottom div .header-nav-right {
		border-right: 1px solid transparent;
	}
	/*二级导航的背景div*/
	
	.header-bottom .header-nav-right {
		position: absolute;
		top: 51px;
		left: 150px;
		width: 480px;
		height: 460px;
		background-color: #EBFFE7;
		display: none;
		z-index: 2;
	}
	/*二级导航的第一个*/
	
	.header-nav-box .second-nav1 {
		position: absolute;
		top: -15px;
		left: 150px;
		width: 480px;
		height: 100%;
		border-right: none;
		z-index: 6;
		display: none;
	}
	
	.second-nav1 ul {
		margin: 0;
		padding: 0;
		list-style: none;
		width: 480px;
	}
	
	.header-nav-box .second-nav1 ul li {
		width: 458px;
		height: 60px;
		line-height: 60px;
		padding-left: 20px;
		background-color: white;
		text-align: start;
		border: none;
	}
</style>