<template>
	<div  class="myAccount">
		<div class="accountHead">
			<img src="../../img/person/usrImg.png" alt="" />
			<em>您好 , </em>
			<span>{{phNum}}</span>
			<ul>
				<li><span>当前积分</span><p>{{integral||0}}</p></li>
				<li><span>我的钱包</span><p>¥{{money||0}}</p></li>
				<li><span><router-link to="">充值有礼 &gt; &gt;</router-link></span><p><router-link to="/person/exechange">充值卡兑换 &gt; &gt;</router-link></p></li>			
			</ul>
		</div>
		<div class="accountShow">
			<img src="../../img/person/accountBg.png" alt=""/>
			<div class="accountCont">
				<div >
					<p>新人福利享不停</p>
					<p>充值有好礼</p>
				</div>
			</div>
		</div>
	</div>
</template>

<script>
export default {
	computed:{
			phNum(){
				return  sessionStorage.getItem("phNum")
			}
		},
		created(){
					        this.phNum=sessionStorage.getItem("phNum");
					        this.integral=sessionStorage.getItem("integral");   
					        this.money=sessionStorage.getItem("money");  
			},
		}
</script>

<style>
	p{
		margin:0;
		padding: 0;
	}
.myAccount{
	width: 1086px;
	height: 626px;
	border: 1px solid red;
	float: right;
	position: relative;
}
.accountHead{
	width: 100%;
	height: 220px;
	background: rgb(243,255,243);
	overflow: hidden;
}
.accountHead>img {
width: 110px;
margin-top:45px;
margin-left: 50px;
float: left;
border:5px solid rgb(245,210,65) ;
border-radius: 50%;
}
.accountHead>span{
color: rgb(245,210,65);
}
.accountHead>em{
	line-height:220px;
	padding-left: 50px;
}
.accountHead>ul{
	float: right;
	list-style: none;
	width:35%;
	height: 220px;
}
.accountHead>ul>li{
	float: left;
	height: 220px;
	margin-top:85px;
	margin-right: 40px;
}
.accountHead>ul>li>p{
	margin-top: 20px;
}
.accountHead>ul>li>p>a{
		margin-top:30px;
		text-align: center;
		color: rgb(245,210,65);
}
.accountHead>ul>li>span>a:visited{
	color: lightgreen;
}
.accountShow>img{
	margin-top: 20px;
	float: left;
}
.accountCont{
	width: 540px;
	height: 230px;
    position: absolute;
	float: left;
	bottom: 70px;
	left: 280px;
	border: 1px solid red;
	background: rgba(255,255,255,0.3);
}
.accountCont>div{
	width: 520px;
	height: 210px;
	margin: 10px;
	background: rgba(255,255,255,0.6);
	overflow: hidden;
}
.accountCont>div>p:nth-of-type(1){
	width: 90%;
	margin-left: 5%;
	margin-top: 5%;
	font-size: 50px;
	color: white;
	border-bottom: 1px solid white;
	letter-spacing:20px;
	white-space:nowrap
}
.accountCont>div>p:nth-of-type(2){
	margin-top: 5%;
		width: 90%;
		margin-left: 5%;
		text-align: center;
		font-size: 30px;
		color: white;
		letter-spacing:30px;
		border-bottom: 1px solid white;
}
</style>