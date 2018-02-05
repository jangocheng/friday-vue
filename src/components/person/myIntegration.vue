<template>
	<div class="myIntegration">
<div class="myIntegration-header"><span>我的积分</span></div>
	<div class="myIntegration-cont">
		<em>当前积分 : </em><span>240分</span>
		<ul>
			<li class="listItem">
				<span>积分日期</span>
				<span>变动</span>
				<span>来源</span>
			</li>
			<li>
				<span>2015-04-05 16:20:10</span>
				<span>+100</span>
				<span>消费赠送</span>
			</li>
		</ul>
	</div>
	</div>
</template>

<script>
</script>

<style>
		.myIntegration {
		width: 1085px;
		height: 625px;
		border: 1px solid lightgray;
		margin-left: 203px;
		overflow: hidden;
	}
	
	.myIntegration-header {
		width: 100%;
		height: 55px;
		border: 1px solid lightgray;
		font-size: 22px;
		line-height: 55px;
		color: rgb(108, 108, 108);
		padding-left: 20px;
	}
	.myIntegration-cont>em{
		display: inline-block;
		padding-left: 20px;
		margin-top: 20px;
	}
	.myIntegration-cont>span{
		color:rgb(247, 131, 39);
	}
		.myIntegration-cont>ul{
			list-style: none;
		  width: 1047px;
		  	border-left: 1px solid lightgray;
		  		border-right: 1px solid lightgray;
		  		margin: 20px auto;
		}
		.listItem{
							background: lightgray;
		}
			.myIntegration-cont>ul>li{
				width: 100%;
				height: 50px;
				line-height: 50px;
				display: flex;
				justify-content: center;
				border-bottom: 1px solid lightgray;
			}
				.myIntegration-cont>ul>li>span{
				width: 33%;
			text-align: center;
			} 
</style>