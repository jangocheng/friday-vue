<template>
	<div class="homeFoot">
		<div class="homeFoot-up">
			<ul>
				<li>优鲜保障</li>
				<li>全程监控</li>
				<li>礼拜五特惠</li>
				<li>基地直供</li>
				<li>准时送达</li>
			</ul>
		</div>
		<div class="homeFoot-mid">
			<ul>
				<li><img src="../../img/foot/homelogo.png" alt=""/>
				<p>服务时间:10:00-24:00 <em></em>090---22511</p>
				</li>
				<li><img src="../../img/foot/fridayWx.png" alt="" /><p>礼拜五官方微信</p></li>
				<li><img src="../../img/foot/fridayApp.png" alt=""/><p>礼拜五App</p></li>
				<li><dl class="homeFoot-dl">
					<dt><router-link to="aboutFir">关于礼拜五</router-link></dt>
					<dd>新用户注册</dd>
				</dl></li>
				<li><dl class="homeFoot-dl">
					<dt>配送说明</dt>
					<dd>运费说明</dd>
				</dl></li>
				<li><dl class="homeFoot-dl">
					<dt>售后服务</dt>
					<dd>运费说明</dd>
				</dl></li>
				<li><dl class="homeFoot-dl">
					<dt>加盟礼拜五</dt>
					<dd>加盟条款</dd>
				</dl></li>
			</ul>
		</div>
		<div class="homeFoot-bottom">
			<p>版权所有©礼拜五 保留所有权利 | 13154121254</p>
			<a href="">北京澳环科技提供技术支持</a>
		</div>
		<div class="footAnchor">
			<router-link to="/person/opinion">反馈</router-link>
			<span>顶部</span>
		</div>
	</div>
</template>

<script>
	require("../../js/foot.js")
	export default{
		name:"foot",
		
	}
</script>

<style>
	body,div,ul,li,dl,dd,dt{
		margin: 0;
		padding: 0;
	}
	a{
		text-decoration: none;
	}
	a:visited{
		color:black
		
		
	}
	body,template{
		width: 100%;
		height: 100%;
	}
	.homeFoot{
		width: 100%;
		height: 400px;
		overflow: hidden;
	}
	.homeFoot-up{
		width: 100%;
		height: 105px;
		border-top:1px  solid lightgray ;
		border-bottom: 1px  solid  lightgray;
	}
	.homeFoot-mid{
		width: 100%;
		height: 200px;
		border-bottom: 1px  solid  lightgray;
		overflow: hidden;
	}
	.homeFoot-up>ul{
		list-style: none;
		width: 1300px;
		height: 60px;
		border: 1px solid white;
		display: flex;
		justify-content: center;
	    margin: 22px auto;
	    overflow: hidden;
	}
	.homeFoot-mid>ul{
		list-style: none;
		width: 1300px;
		height: 160px;
		margin: 15px auto 0 auto;
		
	}
		.homeFoot-mid>ul>li{
			float: left;
			margin-left: 30px;
		}
.homeFoot-up>ul>li{
		width: 25%;
		height: 60px;
		float: left;
		font-size:25px;
		font-weight: 500;
       border-right:1px solid lightgray;
        overflow: hidden;
        line-height: 60px;
        padding-left:85px ;
	}
	.homeFoot-up>ul>li:nth-child(1){
		background: url(../../img/foot/fresh.png) no-repeat;
	    background-size:45px 45px;	
	    background-position:30px 7px;
	}
		.homeFoot-up>ul>li:nth-child(2){
		background: url(../../img/foot/monitor.png) no-repeat;
	    background-size:45px 45px;	
	       background-position:30px 7px;
	}
		.homeFoot-up>ul>li:nth-child(3){
		background: url(../../img/foot/sale.png) no-repeat;
	    background-size:45px 45px;	
	   background-position:30px 7px;
	}
	.homeFoot-up>ul>li:nth-child(4){
		background: url(../../img/foot/directsupply.png) no-repeat;
	    background-size:45px 45px;	
	      background-position:30px 7px;
	}
	.homeFoot-up>ul>li:nth-child(5){
		background: url(../../img/foot/ontime.png) no-repeat;
	    background-size:45px 45px;	
	   background-position:30px 7px;
	   border: none;
	}
	/*中部*/
	.homeFoot-mid>ul>li:nth-child(1){
		height: 160px;
		font-size: 20px;
		margin-left: 0px;
	}
	.homeFoot-mid>ul>li:nth-child(2){	
		color: gray;
		text-align:center ;
	}
	.homeFoot-mid>ul>li:nth-child(3){
			color: gray;
		text-align:center ;
	}
	.homeFoot-mid>ul>li:nth-child(4){
		margin-left: 40px;
			color: gray;
		text-align:center ;
	}
	.homeFoot-dl>dt{
		font-size:22px;
		color: black;
		margin-bottom:15px ;
	}
	.homeFoot-dl>dd{
		float: left;
		color: gray;
	}
	.homeFoot-bottom{
		width: 100%;
		height:100px ;
		text-align: center;
		color: gray;
		font-size:14px;
	}		
	.homeFoot-bottom a:visited{
		color: gray;
	
	}
	/*底部锚点*/
	.footAnchor{
		width: 40px;
		height: 83px;
		position: fixed;
		bottom: 1px;
		right: 1px;
		opacity: 0;
		transition: all 1s;
		cursor: pointer;
	}
	.footAnchor span,.footAnchor a{
		display: inline-block;
		width: 40px;
		height: 40px;
		line-height: 40px;
		text-align: center;
		background: rgb(73,142,61);
		border-radius: 5px;
		color: white;
	}
	.footAnchor span:nth-child(1){
		background-image: url(../../img/foot/pen.png);
		background-repeat: no-repeat;
		background-size:20px 20px;
		background-position: 10px 0px;
		text-align: center;
		line-height:60px ;
	}
	.footAnchor span:nth-child(2){
		margin-top: 3px;
		background-image: url(../../img/foot/up.png);
		background-repeat: no-repeat;
		background-size:20px 20px;
		background-position: 10px 0px;
		text-align: center;
		line-height:60px ;
	}
</style>