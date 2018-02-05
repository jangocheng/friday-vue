<template>
	<div class="opinion">
		<p>意见反馈</p>
		<div class="opinionCont">
	 <textarea name="" rows="" cols=""></textarea><br />
	 <button class="opinionDal">取消</button>	 <button class="opinionSuc">提交</button>
			</div>	
			</div>
</template>

<script>
</script>

<style>
	.opinion {
		float: right;
		width: 1085px;
		height: 625px;
		border: 1px solid lightgray;
	}
	
	.opinion>p {
		line-height:35px;
		width: 100%;
		font-size: 20px;
		padding-left: 20px;
		border-bottom: 1px solid lightgray
	}
	.opinionCont>textarea{
		width: 1000px;
		height: 370px;
		margin-left: 45px;
		margin-top: 20px;
		resize: none;
	}
	.opinionDal{
		display: inline-block;
      width: 150px;
      height: 50px;
      border: none;
      outline: none;
      margin-top: 10px;
      margin-left: 360px;
       font-size:20px ;
        background: rgb(153,153,153);
  	}
  	.opinionDal:active,.opinionSuc:active{
  		color: #FFFFFF;
  	}
  	.opinionSuc{
  		    margin-top: 10px;
  		display: inline-block;
      width: 150px;
      height: 50px;
      border: none;
      outline: none;
      font-size:20px ;
            margin-left: 40px;
            background: rgb(247,130,39);
  	}
</style>