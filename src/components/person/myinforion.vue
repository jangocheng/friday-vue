<template>
	<div>
		<div class="myinforion">
			<h3>我的消息</h3>
			<div class="myinforion-cont">
				<div class="myinforion-tle">
					<i>标题</i>
					<i>发送时间</i>
					<i>状态</i>
					<i>操作</i>
				</div>
				<ul>
					<li v-for="item in information">
						<span>{{item.tle}}</span>
						<span>{{item.dtime}}</span>
						<span>{{item.ischeck}}</span>
						<span><router-link to="/person/myMages">查看</router-link><button class="myinforion-bleft">删除</button></span>
					</li>
				</ul>
			</div>
		</div>
	</div>
</template>

<script>
	export default {
		name: "myinforion",
		data:function(){
			return {
			information:[{
				tle:"您的货物已发货您的货物已发货您的货物已发货",
				dtime:"2015年9月23日 15:25:07",
				ischeck:"未查看"
			},{
				tle:"您的货物已发货您的货物已发货您的货物已发货",
				dtime:"2015年9月23日 15:25:07",
				ischeck:"未查看"
			},{
				tle:"您的货物已发货您的货物已发货您的货物已发货",
				dtime:"2015年9月23日 15:25:07",
				ischeck:"未查看"
			},{
				tle:"您的货物已发货您的货物已发货您的货物已发货",
				dtime:"2015年9月23日 15:25:07",
				ischeck:"未查看"
			},{
				tle:"您的货物已发货您的货物已发货您的货物已发货",
				dtime:"2015年9月23日 15:25:07",
				ischeck:"未查看"
			},{
				tle:"您的货物已发货您的货物已发货您的货物已发货",
				dtime:"2015年9月23日 15:25:07",
				ischeck:"未查看"
			},{
				tle:"您的货物已发货您的货物已发货您的货物已发货",
				dtime:"2015年9月23日 15:25:07",
				ischeck:"未查看"
			}]
		}
		}
	}
	
</script>

<style>
	body,div,h3,ul{
		margin: 0;
		padding: 0;
	}
	ul{list-style: none;}
	.myinforion{
		width: 1085px;
		height: 623px;
		border: 1px solid #e9e9e9;
		float: right;
	}
	.myinforion>h3{
		font-size: 19px;
		line-height: 57px;
		padding-left: 21px;
		color: #3e3e3e;
		border-bottom: 1px solid #e9e9e9;
	}
	.myinforion-cont{
		width: 1042px;
		border: 1px solid #e9e9e9;
		margin-left: 21px;
		margin-top: 21px;
	}
	.myinforion-tle{
		background: #f2f2f2;
		height: 47px;
		line-height: 47px;
	}
	.myinforion-tle>i{
		font-style: normal;
		width: 24%;
		text-align: center;
		display: inline-block;
	}
	.myinforion-tle>i:nth-child(1),.myinforion-cont>ul>li>span:nth-child(1){
		width: 45%;
	}
	.myinforion-tle>i:nth-child(2),.myinforion-cont>ul>li>span:nth-child(2){
		width: 30%;
	}
	.myinforion-tle>i:nth-child(3),.myinforion-tle>i:nth-child(4),.myinforion-cont>ul>li>span:nth-child(3),.myinforion-cont>ul>li>span:nth-child(4){
		width: 10%;
	}
	.myinforion-cont>ul>li>span{
		display: inline-block;
		text-align: center;
	}
	.myinforion-cont>ul>li>span>a{
		margin-right: 10px;
	}
	.myinforion-cont>ul>li>span>a,.myinforion-cont>ul>li>span>button{
		color: #498E3D;
		cursor: pointer;
		font-size: 15px;
	}
	.myinforion-cont>ul>li>span>button{
		border: none;
		background: none;
		outline: none;
	}
	.myinforion-cont .myinforion-bleft{
		border-left: 1px solid #abadab;
	}
	.myinforion-cont>ul>li{
		height: 53px;
		border-bottom: 1px solid #e9e9e9;
		line-height: 53px;
		color: #666;
	}
	.myinforion-cont>ul>li:hover{
		background: #f4fff2;
	}
</style>