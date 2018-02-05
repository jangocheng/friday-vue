<template>
	<div>
		<div class="appraise">
			<h3>订单评价</h3>
			<div class="appraise-scorebox">
				<div class="appraise-scoresmallbox" v-for="item in goodsapp">
					<div class="appraise-scoresmallboxleft">
						<img v-bind:src="item.sample"/>
						{{item.pkname}}
					</div>
					<div class="appraise-scoresmallboxright">
						<div class="appraise-scoretop">
							商品评分
							<img src="../../img/appraise/appraise-redstar.png"/>
							<img src="../../img/appraise/appraise-redstar.png"/>
							<img src="../../img/appraise/appraise-redstar.png"/>
							<img src="../../img/appraise/appraise-graystar.png"/>
							<img src="../../img/appraise/appraise-graystar.png"/>
						</div>
						<div class="appraise-scorecenter">
							评价商品
							<textarea name="" rows="" cols="" placeholder="商品评价,最少10字,最多50字"></textarea>
						</div>
						<div class="appraise-scorebottom">
							晒图片
							<span>+</span>
							<span>+</span>
							<span>+</span>
							<span>+</span>
						</div>
					</div>
				</div>
			</div>
			<div class="appraise-starlevel">
				<i>服务态度</i>
				<img src="../../img/appraise/appraise-redstar.png"/>
				<img src="../../img/appraise/appraise-redstar.png"/>
				<img src="../../img/appraise/appraise-redstar.png"/>
				<img src="../../img/appraise/appraise-graystar.png"/>
				<img src="../../img/appraise/appraise-graystar.png"/>
				<i>描述相符</i>
				<img src="../../img/appraise/appraise-redstar.png"/>
				<img src="../../img/appraise/appraise-redstar.png"/>
				<img src="../../img/appraise/appraise-redstar.png"/>
				<img src="../../img/appraise/appraise-graystar.png"/>
				<img src="../../img/appraise/appraise-graystar.png"/>
			</div>
			<router-link to="">提交评价</router-link>
		</div>
	</div>
</template>

<script>
	export default {
		name: "appraise",
		data:function(){
			return{
				goodsapp:[{
					sample:require("../../img/appraise/appraise-youzi.png"),
					pkname:"珍享 南非进口红心葡萄柚 西柚柚子"
				},{
					sample:require("../../img/appraise/appraise-youzis.png"),
					pkname:"珍享 南非进口红心葡萄柚 西柚柚子"
				}]
			}
		}
	}
	
</script>

<style>
	body,div,h3{
		margin: 0;
		padding: 0;
	}
	.appraise{
		width: 1085px;
		height: 1018px;
		border: 1px solid #e1e1e1;
		margin-bottom: 40px;
		float: right;
	}
	.appraise>h3{
		font-size: 19px;
		line-height: 57px;
		padding-left: 21px;
		border-bottom: 1px solid #e1e1e1;
		font-weight: normal;
	}
	.appraise-scorebox{
		padding-left: 20px;
		padding-right: 20px;
		border-bottom: 1px solid #e1e1e1;
	}
	.appraise-scoresmallbox{
		width: 1043px;
		height: 300px;
		border-bottom: 1px dashed #dedede;
		padding-top: 30px;
		padding-bottom: 40px;
		display: flex;
		color: #666;
	}
	.appraise-scorebox>.appraise-scoresmallbox:last-child{
		border-bottom: none;
	}
	.appraise-scoresmallboxleft>img{
		width: 260px;
		height: 260px;
		display: block;
		margin-bottom: 20px;
	}
	.appraise-scoresmallboxright{
		padding-left: 100px;
	}
	.appraise-scoretop,.appraise-scorecenter{
		margin-bottom: 30px;
	}
	.appraise-scoretop>img:first-child{
		margin-left: 18px;
	}
	.appraise-scorecenter>textarea{
		color: #999999;
		width: 581px;
		height: 126px;
		padding-left: 10px;
		padding-top: 10px;
		font-size: 14px;
		resize: none;
		outline: none;
		vertical-align: top;
		margin-left: 18px;
	}
	.appraise-scorebottom>span{
		color: #c5c5c5;
		width: 60px;
		height: 60px;
		background: #e4e4e4;
		font-size: 40px;
		text-align: center;
		line-height: 60px;
		display: inline-block;
		vertical-align: top;
	}
	.appraise-scorebottom{
		padding-left: 15px;
	}
	.appraise-scorebottom>span:first-child{
		margin-left: 18px;
	}
	.appraise-starlevel{
		width: 490px;
		margin: auto;
		margin-top: 52px;
	}
	.appraise-starlevel>i{
		font-style: normal;
		margin-right: 10px;
	}
	.appraise-starlevel>i:nth-child(7){
		margin-left: 60px;
		margin-right: 10px;
	}
	.appraise>a{
		width: 150px;
		height: 50px;
		font-size: 20px;
		color: #fff;
		background: #F08200;
		text-align: center;
		line-height: 50px;
		border-radius: 5px;
		display: block;
		margin: auto;
		margin-top: 60px;
	}
</style>