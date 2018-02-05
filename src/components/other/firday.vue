<template>
<div>
<heads></heads>
<div class="firday-page">
<img src="../../img/1.png"/>

</div>
<foot></foot>


</div>
</template>

<script>
	import heads from "@/components/head/Notload/header"
	import foot from "@/components/foot/foot"
	export default {
		name: "firday",
		components: {
			heads,
			foot,
		}
	}
</script>

<style>
	.firday-page{
		width: 1280px;
		height: 500px;
		margin: 0 auto;
	}
	.firday-page img{
		width: 100%;
		height: 100%;
	}
</style>