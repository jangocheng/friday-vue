<template>   
	<div class="myWallet">
	
		<span>我的钱包 : <em>¥20.0</em></span>
			<div class="myWallet-cont">
				<p>请选择充值金额 : </p>
				<input id="checkButton" type="button" value="500元"><input type="button" value="1000元"><input type="button" value="2000元">
				<p>充值有礼</p>
				<div  class="walletPrize">
					<p>冲500元送:</p>
					<img src="../../img/person/usrImg.png" alt=""/> 
					<span>新疆哈密瓜25kg</span><br />
					<span>价值 : 500</span>
				</div>
				<button>立即充值</button>
			</div>
	</div>
</template>

<script>
</script>

<style>
		.myWallet {
		float: right;
		width: 1085px;
		height: 710px;
		border: 1px solid lightgray;
	}
	.myWallet>span>em{
			color: rgb(240,130,0);
	}
	.myWallet>span{
		display: inline-block;
		line-height: 55px;
		width: 100%;
		font-size: 20px;
		padding-left: 20px;
		border-bottom: 1px solid lightgray
	}
	.myWallet-cont{
		width: 100%;
	}	
	.myWallet-cont>p:nth-of-type(1){
		margin-top: 50px;
		padding-left: 40px;
		font-size:17px ;
	}
		.myWallet-cont>input{
			width: 115px;
			height: 35px;
			margin-top: 20px;
			margin-left: 40px;
			display: inline-block;
            border: none;
            border: 1px solid rgb(73,142,61);
            background: white;
            color: rgb(73,142,61);
            font-size: 16px;
		}
		#checkButton{
			width: 115px;
			height: 35px;
			margin-top: 20px;
			margin-left: 40px;
			display: inline-block;
            border: none;
            border: 1px solid rgb(73,142,61);
		    color: rgb(73,142,61);
            font-size: 16px;
		    background: rgb(244,255,242);
		}
		.myWallet-cont>p:nth-of-type(2){
			padding-left:40px ;
			color: rgb(240,130,0);
			margin-top: 50px;
		}
		.walletPrize{
			width: 355px;
			height: 190px;
			border: 1px solid lightgray;
			margin-top: 20px;
			margin-left: 40px;
		}
		.walletPrize>p{
			margin-top:20px;
			margin-left: 20px;
		}
			.walletPrize>img{
				float: left;
				margin: 20px  20px;
			}
				.walletPrize>span:nth-child(3){
					display: inline-block;
					margin-top: 40px;
				}
				.myWallet-cont>button{
					width: 150px;
					height: 50px;
					background: rgb(240,130,0);
					border: none;
					margin:40px ;
					border-radius: 5px;
					color: white;
					font-size: 20px;
				}
</style>