<template>
	<div class="submitOrders">
	<load></load>
	</div>
</template>

<script>
	import load from "@/components/head/load/reg-nav"
	export default{
		name:"small_Shoppingcarthead",
		components:{
			load
		}
	}
</script>

<style>
	body,template,div,a,i,em,span,h3,h4{
		margin: 0;
		padding: 0;
	}
	img{
		vertical-align: top;
	}
	a{text-decoration: none;}
	h3,h4{font-weight: normal;}
	.submitOrders-header{
		background: #eee;
		font-size: 13px;
		height: 36px;
		line-height: 36px;
		color: #787878;
	}
	.submitOrders-header-content{
		width: 1280px;
		margin: auto;
		position: relative;
	}
	select {
		appearance: none;
		border: none;
		font-size: 13px;
		color: #787878;
		background-color: transparent;
		cursor: pointer;
	}
	.submitOrders-header-left,.submitOrders-header-right{
		display: inline-block;
	}
	.submitOrders-header-left:after{
		content: "";
		width: 0;
		height: 0;
		border-left: 3.5px solid transparent;
		border-right: 3.5px solid transparent;
		border-top: 4px solid #787878;
		position: absolute;
		top: 16px;
		left: 135px;
	}
	.submitOrders-header-right{
		float: right;
	}
	.submitOrders-header-userphone i{
		color: #498E3D;
		font-style: normal;
	}
	.submitOrders-header-userphone,.submitOrders-nav{
		display: inline-block;
	}
	.submitOrders-nav>a{
		color: #787878;
		padding: 0 12px;
		border-right: 1px solid #999;
	}
	.submitOrders-header-right>img{
		margin-top: 10px;
		margin-left: 10px;
	}
	.submitOrders-header-right>i{
		font-style: normal;
		color: #666;
		font-weight: bolder;
	}
</style>