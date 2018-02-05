<template>
	<div class="c-city">
		<div class="c-box">
			<div data-toggle="distpicker">
				<select data-province="浙江省"></select>
				<select data-city="杭州市"></select>
				<select data-district="西湖区"></select>
			</div>

		</div>

	</div>
</template>

<script>
//	require ("../js/distpicker.data.min")
//	 require ("../js/distpicker.min") 
	export default{
		name:"changecity"
	}
</script>

<style>
	
	 html,
	body,
	template,
	.c-city {
		width: 100%;
		height: 100%;
		background-color: rgba(0, 0, 0, .1);
	}
	
	.c-box {
		width: 700px;
		height: 350px;
		background-color: white;
		float: left;
		z-index: 3;
		position: absolute;
		top: 0;
		right: 0;
		left: 0;
		bottom: 0;
		margin: auto;
	}
</style>