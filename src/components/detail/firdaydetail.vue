<template>
	<div>
		<heads></heads>
		<div class="firday">
			<!--位置导航-->
			<div class="firday-posnav">
				您当前的位置: <span>首页</span>><span>全部商品</span>><span>{{kinds}}</span>>{{title}}
			</div>
			<!--商品简介-->
			<div class="firday-goods">
				<div class="firday-show">
					<img class="pic" :src="showImg1" />
					<div class="zoom"></div>
				</div>
				<div class="firday-bigshow">
					<img class="pics" :src="showImg1"/>
				</div>
				<div class="firday-listshow">
					<span class="firday-left"><</span>
					<span class="firday-right">></span>
				</div>
				<div class="firday-listshows">
					<div class="firday-listshow-inside">
					    <img :src="showImg1" alt=""  />
					     <img :src="showImg2" alt=""  />
					      <img :src="showImg3" alt=""  />
					       <img :src="showImg4" alt=""  />
					        <img :src="showImg4" alt="" />
					</div>
				</div>
				
				<!--左边列表-->
				<div class="firday-goods-left">
					<div class="firday-goods-title">
						<strong>{{title}}</strong>
						<span>全国</span>
						<span>礼拜五</span>
						<span>次日达</span>
						<span>自营</span>
					</div>
					<div class="firday-goods-intro">
						<div class="firday-goods-pic">
							<img src="../../img/firday/pic.png" />
							<span>资深买家</span>
						</div>
						<div class="firday-goods-conts">
							<p>{{intro}}</p>
						</div>
					</div>
					<!--现价-->
					<div class="firday-goods-prize">
						<strong class="firday-now-prize">现价:¥<em>{{jiage}}</em></strong> <span class="firday-used-prize">原价:¥{{oldparse||40.0}}</span> <br />
						<span class="firday-choose">请选择规格<em v-for="i in  ruList" v-on:click="changeRul(i,$event)">{{i}}</em></span>
					</div>
					<!--底部数量选择-->
					<div class="firday-left-bottom">
						数量: <em v-on:click="cut()">-</em><input type="text" v-model="num" />件 <em v-on:click="add()">+</em><span class="add" <span v-on:click="addCarFn()">加入购物车</span> <span class="buy">立即购买</span>

						<!--收藏商品-->
						<div class="firday-bottom-last">
							<i class="b-pic">
								<img src="../../img/evaluate/star1.png"/>
								<img src="../../img/evaluate/start2.png"/>
							</i> 收藏此商品
							<div class="bottom-share">分享到:
								<div class="bdsharebuttonbox">
									<a href="#" class="bds_more" data-cmd="more"></a>
									<a href="#" class="bds_qzone" data-cmd="qzone"></a>
									<a href="#" class="bds_tsina" data-cmd="tsina"></a>
									<a href="#" class="bds_tqq" data-cmd="tqq"></a>
									<a href="#" class="bds_renren" data-cmd="renren"></a>
									<a href="#" class="bds_weixin" data-cmd="weixin"></a>
								</div>
							</div>
						</div>
					</div>

				</div>

			</div>
		</div>
		<!--商品详情 商品评价导航-->
		<div class="com-nav">
			<router-link to="/firdaydetail/" v-on:click="tab(event)">商品详情</router-link>
			<router-link to="/firdaydetail/evaluate">商品评价</router-link>
			<div class="com-nav-addcar"><em href="javascript:void(0)"></em><span v-on:click="addCarFn()"> 加入购物车</span> </div>
		</div>
		
		<addsu v-if="addCar"></addsu>
		<router-view></router-view>
		<foot></foot>
	</div>
</template>

