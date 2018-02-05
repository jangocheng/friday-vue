<template>
	<div>
		<headers></headers>
		<selfSwiper></selfSwiper>
		<ul class="integral">
		    <li v-for="item in goodsList">
		        <img v-bind:src="item.List"/>
		        <div class="integral-details">
		        	    <h3>{{item.texts}}</h3>
		        	    <h5>{{item.introduce}}</h5>
		        	    <i>积分 : <b>{{item.integration}}</b></i>
		        	    <i>价值 : {{item.prise}}</i>
		        	    <router-link to="/intDetail">立即兑换</router-link>
		        	    
		        </div>
		    </li>
		</ul>
		<foot></foot>
	</div>
</template>

<script>
	import headers from '@/components/head/Notload/header'
	import foot from '@/components/foot/foot'
	import selfSwiper from '@/components/other/selfSwiper'
	
	export default {
		name: "integral",
		components: {
			headers,
			foot,
			selfSwiper
		},
		data:function(){
			return {
				goodsList:[{
					List:require("../../img/integral/integral4.png"),
					texts:"新西兰佳沛黄金奇异果",
					introduce:"花蜜般的甘甜百吃不厌",
					integration:500,
					prise:"¥20.0"
				},{
					List:require("../../img/integral/integral5.png"),
					texts:"新西兰佳沛黄金奇异果",
					introduce:"花蜜般的甘甜百吃不厌",
					integration:500,
					prise:"¥20.0"
				},{
					List:require("../../img/integral/integral6.png"),
					texts:"新西兰佳沛黄金奇异果",
					introduce:"花蜜般的甘甜百吃不厌",
					integration:500,
					prise:"¥20.0"
				},{
					List:require("../../img/integral/integral7.png"),
					texts:"新西兰佳沛黄金奇异果",
					introduce:"花蜜般的甘甜百吃不厌",
					integration:500,
					prise:"¥20.0"
				},{
					List:require("../../img/integral/integral4.png"),
					texts:"新西兰佳沛黄金奇异果",
					introduce:"花蜜般的甘甜百吃不厌",
					integration:500,
					prise:"¥20.0"
				},{
					List:require("../../img/integral/integral5.png"),
					texts:"新西兰佳沛黄金奇异果",
					introduce:"花蜜般的甘甜百吃不厌",
					integration:500,
					prise:"¥20.0"
				},{
					List:require("../../img/integral/integral6.png"),
					texts:"新西兰佳沛黄金奇异果",
					introduce:"花蜜般的甘甜百吃不厌",
					integration:500,
					prise:"¥20.0"
				},{
					List:require("../../img/integral/integral7.png"),
					texts:"新西兰佳沛黄金奇异果",
					introduce:"花蜜般的甘甜百吃不厌",
					integration:500,
					prise:"¥20.0"
				},{
					List:require("../../img/integral/integral4.png"),
					texts:"新西兰佳沛黄金奇异果",
					introduce:"花蜜般的甘甜百吃不厌",
					integration:500,
					prise:"¥20.0"
				},{
					List:require("../../img/integral/integral5.png"),
					texts:"新西兰佳沛黄金奇异果",
					introduce:"花蜜般的甘甜百吃不厌",
					integration:500,
					prise:"¥20.0"
				},{
					List:require("../../img/integral/integral6.png"),
					texts:"新西兰佳沛黄金奇异果",
					introduce:"花蜜般的甘甜百吃不厌",
					integration:500,
					prise:"¥20.0"
				},{
					List:require("../../img/integral/integral7.png"),
					texts:"新西兰佳沛黄金奇异果",
					introduce:"花蜜般的甘甜百吃不厌",
					integration:500,
					prise:"¥20.0"
				}]
				
			}
	
		}
	}
	
</script>

<style>
	body,ul,div,img,h3,h5,i,b,a{
		margin: 0;
		padding: 0;
	}
	img {vertical-align: top;}
	a {text-decoration: none;}
	ul{list-style: none;}
	.integral{
		width: 1280px;
		margin: auto;
		margin-bottom: 41px;
		display: flex;
		justify-content: space-between;
		flex-wrap: wrap;
	}
	.integral>li{
		width: 305px;
		height: 479px;
		border: 1px solid #ececec;
		margin-top: 20px;
		position: relative;
	}
	.integral>li>img{
		width: 305px;
		height: 479px;
	}
	.integral>li:nth-child(4n+1)>img{
		width: 261px;
		height: 253px;
		margin-left: 22px;
		margin-top: 35px;
	}
	.integral-details{
		width: 307px;
		height: 165px;
		position: absolute;
		bottom: 0;
		text-align: center;
	}
	.integral-details>h3{
		font-weight: normal;
		color: #333;
		font-size: 19px;
		line-height: 19px;
	}
	.integral-details>h5{
		color: #666;
		font-size: 14px;
		line-height: 50px;
	}
	.integral-details>i{
		font-weight: normal;
		font-size: 18px;
		color: #666;
	}
	.integral-details>i>b{
		font-size: 20px;
		color: #ff5757;
		margin-right: 26px;
	}
	.integral-details>a{
		display: block;
		width: 150px;
		height: 36px;
		color: #fff;
		background: #f08200;
		font-size: 17px;
		text-align: center;
		line-height: 36px;
		margin: auto;
		margin-top: 20px;
		border-radius: 20px;
	}
</style>