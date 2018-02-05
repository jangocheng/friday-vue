<template>
    <div >
    <heads></heads>
    <div class="nullsearch">
    <img src="../img/search/search.png"/>
    <img src="../img/search/sorry.png"/>
    
    </div>
    
    <foot></foot>
    	
    </div>
</template>

<script>
	import heads from "@/components/header"
	import foot from "@/components/foot"
	export default{
		name:"nullsearch",
		components:{
			heads,
			foot
		}
	}
</script>

<style>
	.nullsearch{
		width: 1280px;
		height: 500px;
		margin: 20px auto;
	}
	.nullsearch img:nth-child(1){
		display: block;
		margin-top: 180px;
		margin-left: 597px;
	}
	.nullsearch img:nth-child(2){
		display: block;
		margin-top: 50px;
		margin-left: 420px;
	}
</style>