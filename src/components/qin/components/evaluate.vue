<template>
	<div>
		<!--商品评价-->
		<div class="eval-comment">
			<div class="eval-title">
				<img src="../img/evaluate/title.png" />
				<p>158****0203</p>
			</div>
			<div class="eval-descrip">
				<div class="eval-star">
					<img src="../img/evaluate/star1.png" />
					<img src="../img/evaluate/star1.png" />
					<img src="../img/evaluate/star1.png" />
					<img src="../img/evaluate/star1.png" />
					<img src="../img/evaluate/start2.png" />
					<span>2016-08-22 20:45:01</span>
				</div>
				<p>帮同事买的,很不错,性价比高</p>
				<a href="javascript:void(0)"><img src="../img/evaluate/epic.png" /></a>
				<a href="javascript:void(0)"><img src="../img/evaluate/epic.png" /></a>
				<a href="javascript:void(0)"><img src="../img/evaluate/epic.png" /></a>
				<a href="javascript:void(0)"><img src="../img/evaluate/epic.png" /></a>
			</div>

		</div>
		<!--商品评价-->
		<div class="eval-comment">
			<div class="eval-title">
				<img src="../img/evaluate/title.png" />
				<p>158****0203</p>
			</div>
			<div class="eval-descrip">
				<div class="eval-star">
					<img src="../img/evaluate/star1.png" />
					<img src="../img/evaluate/star1.png" />
					<img src="../img/evaluate/star1.png" />
					<img src="../img/evaluate/star1.png" />
					<img src="../img/evaluate/star1.png" />
					<span>2016-08-22 20:45:01</span>
				</div>
				<p>帮同事买的,很不错,性价比高</p>
			</div>

		</div>

	</div>
</template>

<script>
	export default {
		name: "evaluate"
	}
</script>

<style>
	/*商品评价*/
	
	.eval-comment {
		width: 1260px;
		height: 180px;
		padding-left: 20px;
		margin: 30px auto;
		border-bottom: 1px solid #e9e9e9;
		position: relative;
	}
	
	.eval-comment div {
		display: inline-block;
	}
	
	.eval-title {
		width: 100px;
		height: 120px;
		padding: 0 15px;
		position: absolute;
		top: 30px;
	}
	
	.eval-title p {
		margin: 0;
		padding: 0;
		color: #999999;
		font-size: 15px;
	}
	
	.eval-descrip {
		margin: 25px 0 20px 140px;
	}
	
	.eval-star {
		width: 1080px;
		position: relative;
		height: 20px;
	}
	
	.eval-star span {
		display: inline-block;
		position: absolute;
		color: #999999;
		right: 0;
		top: 0;
	}
	
	.eval-star+p {
		margin: 10px 0;
		color: #666666;
	}
</style>