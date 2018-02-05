<template>
		<div class="myperCenter">
					<div class="myperCenter-header"><span>个人资料</span></div>
					<div class="myperCenter-cont">
						<ul class="myperCenter-ul">
							<li><span>当前头像 : </span><img src="../../img/person/bigHeadimg.png" alt=""><span>修改</span></li>
							<li><span>昵称 : </span><input type="text"></li>
							<li><span>性别 : </span><input type="radio" name="" id="" value="">男
								<input type="radio" name="" id="" value="">女</li>
							<li><span>生日 : </span>
								<select name="">
									<option value="">1994</option>
								</select>年
								<select name="">
									<option value="">12</option>
								</select>月
								<select name="">
									<option value="">28</option>
								</select>日</li>
							<li><span>手机 : </span><input type="text"><router-link to="/person/changePhone">更换手机</router-link></li>
							<li><button>确认提交</button></li>
						</ul>
					</div>
				</div>
</template>

<script>
</script>

<style>
	.myperCenter {
		width: 1085px;
		height: 625px;
		border: 1px solid lightgray;
		margin-left: 203px;
		overflow: hidden;
	}
	
	.myperCenter-header {
		width: 100%;
		height: 55px;
		border: 1px solid lightgray;
		font-size: 22px;
		line-height: 55px;
		color: rgb(108, 108, 108);
		padding-left: 20px;
	}
	
	.myperCenter-ul {
		list-style: none;
		font-size: 18px;
		color: rgb(108, 108, 108);
		padding-left: 20px;
	}
	.myperCenter-ul li{
				padding-left: 60px;
				margin-top: 10px;
	}
	.myperCenter-ul li:nth-child(1) {
		width: 20%;
		height: 79px;
		margin: 50px 0 10px 20px;
		line-height: 23px;
		padding-left: 20px;
		overflow: hidden;
	}
		.myperCenter-ul li:nth-child(1)>img{
          width: 80px;
		}
	.myperCenter-ul li:nth-child(2) {
		width: 500px;
	}
	.myperCenter-ul li:nth-child(1) span:nth-child(1) {
		display: inline-block;
		float: left;
		margin: 30px 5px 0 0;
	}
	.myperCenter-ul li:nth-child(1) span:nth-child(3) {
		display: inline-block;
		color: rgb(73, 142, 61);
		line-height: 70px;
		font-size: 14px;
		float: right;
		margin-top: 8px;
	}
		.myperCenter-ul li:nth-child(5) a:nth-child(3){
		display: inline-block;
		color: rgb(73, 142, 61);
		line-height: 20px;
		font-size: 14px;
		margin-left: 10px;
		margin-top: 8px;
		}
		.myperCenter-ul>li>button{
			width: 150px;
					height: 50px;
					background: rgb(240,130,0);
					border: none;
					margin:40px ;
					border-radius: 5px;
					color: white;
					font-size: 20px;
					margin-left: 50px;
		}
		
</style>