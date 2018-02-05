<template>
	<div>
		<top></top>
		<!--中间内容-->
	      <section>
	      	<!--位置描述-->
	      	<div class="seller-top-pos" >
	      	您当前的位置: <span>首页</span>><span>全部商品</span>><span>苹果</span>>阿克苏
	      	</div>
	      	<div class="seller-goods">
	      	<!--商品图片-->
	      	<div  class="goods-pic">
	      		<img src="../img/seller/seller-pic.png"/>
	      		<div class="goods-swiper">
	      			<a href=""><img src="../img/seller/seller-left.png"/></a>
	      			<img src="../img/seller/seller-picswiper.png" alt="" />
	      			<img src="../img/seller/seller-picswiper.png" alt="" />
	      			<img src="../img/seller/seller-picswiper.png" alt="" />
	      			<img src="../img/seller/seller-picswiper.png" alt="" />
	      			<a href=""><img src="../img/seller/seller-right.png"/></a>
	      		</div>
	      		<!--底部轮播-->
	      	</div>
	      	<!--店铺描述-->
	      	<div class="goods-shop">
	          <span class="shop-name">礼拜五旗舰店</span>
	          <div class="intro">
	          <span>营业时间:全天24小时 <em>¥62/人</em></span> <br />
	          <span>18699563265</span> <br />
	          <span>浙江省温岭市人民西路281左侧</span><br />
	          </div>
	          <!--商家公告-->
	          <dl>
	          	<dt>商家公告:</dt>
	          	<dd>本店有最新优惠活动,本店有最新优惠活动本店有最新优惠活动,到点男士享受8折优惠本店19:18有最新优惠活动</dd>
	          </dl>
	      	</div>
	      	<!--综合评价-->
	      	<div class="goods-comments">
	      		<img src="../img/seller/seller-self.png"/>
	      		<div>
	      		综合评分: <progress max="100"value="80"></progress><span>4.5分</span>
	      		</div>
	      		<ul>
	      			<li>
	      				<em>描述</em> 
	      				<span>4.5分</span>
	      			</li>
	      			<li>
	      				<em>商品</em> 
	      				<span>4.5分</span>
	      			</li>
	      			<li>
	      				<em>服务</em> 
	      				<span>4.5分</span>
	      			</li>
	      		</ul>
	      		
	      	</div>
	      	</div>
	      	<!--商品分类-->
	      	<div class="seller-kinds">
	      	 <a href="">
	      	 	<router-link>全部</router-link>
	      	 </a>
	      	 <a href="">
	      	 	<router-link>餐饮</router-link>
	      	 </a>
	      	 <a href="">
	      	 	<router-link>酒店</router-link>
	      	 </a>
	      	 <a href="">
	      	 	<router-link>休闲</router-link>
	      	 </a>
	      	 <a href="">
	      	 	<router-link>电影</router-link>
	      	 </a>
	      	 <a href="">
	      	 	<router-link>汽车装修</router-link>
	      	 </a>
	      	 <a href="">
	      	 	<router-link>家政服务</router-link>
	      	 </a>
	      	</div>  	
		  </section>
		<foot></foot>
	</div>
</template>

<script>
	import top from '@/components/head'
	import foot from '@/components/foot'
	export default {
		name: "seller",
		components: {
			foot,
			top
		}
	}
</script>
<style>
	/*中间内容*/
	section {
		width: 1280px;
		margin: 216px auto 0;
	}
	/*商品产地描述*/
	.seller-top-pos{
		width: 1240px;
		padding:20px 20px ;
		background-color: #f4f4f4;
		font-size: 14px;
		cursor: pointer;
		color: #666;
		margin: 0px 0 20px;
	}
	.seller-top-pos span{
		display: inline-block;
		margin:0 15px;
	}
	.seller-goods{
		width: 100%;
		height: 346px;
	}
	.seller-goods div{
		display: inline-block;
		height: 100%;
	}
	.goods-pic{
		width: 500px;
		overflow: hidden;
		float: left;
	}
	/*图片下面的轮播图*/
	.goods-swiper{
		width: 100%;
        height: 50px;
	}
	.goods-swiper img{
		margin: 0 5px;
	}
	/*店铺介绍*/
	.goods-shop{
		width: 400px;
		margin-left: 20px;
		float: left;
	}
	.shop-name{
		width: 100%;
		font-size: 25px;
		color: #333;
		display: inline-block;
	    padding: 20px 0;
	    border-bottom: 1px solid #e3e3e3;
	    cursor: pointer;
	}
	.goods-shop div{
		width: 100%;
		height: 115px;
		padding: 20px 0;
		color: #666666;
		border-top: 1px solid #E3E3E3;
		border-bottom:1px solid #E3E3E3 ;
	}
	.goods-shop div span{
		display: inline-block;
		padding: 10px 20px;
		cursor: pointer;
	}
	.goods-shop div span:nth-child(1){
		background: url(../img/seller/seller-goods1.png) no-repeat left center;
	}
	.goods-shop div span:nth-child(1) em{
		font-style: normal;
		font-size: 18px;
		color: #f5aa51;
	}
	.goods-shop div span:nth-child(3){
		background: url(../img/seller/seller-goods2.png) no-repeat left center;
	}
	.goods-shop div span:nth-child(5){
		background: url(../img/seller/seller-goods3.png) no-repeat left center;
	}
	/*商家公告*/
	.goods-shop dt{
		margin-top:30px ;
	}
	.goods-shop dd{
		font-size: 12px;
		line-height: 25px;
		color: #707070;
	}
	/*评价*/
	.goods-comments{
		width: 300px;
		overflow: hidden;
		margin-left: 40px;
		background-color: #f4fff2;
	}
	.goods-comments img{
		float: right;
	}
	.goods-comments img+div{
		margin-top: 110px;
		padding-left: 20px;
		height: 20px;
		color: #666;
		font-size: 14px;
	}
	.goods-comments span{
		font-size: 18px;
		color: #fe7610;
	}
	.goods-comments em{
		display: block;
		margin-bottom: 10px;
		font-style: normal;
		color: #666666;
	}
	.goods-comments ul{
		width: 301px;
		margin-top: 40px;
		height: 60px;
		list-style: none;
		display: flex;
		justify-content: space-around;
	}
	.goods-comments ul li{
		padding: 0 27px;
		border-right: 1px dotted #D3D3D3;
	}
	
</style>