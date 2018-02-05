<template>
<div>
<heads></heads>
<!--同城模块-->
<div class="samecity">
	<!--一级分类-->
	<div class="samecity-nav">
		<span>一级分类:</span>
		<router-link to="/all">全部</router-link>
		<router-link to="/wash">洗涤服务</router-link>
		<router-link to="/service">家政服务</router-link>
		<router-link to="/maintain">家庭维修</router-link>
		<router-link to="/move">搬家服务</router-link>
		<router-link to="/car">汽车服务</router-link>
		<router-link to="/shopping">网购服务</router-link>
		<router-link to="/trail">旅游服务</router-link>
		<router-link to="/photo">拍照服务</router-link>
		<router-link to="/fruit">水果</router-link>
		<router-link to="/wedding">婚庆</router-link>
		<router-link to="/net">互联网</router-link>
	</div>
	<div class="samecity-conts">
		<router-view></router-view>
	</div>
	
</div>




<foot></foot>
</div>
</template>

<script>
	import heads from "@/components/head/Notload/header"
	import foot from "@/components/foot/foot"
	export default {
		name: "samecity",
		components: {
			heads,
			foot
		}
	}
</script>

<style>
	/*同城模块*/
	.samecity{
		width: 1280px;
		margin: 0 auto;
	}
	/*同城导航*/
	.samecity-nav{
		width: 100%;
		height: 50px;
		border-bottom: 1px solid rgb(221,221,221);
	}
	.samecity-nav a{
		display: inline-block;
		color: black;
		padding: 5px 10px;
		
	}
	.samecity-nav a:hover{
		color: white;
		background-color: rgb(75,148,61)
	}
	/*同城内容*/
	.samecity-conts{
		width: 100%;
	}
	
</style>