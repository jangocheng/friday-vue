<template>
	<div class="exeChange">
		<p>充值卡兑换</p>
		<div class="exeChange-cont">
	     <input type="text" placeholder="请输入充值卡兑换码进行充值"/><br />
	     <button class="exeButton">充值</button>
			</div>	
			</div>
</template>

<script>
</script>

<style>
	p{
		margin: 0;
		padding: 0;
	}
.exeChange {
		float: right;
		width: 1085px;
		border: 1px solid lightgray;
		height:623px;
	}
	
	.exeChange>p {
		line-height: 55px;
		width: 100%;
		font-size: 20px;
		padding-left: 20px;
		border-bottom: 1px solid lightgray
	}
	.exeChange-cont>input{
		width: 475px;
		padding:10px 0 10px 0;
		font-size:18px;
		color: lightgray;
		margin-top:50px;
		margin-left: 30px;
	}
	.exeButton{
		width: 150px;
		height: 50px;
		background: rgb(240,130,0);
		color: white;
		border: none;
		margin-left: 30px;
        margin-top: 100px;
        border-radius:5px;
     font-size: 20px ;
	}
</style>