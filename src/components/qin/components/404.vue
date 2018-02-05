<template>
	<!--dom结构-->
	<div class="pageNoExist">
		<img src="../img/404.png"/>
		<h4>您要查看的网址可能已被删除、名称已被更改、或暂时不可用</h4>
	    <router-link to="" v-on:click="goes()" class="pageNoExist-returnLastPage">返回上一页面</router-link>
	    <router-link to="/about" class="pageNoExist-returnHomePage">返回网站首页</router-link>
	</div>
</template>

<script>
	export default{
		name:"404",
		methods:{
			goes:()=>{
				console.log(1);
				window.history.go(-1)
			}
		}
	}
</script>

<style>
	body,template,div,img,h4,router-link,a{
		margin: 0;
		padding: 0;
	}
	img{
		vertical-align: top;
	}
	a{text-decoration: none;}
	.pageNoExist{
		text-align: center;
		position: absolute;
		top: 50%;
		right: 0;
		left: 0;
		margin: auto;
		margin-top: -256px;
	}
	.pageNoExist>h4{
		font-size: 25px;
		color: #666666;
		margin-top: 62px;
		margin-bottom: 100px;
	}
	.pageNoExist-returnLastPage,.pageNoExist-returnHomePage{
		color: #fff;
		width: 170px;
		height: 47px;
		line-height: 47px;
		border-radius: 4px;
		display: inline-block;
	}
	.pageNoExist-returnLastPage{
		background: #f08200;
	}
	.pageNoExist-returnHomePage{
		background: #498e3d;
		margin-left: 96px;
	}
</style>