<template>
		<div class="headerNav">
				<!--顶部导航-->
				<div class="nav-top">
					<!--伪类容器-->
					<div class="header-container">
						所在城市:
						<select name="">
							<option value="">北京朝阳区</option>
						</select>
					</div>
					<div class="nav-top-right">
					<!--顶部右边导航-->
					<router-link to="/register">登录</router-link>
					<a href="">注册</a>
					<a href="">我的订单</a>
					<a href="">我的消息</a>
					<a href="">我是商家</a>
					<a href="">090--22511</a>
					</div>
				</div>
				</div>
</template>

<script>
		export default {
		name: "Notlogged",
		}
</script>

<style>
	a {
		text-decoration: none;
	}
	html,body,template {
		width: 100%;
		height: 100%;
	}
	.headerNav {
		width: 100%;
		margin: 0 auto;
		background-color: #eee;
	}
	.nav-top{
		width: 1280px;
		height: 35px;
		margin: 0 auto;
		position: relative;
	}
	.header-container {
		width: 167px;
		height: 35px;
		line-height: 35px;
		font-size: 15px;
		color: #666;
		display: inline-block;
		position: relative;
	}
	/*去除select的默认样式*/
	
	select {
		appearance: none;
		border: none;
		font-size: 15px;
		color: #666666;
		background-color: transparent;
		cursor: pointer;
		
	}
	
	.header-container:after {
		content: " ";
		width: 0;
		height: 0;
		border-left: 5px solid transparent;
		border-right: 5px solid transparent;
		border-top: 8px solid #666;
		position: absolute;
		top: 13px;
		right: 0px;
	}
	/*顶部右边样式*/
	.nav-top-right{
	  display: inline-block;
	  width: 470px;
	  height: 35px;
	  line-height: 35px;
	  overflow: hidden;
	  position: absolute;
	  right: 0;
	}
	.nav-top-right a{
		color: black;
		font-size: 14px;
		padding: 0 10px;
		border-right: 1px solid gray;
	}
	.nav-top-right a:nth-child(6){
		margin-left: 5px;
		padding-left:23px;
		border-right: none;
		background: url(../img/head/top-phone.png) no-repeat left center;
	}
</style>