<script>
	import addsu from  "@/components/shop/addSuccess"
	import heads from "@/components/head/Notload/header"
	import foot from "@/components/foot/foot"
	export default {
		name: "firday",
		data: function() {
			return {
				ruList:["500g","1000g","2000g"],
				num: "1",
				showImg1:"",
				showImg2:"",
				showImg3:"",
				showImg4:"",
			title:sessionStorage.getItem("title"),
			jiage:sessionStorage.getItem("jiage"),
			oldparse:sessionStorage.getItem("oldparse"),
			intro:"",
			kinds:sessionStorage.getItem("kinds"),
			rulerBuy:""
			}
		},
		components: {
			heads,
			foot,
			addsu
		},
		methods: {
			changeRul:function(i,event){
            this.rulerBuy=i;
            var toggle=event.currentTarget;
            $(toggle).siblings().css("background","white")
            toggle.style.backgroundColor="red";
			},
			cut: function() {
				if(this.num == 0) {
					this.num = 0
				} else {
					this.num--;
				}
			},
			add: function() {
				this.num++;
			},
			addCarFn:function(){
			if(sessionStorage.getItem("phNum")){
				var _that=this
		  		 $.ajax({
					type: "post",
					dataType: "json",
					url: "/api/buy",
					data: {
					act:"addCar",
					bigImg:sessionStorage.getItem("bigImg"),
					jiage:sessionStorage.getItem("jiage"),
					rulerBuy:this.rulerBuy,
                    phNum:sessionStorage.getItem("phNum"),
                    buyNum:this.num,
                    title:sessionStorage.getItem("title"),
                    shopcarAl:this.num*sessionStorage.getItem("jiage")
					},
					success: function(data) {
						if(data){
							_that.$store.state.addCar=true;
						}
					}
				});							
			}else{
				this.$store.state.logoBol=true
			}
		  },
			tab:function(event){
				//获取当前点击对象
				var toggle=event.currentTarget
			}
		},        
	     computed:{
	     	addCar(){
	     			return  this.$store.state.addCar
	     	},
    
	     },
		  created(){
		  	if(sessionStorage.getItem("rush")=="true"){
				window.location.reload();
				sessionStorage.setItem("rush",false)
			}
		  	 var _that =this;
		  	if(sessionStorage.getItem("actt")=="goods"){
		  		 $.ajax({
					type: "post",
					dataType: "json",
					url: "/api/goods",
					data: {
					id:sessionStorage.getItem("id"),
                    act:"detail"
					},
					success: function(data) {
						if(data){
                                data.samll1 = require("../../img/goods/"+data[0].samll1)	
                                data.samll2= require("../../img/goods/"+data[0].samll2)	
                                data.samll3= require("../../img/goods/"+data[0].samll3)	
                                data.samll4= require("../../img/goods/"+data[0].samll4)	
                                _that.showImg2= data.samll2
						  		_that.showImg1= data.samll1
						  		_that.showImg3= data.samll3
						  		_that.showImg4= data.samll4
						}
					}
				});
		  	}else if(sessionStorage.getItem("actt")=="othergoods"){
		  		 $.ajax({
					type: "post",
					dataType: "json",
					url: "/api/goods",
					data: {
					id:sessionStorage.getItem("id"),
                    act:"detail1"
					},
					success: function(data) {
						if(data){
							console.log(data);
                                data.samll1 = require("../../img/goods/"+data[0].small1)	
                                data.samll2= require("../../img/goods/"+data[0].small2)	
                                data.samll3= require("../../img/goods/"+data[0].small3)	
                                data.samll4= require("../../img/goods/"+data[0].small4)	
						  		_that.showImg1= data.samll1
						  		_that.showImg2= data.samll2
						  		_that.showImg3= data.samll3
						  		_that.showImg4= data.samll4
						  		_that.intro=data[0].intros
						}
					}
				});
		  	}
	        
			
  }
	}
</script>

