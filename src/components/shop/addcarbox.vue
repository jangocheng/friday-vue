<template>
	<div class="addcar">
		<div class="addcar-box">
			<span class="plea-choice">请选择产品规格</span>
			<!--现价-->
			<div class="addcar-choice">
				<strong class="addcar-now-prize">现价:¥<em>20.0</em></strong> <span class="addcar-used-prize">原价:¥40.0</span> <br />
				<span class="addcar-choose">请选择规格<em>500g</em><em>1000g</em><em>2000g</em></span>
				<span class="addcar-choose">请选择规格<em>500g</em><em>1000g</em><em>2000g</em></span>
			</div>
			<!--底部数量选择-->
			<div class="addcar-bottom">
				数量: <em v-on:click="cut()">-</em><input type="text" v-model="num" />件 <em v-on:click="add()">+</em> 
				<a href="javascript:void(0)" class="add-shopcar">添加到购物车</a>
			</div>
			
</div>
		</div>
</template>

<script>
	export default {
		name: "addcar",
		data:function(){
			return{
				num:"1"
			}
		},
		methods: {
			cut: function() {
				if(this.num == 0) {
					this.num = 0
				} else {
					this.num--;
				}
			},
			add: function() {
				this.num++;
			},
			tab:function(event){
				alert(1)
				//获取当前点击对象
				var toggle=event.currentTarget
			}

		}

	}
</script>

<style>
	em{
		font-style: normal;
	}
	html,
	body,
	template,
	.addcar {
		width: 100%;
		height: 100%;
		background-color: rgba(0, 0, 0, .1);
	}
	
	.addcar-box {
		width: 680px;
		height: 457px;
		background-color: white;
		float: left;
		position: absolute;
		top: 0;
		right: 0;
		left: 0;
		bottom: 0;
		margin: auto;
	}
	/*请选择产品规格*/
	.plea-choice{
		display: inline-block;
		width: 650px;
		padding-left:30px ;
		height: 70px;
		line-height: 70px;
		color: #498E3D;
		border-bottom: 1px solid #e2e2e2;
	}
	.addcar-choice{
		width: 650px;
		padding-left:30px ;
	}
	.addcar-now-prize {
		font-weight: 300;
		display: inline-block;
		font-size: 30px;
		color: #ff5757;
	}
	.addcar-now-prize em{
		font-style: normal;
	}
	.addcar-used-prize {
		font-weight: 300;
		display: inline-block;
		font-size: 18px;
		color: #666666;
		margin-left: 35px;
		text-decoration: line-through;
	}
	/*选择规格*/
	
	.addcar-choose {
		display: inline-block;
		margin-top: 40px;
		height: 40px;
		line-height: 40px;
		font-size: 20px;
		color: #707070;
	}
	
	.addcar-choose em {
		display: inline-block;
		font-size: 14px;
		line-height: 14px;
		padding: 10px 30px;
		border: 1px solid #d4d4d4;
		margin-left: 20px;
	}
	.addcar-bottom {
		display: inline-block;
		margin-left: 40px;
		width: 700px;
		height: 130px;
		margin-top: 20px;
		font-size: 20px;
		color: #666666;
		position: relative;
		padding: 15px 0;
	}
	
	.addcar-bottom input {
		display: inline-block;
		text-align: center;
		width: 130px;
		height: 30px;
		font-size: 20px;
		line-height: 30px;
		border: 1px solid #D3D3D3;
		outline: none;
		margin: 0 10px;
	}
	
	.addcar-bottom em {
		display: inline-block;
		width: 30px;
		height: 30px;
		line-height: 30px;
		text-align: center;
		background-color: #f2f2f2;
		cursor: pointer;
		position: absolute;
	}
	
	.addcar-bottom em:nth-child(1) {
		left: 63px;
		top: 18px;
	}
	
	.addcar-bottom em:nth-child(3) {
		left: 165px;
		top: 18px;
	}
	
	.addcar-bottom span {
		display: inline-block;
		width: 150px;
		height: 50px;
		color: white;
		font-size: 20px;
		line-height: 50px;
		text-align: center;
		cursor: pointer;
		border-radius: 5px;
		background-color: #ffae4f;
	}
	
	.addcar-bottom .add {
		margin-left: 30px;
	}
	
	.addcar-bottom .buy {
		background-color: #f08200;
		margin-left: 20px;
	}
	.add-shopcar{
		color: white;
		text-decoration: none;
		display: block;
		width: 200px;
		height: 35px;
		border-radius: 5px;
		line-height: 35px;
		text-align: center;
		background-color: #f08200;
		margin-top: 30px;
	}
	
</style>