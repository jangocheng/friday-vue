<template>
	<div class="as">
		<div class="addaddress">
			<p class="as-title">添加地址</p>
			<div class="as-box">
				<span class="as-name">收货人姓名:</span><input type="" placeholder="可以收货人姓名" /></div>
			<div class="as-box">
				<span class="as-area">所在地区:</span>
				<div class="as-model">
					<distpicker></distpicker>
				</div>
			</div>
			<div class="as-box">
			<span class="as-detail">详细地址:</span><input type="" placeholder="用于接受获取的详细地址" />
			</div>
			<div class="as-box">
				<span>联系电话:</span>
				<input type="" placeholder="推荐使用电话" class="as-advice"/>
				<span>或固定电话:</span>  <input class="as-num" type="text"placeholder="区号" />-
				<input type="" placeholder="电话号码" class="as-phone"/>
			</div>
			<span class="as-bottom">
			<input type="radio"  /> <span class="as-always">设置为常用地址</span> <br />
			<button v-on:click="cAddFn()">返回</button> <button v-on:click="cAddFn()">保存</button>
			</span>
		</div>

	</div>
</template>

<script>
	import Distpicker from "@/components/other/distpicker/Distpicker.vue"
	export default {
		name: "changeaddress",
		components: {
			Distpicker
		},
		methods:{
			cAddFn:function(){
				this.$store.state.addresBol=false;
			}
		}
	}
</script>

<style>
	html,
	body,
	template,
	.as {
		height: 100%;
		width: 100%;
	}
	
	.addaddress {
		width: 685px;
		height: 445px;
		background-color: white;
		position: absolute;
		float: left;
		left: 0;
		right: 0;
		top: 0;
		bottom: 0;
		margin: auto;
		border: 5px solid #E2E2E2;
	}
	
	.as-title {
		padding-left: 35px;
		width: 650px;
		height: 64px;
		padding-top: 6px;
		line-height: 64px;
		color: #498E3D;
		border-bottom: 1px solid #E2E2E2;
	}
	
	.as-model {
		display: inline-block;
		width: 550px;
		height: 50px;
		margin-left: 0;
	}
	.as-box{
		padding-left: 40px;
		height: 50px;
		line-height: 50px;
	}
	.as-box span{
		font-size: 20px;
		color: #333333;
	}
	.as-box input{
		padding: 10px;
		width: 310px;
		line-height: 15px;
		font-size: 15px;
		border: 1px solid #D3D3D3;
	}
	.as-box .as-advice{
		display: inline-block;
		margin: 0 10px;
		width: 100px;
	}
	.as-box .as-num{
		width: 50px;
	}
	.as-box .as-phone{
		width: 125px;
	}
	.as-bottom{
		display: inline-block;
		padding-left: 150px;
	     width: 535px;
	}
	.as-always{
		display: inline-block;
		font-size: 20px;
		color: #5c5c5c;
		margin: 15px 0;
	}
	.as-bottom button{
		width: 110px;
		height: 35px;
		border-radius: 5px;
		text-align: center;
		line-height: 35px;
		color: white;
		outline: none;
		border: none;
		font-size: 17px;
		cursor: pointer;
	}
	.as-bottom button:nth-child(5){
		
		background-color: #f08200;
		margin-left: 120px;
	}
	
	
</style>