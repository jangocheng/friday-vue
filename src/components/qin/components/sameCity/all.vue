<template>
	<div >
		
		<ul class="all">
			<li v-for="item in scarr">
			<img class="service-logo" :src="item.pic"/>
			<div class="service">
				<strong class="service-name">{{item.name}}</strong>
				<span>
					<img :src="item.start"/>
					<img :src="item.start"/>
					<img :src="item.start"/>
					<img :src="item.start"/>
					<img :src="item.start1"/>
					<span class="service-prize">¥{{item.prize}}/人</span>
				</span>
				<span class="goodscity">{{item.pos}}</span>
			</div>
			
			</li>
		</ul>
		
		
	</div>
</template>

<script>
	export default{
		name:"all",
		data:function(){
			return{
				scarr:[{
					pic:require("../../img/samecity/1.jpg"),
					name:"洗涤服务",
					start:require("../../img/evaluate/star1.png"),
					start1:require("../../img/evaluate/start2.png"),
					prize:"69",
					pos:"礼拜五商城"
					
				},{
					pic:require("../../img/samecity/2.jpg"),
					name:"家庭维修",
					start:require("../../img/evaluate/star1.png"),
					start1:require("../../img/evaluate/start2.png"),
					prize:"50",
					pos:"礼拜五商城"
					
				},{
					pic:require("../../img/samecity/3.jpg"),
					name:"搬家服务",
					start:require("../../img/evaluate/star1.png"),
					start1:require("../../img/evaluate/start2.png"),
					prize:"100",
					pos:"礼拜五商城"
					
				},{
					pic:require("../../img/samecity/4.jpg"),
					name:"家政服务",
					start:require("../../img/evaluate/star1.png"),
					start1:require("../../img/evaluate/start2.png"),
					prize:"69",
					pos:"礼拜五商城"
					
				},{
					pic:require("../../img/samecity/5.jpg"),
					name:"洗涤服务",
					start:require("../../img/evaluate/star1.png"),
					start1:require("../../img/evaluate/start2.png"),
					prize:"69",
					pos:"礼拜五商城"
					
				},{
					pic:require("../../img/samecity/6.jpg"),
					name:"汽车服务",
					start:require("../../img/evaluate/star1.png"),
					start1:require("../../img/evaluate/start2.png"),
					prize:"50",
					pos:"礼拜五商城"
					
				},{
					pic:require("../../img/samecity/7.jpg"),
					name:"网购服务",
					start:require("../../img/evaluate/star1.png"),
					start1:require("../../img/evaluate/start2.png"),
					prize:"69",
					pos:"礼拜五商城"
					
				},{
					pic:require("../../img/samecity/8.jpg"),
					name:"旅游服务",
					start:require("../../img/evaluate/star1.png"),
					start1:require("../../img/evaluate/start2.png"),
					prize:"69",
					pos:"礼拜五商城"
					
				}]
			}
		}
	}
</script>

<style>
	.all{
		list-style: none;
		width: 1280px;
		margin: 0 auto;
		display: flex;
		flex-wrap: wrap;
		justify-content: flex-start;
	}
	.all li{
		background-color: rgb(248,246,247);
		width: 23%;
		height: 450px;
		margin-right: 1%;
		margin-bottom: 10px;
		border: 1px solid white;
	}
	.all li:hover{
		border: 1px solid green;
	}
	.service-logo{
		width: 100%;
		height: 300px;
	}
	.service{
		width: 100%;
		height: 130px;
		text-align: center;
	}
	.service-name{
		display: block;
		font-size: 30px;
		width: 150px;
		height: 40px;
		line-height: 40px;
		margin: 10px auto;
		color: #333333;
	}
	.service-prize{
		color: #EC6A17;
	}
	.goodscity{
		display: block;
		margin-top: 10px;
		font-size: 20px;
		color: #8b8a8a;
		
	}

</style>