<style>
	em {
		font-style: normal;
	}
	.firday {
		width: 1280px;
		margin: 20px auto;
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
	.firday-goods {
		width: 100%;
		height: 630px;
		margin: 0 auto;
		position: relative;
	}
	
	.firday-show {
		width: 500px;
		height: 500px;
		display: inline-block;
	}
	
	.firday-show>img {
		width: 500px;
		height: 500px;
	}
	
	.firday-bigshow {
		width: 300px;
		height: 300px;
		overflow: hidden;
		position: absolute;
		top: 0;
		left: 520px;
		border: 1px solid lightgray;
		display: none;
	}
	
	.firday-bigshow>img {
		width: 800px;
		height: 800px;
		position: absolute;
		top: 10px;
	}
	.zoom {
		position: absolute;
		left: 0;
		top: 0;
		width: 195px;
		height: 195px;
		background: rgba(255, 255, 255, 0.7);
		display: none;
	}
	
	.pic {
		margin: 0;
		padding: 0;
		display: inline-block;
		width: 500px;
		height: 500px;
	}
	/*左边详情*/
	.firday-goods-left {
		display: inline-block;
		width: 730px;
		height: 630px;
		margin-left: 40px;
		float: right;
	}
	
	.firday-goods-title {
		display: inline-block;
		margin-left: 40px;
		width: 730px;
		height: 115px;
		border-bottom: 1px solid #ededed;
	}
	
	.firday-goods-title strong {
		display: block;
		margin: 20px 0;
		font-size: 25px;
		color: #333333;
	}
	
	.firday-goods-title span {
		display: inline-block;
		width: 65px;
		height: 25px;
		margin-right: 20px;
		color: white;
		text-align: center;
		line-height: 25px;
		cursor: pointer;
		background-color: #498E3D;
	}
	
	.firday-goods-title span:nth-child(3) {
		background-color: #f08200;
	}
	
	.firday-goods-intro {
		display: inline-block;
		margin-left: 40px;
		width: 700px;
		height: 180px;
		overflow: hidden;
		border-bottom: 1px solid #ededed;
	}
	
	.firday-goods-intro div {
		display: inline-block;
	}
	
	.firday-goods-pic {
		width: 120px;
		height: 180px;
		text-align: center;
	}
	
	.firday-goods-pic img {
		margin: 0;
		padding: 0;
		display: block;
		margin-top: 20px;
		margin-left: 20px;
	}
	
	.firday-goods-pic span {
		display: inline-block;
		width: 100%;
		height: 30px;
		text-align: center;
		line-height: 30px;
		font-size: 18px;
		border-radius: 15px;
		background-color: #ffe313;
		margin-top: 10px;
	}
	
	.firday-goods-conts {
		width: 570px;
		height: 120px;
		padding-bottom: 20px;
		line-height: 30px;
		color: #666666;
	}
	
	.firday-goods-prize {
		display: inline-block;
		margin-left: 40px;
		width: 700px;
	}
	/*现价*/
	
	.firday-now-prize {
		font-weight: 300;
		display: inline-block;
		font-size: 30px;
		color: #ff5757;
	}
	
	.firday-used-prize {
		font-weight: 300;
		display: inline-block;
		font-size: 18px;
		color: #666666;
		margin-left: 35px;
		text-decoration: line-through;
	}
	/*选择规格*/
	
	.firday-choose {
		display: inline-block;
		margin-top: 40px;
		height: 40px;
		line-height: 40px;
		font-size: 20px;
		color: #707070;
	}
	
	.firday-choose em {
		display: inline-block;
		font-size: 14px;
		line-height: 14px;
		padding: 10px 30px;
		border: 1px solid #d4d4d4;
		margin-left: 20px;
		cursor: pointer;
	}
	
	.firday-left-bottom {
		display: inline-block;
		margin-left: 40px;
		width: 700px;
		height: 130px;
		margin-top: 80px;
		font-size: 20px;
		color: #666666;
		position: relative;
		padding: 15px 0;
	}
	
	.firday-left-bottom input {
		display: inline-block;
		text-align: center;
		width: 130px;
		height: 30px;
		font-size: 20px;
		line-height: 30px;
		border: 1px solid #D3D3D3;
		outline: none;
		margin: 0 10px;
	}
	
	.firday-left-bottom em {
		font-style: normal;
		display: inline-block;
		width: 30px;
		height: 30px;
		line-height: 30px;
		text-align: center;
		background-color: #f2f2f2;
		cursor: pointer;
		position: absolute;
	}
	
	.firday-left-bottom em:nth-child(1) {
		left: 64px;
		top: 25px;
	}
	
	.firday-left-bottom em:nth-child(3) {
		left: 164px;
		top: 25px;
	}
	
	.firday-left-bottom span {
		display: inline-block;
		width: 150px;
		height: 50px;
		color: white;
		font-size: 20px;
		line-height: 50px;
		text-align: center;
		cursor: pointer;
		border-radius: 5px;
		background-color: #ffae4f;
	}
	
	.firday-left-bottom .add {
		margin-left: 30px;
	}
	
	.firday-left-bottom .buy {
		background-color: #f08200;
		margin-left: 20px;
	}
	
	.firday-bottom-last {
		width: 100%;
		height: 40px;
		line-height: 40px;
		margin-top: 10px;
	}
	
	.b-pic {
		font-style: normal;
		display: inline-block;
		margin-top: 14px;
	}
	
	.bottom-share {
		display: inline-block;
		margin-left: 50px;
		margin-top: 0;
		width: 300px;
		height: 50px;
		position: relative;
	}
	.bottom-share div{
		position: absolute;
		top: 0;
		left:70px;
	}
	/*商品详情导航*/
	
	.com-nav {
		width: 1280px;
		height: 50px;
		margin: 0 auto;
		background-color: #F4F4F4;
		position: relative;
	}
	
	.com-nav a {
		display: inline-block;
		width: 123px;
		height: 48px;
		text-align: center;
		line-height: 48px;
		border: 1px solid #e4e4e4;
		color: #323333;
	}
	
	.com-nav a:nth-child(1) {
		background-color: white;
		color: green;
		border: none;
		border-top: 1px solid green;
	}
	/*添加购物车*/
	
	.com-nav-addcar {
		position: absolute;
		top: 0;
		right: 0;
		display: inline-block;
		width: 180px;
		height: 50px;
		color: white;
		text-align: center;
		line-height: 50px;
		background-color: #f08200;
		font-size: 18px;
		cursor: pointer;
		display: none;
	}
	
	.com-nav-addcar em {
		display: inline-block;
		width: 30px;
		height: 30px;
		/*background: url(../img/introduction/shopcar.png) no-repeat center center;*/
		position: absolute;
		top: 10px;
		left: 12px;
	}
	
	.com-nav-addcar span {
		display: inline-block;
		margin-left: 20px;
	}
	
	router-view {
		width: 1280px;
		margin: 20px auto;
	}
	
	.firday-listshow {
		position: absolute;
		bottom: 10px;
		cursor: pointer;
	}
	
	.firday-listshow>span {
		font-size: 60px;
		color: #e4e4e4;
		line-height: 90px;
	}
	
	.firday-listshow>span:first-child {
		margin-right: 420px;
	}
	
	.firday-listshow-inside>img {
		width: 90px;
		height: 90px;
		margin-left: 10px;
	}
	
	.firday-listshows {
		position: absolute;
		bottom: 10px;
		left: 35px;
		width: 420px;
		height: 90px;
		overflow: hidden;
	}
	
	.firday-listshow-inside {
		position: absolute;
		width: 1000px;
		cursor: pointer;
		transition: 0.5s;
	}
</style>