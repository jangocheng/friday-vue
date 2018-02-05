<template>
	<div>
		<div class="new-addaddress">
			<p class="new-as-title">添加新地址</p>
			<div class="new-as-box">
				<span class="new-as-name"><b>*</b>收货人姓名:</span><input type="" placeholder="可以收货人姓名" /></div>
			<div class="new-as-box">
				<span class="new-as-area"><b>*</b>所在地区:</span>
				<div class="new-as-model">
					<distpicker></distpicker>
				</div>
			</div>
			<div class="new-as-box">
			<span class="new-as-detail"><b>*</b>详细地址:</span><input type="" placeholder="用于接受获取的详细地址" />
			</div>
			<div class="new-as-box">
				<span class="new-as-phone"><b>*</b>联系电话:</span>
				<input type="" placeholder="推荐使用电话" class="new-as-advice"/>
				<span>或固定电话:</span>  <input class="new-as-num" type="text" placeholder="区号" />-
				<input type="" placeholder="电话号码" class="new-as-phone"/>
			</div>
			<span class="new-as-bottom">
			<input type="radio"/> <span class="new-as-always">设置为常用地址</span> <br />
			<button>保存</button>
			</span>
		</div>

	</div>
</template>

<script>
	import Distpicker from "@/components/person/distpicker/Distpicker.vue"
	export default {
		name: "newAddress",
		components: {
			Distpicker
		}
	}
	
</script>

<style>
	body,div,h3{
		margin: 0;
		padding: 0;
	}
	.new-addaddress {
		width: 1085px;
		height: 625px;
		background-color: white;
		float: right;
		margin-bottom: 40px;
		border: 1px solid #e1e1e1;
	}
	
	.new-as-title {
		margin: 0;
		padding-left: 35px;
		line-height: 56px;
		font-size: 20px;
		border-bottom: 1px solid #E2E2E2;
	}
	
	.new-as-model {
		display: inline-block;
		width: 550px;
		height: 50px;
		margin-left: 0;
	}
	.new-as-box>span>b{
		color: #F08200;
		margin-right: 10px;
	}
	.new-as-box{
		padding-left: 40px;
		height: 50px;
		line-height: 50px;
		margin-top: 15px;
	}
	.new-as-box span{
		font-size: 20px;
		color: #333333;
	}
	.new-as-box input{
		padding: 10px;
		width: 310px;
		line-height: 15px;
		font-size: 15px;
		border: 1px solid #D3D3D3;
	}
	.new-as-box .new-as-advice{
		display: inline-block;
		margin: 0 10px;
		width: 100px;
	}
	.new-as-box .new-as-num{
		width: 50px;
	}
	.new-as-box .new-as-phone{
		width: 125px;
	}
	.new-as-bottom{
		display: inline-block;
		padding-left: 150px;
	     width: 535px;
	}
	.new-as-always{
		display: inline-block;
		font-size: 20px;
		color: #5c5c5c;
		margin: 15px 0;
	}
	.new-as-bottom>button{
		width: 150px;
		height: 50px;
		border-radius: 5px;
		text-align: center;
		line-height: 35px;
		color: white;
		outline: none;
		border: none;
		font-size: 17px;
		cursor: pointer;
		background-color: #f08200;
	}
	.new-as-name{
		margin-right: 15px;
	}
	.new-as-area{
		margin-right: 10px;
		margin-left: 20px;
	}
	.new-as-detail{
		margin-right: 15px;
		margin-left: 20px;
	}
	.new-as-phone{
		margin-left: 20px;
	}
</style>