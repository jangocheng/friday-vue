<template>
	<div class="wash">
		<ul class="all">
			<li >
			<img class="service-logo" src="../../img/samecity/1.jpg"/>
			<div class="service">
				<strong class="service-name">洗涤服务</strong>
				<span>
					<img src="../../img/evaluate/star1.png"/>
					<img src="../../img/evaluate/star1.png"/>
					<img src="../../img/evaluate/star1.png"/>
					<img src="../../img/evaluate/star1.png"/>
					<img src="../../img/evaluate/start2.png"/>
					<span class="service-prize">¥50/人</span>
				</span>
				<span class="goodscity">礼拜五商城</span>
			</div>
			
			</li>
		</ul>
	</div>
</template>

<script>
	export default{
		name:"wash"
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