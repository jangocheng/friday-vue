<template>
	<!--dom结构-->
	<div class="addSuccess-cover">
		 <div class="addSuccess">
		 	<div class="addSuccess-determine">
		 		<span></span>
		 		<span></span>
		 	</div>
		 	<h3>已成功添加购物车</h3>
		 	<span v-on:click="goOnshop($event)"><router-link to="" class="addSuccess-conTinue" >继续购物</router-link></span>
		 	<router-link to="/shopCar" class="addSuccess-view">查看购物车</router-link>
		 </div>
	</div>
</template>

<script>
	export default{
		name:"addSu",
		methods:{
			goOnshop:function(item){
				this.$store.state.addCar=false 
			}
		}
	}
</script>

<style>
	body,template,div,h3,router-link,span{
		margin: 0;
		padding: 0;
	}
	img{
		vertical-align: top;
	}
	a{text-decoration: none;}
	html,body,#app{
		height: 100%;
	}
	.addSuccess-cover{
		height: 100%;
		position: fixed;
		top: 0;
		right: 0;
		bottom: 0;
		left: 0;
		background: rgba(0,0,0,0.4);
		z-index: 10;
	}
	.addSuccess{
		position: fixed;
		top: 400px;
		width: 646px;
		height: 305px;
		background: #fff;
		border: 5px solid #e2e2e2;
		left: 0;
		right: 0;
		margin: auto;
		text-align: center;
	
	}
	.addSuccess-determine{
		width: 40px;
		height: 40px;
		border-radius: 50%;
		border: 3px solid #f08200;
		position: absolute;
		top: 80px;
		left: 192px;
	}
	.addSuccess-determine span{
		background: #f08200;
		display: inline-block;
		position: absolute;
		height: 3px;
	}
	.addSuccess-determine span:nth-child(1){
		width: 11px;
		transform: rotate(45deg);
		left: 9px;
		top: 25px;
	}
	.addSuccess-determine span:nth-child(2){
		width: 22px;
		transform: rotate(125deg);
		left: 13px;
		top: 18px;
	}
	.addSuccess h3{
		font-size: 23px;
		color: #666;
		margin-top: 90px;
		margin-left: 50px;
	}
	.addSuccess-conTinue,.addSuccess-view{
		color: #fff;
		width: 170px;
		height: 47px;
		line-height: 47px;
		border-radius: 4px;
		margin-top: 65px;
		display: inline-block;
	}
	.addSuccess-conTinue{
		background: #f08200;
	}
	.addSuccess-view{
		background: #498e3d;
		margin-left: 35px;
	}
</style>