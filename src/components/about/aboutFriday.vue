<template>
	<div>
		<headers></headers>
		<div class="aboutFriday">
		    <div class="aboutFriday-content">
		        <div class="aboutFriday-topnav">
		            <span>您的当前位置 :</span>
		            <router-link to="">首页 ></router-link>
		            <router-link to="">礼拜五商城 ></router-link>
		            <router-link to="" class="aboutFriday-active">新用户注册</router-link>
		        </div>
		        <div class="aboutFriday-contents">
		        	    <ul class="aboutFriday-leftnav">
		        	        <li><h3>礼拜五商城</h3></li>
		        	        <li><p>关于礼拜五 ></p></li>
		                <li><span class="aboutFriday-actives">新用户注册</span></li>
		        	        <li><span>在线下单</span></li>
		                	<li><span>支付方式</span></li>    
		                	<li><p>配送说明&nbsp&nbsp&nbsp&nbsp></p></li>
		                	<li><span>运费说明</span></li>
		                	<li><span>配送方式</span></li>
		                	<li><span>发票说明</span></li>
		                	<li><p>售后服务&nbsp&nbsp&nbsp&nbsp></p></li>
		                	<li><span>退换货原则</span></li>
		                	<li><span>服务保障承诺</span></li>
		                	<li><span>验货与签收</span></li>
		                	<li><span>发票说明</span></li>
		        	        <li><p>加盟礼拜五 ></p></li>
		                	<li><span>加盟条款</span></li>    
		        	        <li><span>公司简介</span></li>
		        	        <li><span>服务协议</span></li>
		            </ul>
		            <div class="aboutFriday-rightbar">
		            	    <div class="aboutFriday-rightbarnav">
		            	    	    <h3>关于我们</h3>
		            	    </div>
		            	    <div class="aboutFriday-rightbarcore">
		            	    	    <h2>新用户注册</h2>
		            	    	    <i>分类 : 关于礼拜五</i>
		            	    	    <b>日期 : 2015年9月21日</b>
		            	    	    <p>我们的梦想是为全国14亿人民都能享用到安全和高品质的新鲜食材。是美国,澳大利亚,新西兰,以色列和西班牙领事馆农业部的的指定食材合作推广伙伴,有美国Sunkist,新西兰Zespri,澳大利亚MFC,以色列Jaffa等合作伙伴。每年从全球五大洲和二十多个国家进口和销售超过1000个集装柜的水果和视频。同时,还致力于发展国内高品质食材,我们和全国各地优质农场建立直联合作,并为此开发了和建立了完善的水果身份认证和溯源系统,确保食材的信息透明和安全。</p>
		            	    	    <img src="../../img/aboutFriday.png"/>
		            	    	    <p>我们的梦想是为全国14亿人民都能享用到安全和高品质的新鲜食材。是美国,澳大利亚,新西兰,以色列和西班牙领事馆农业部的的指定食材合作推广伙伴,有美国Sunkist,新西兰Zespri,澳大利亚MFC,以色列Jaffa等合作伙伴。每年从全球五大洲和二十多个国家进口和销售超过1000个集装柜的水果和视频。同时,还致力于发展国内高品质食材,我们和全国各地优质农场建立直联合作,并为此开发了和建立了完善的水果身份认证和溯源系统,确保食材的信息透明和安全。</p>
		            	    	    <img src="../../img/aboutFridays.png"/>
		            	    	    <p>我们的梦想是为全国14亿人民都能享用到安全和高品质的新鲜食材。是美国,澳大利亚,新西兰,以色列和西班牙领事馆农业部的的指定食材合作推广伙伴,有美国Sunkist,新西兰Zespri,澳大利亚MFC,以色列Jaffa等合作伙伴。每年从全球五大洲和二十多个国家进口和销售超过1000个集装柜的水果和视频。同时,还致力于发展国内高品质食材,我们和全国各地优质农场建立直联合作,并为此开发了和建立了完善的水果身份认证和溯源系统,确保食材的信息透明和安全。</p>
		            	    </div>
		            </div>
		        </div>
		    </div>
		</div>
		<foot></foot>
	</div>
</template>

<script>
	import headers from "@/components/head/Notload/header"
	import foot from "@/components/foot/foot"
	export default {
		name: "aboutFriday",
		components: {
			headers,
			foot
		}
	}
	
</script>

<style>
	body,template,div,a,span,li,p,span,h3,h2{
		margin: 0;
		padding: 0;
	}
	img {vertical-align: top;}
	a {text-decoration: none;}
	ul{list-style: none;}
	.aboutFriday{
		border-top: 1px solid #e9e9e9;
	}
	.aboutFriday-content{
		width: 1280px;
		margin: auto;
		margin-bottom: 40px;
	}
	.aboutFriday-topnav{
		height: 48px;
		background: #f4f4f4;
		margin-top: 20px;
		margin-bottom: 20px;
		line-height: 48px;
		font-size: 13px;
		padding-left: 21px;
		color: #6f6f6f;
	}
	.aboutFriday-active{
		color: #498e3d;
	}
	.aboutFriday-contents{
		display: flex;
		justify-content: space-between;
	}
	.aboutFriday-leftnav{
		width: 170px;
		height: 710px;
		border: 1px solid #e7e7e7;
		cursor: pointer;
	}
	.aboutFriday-leftnav>li>p,.aboutFriday-leftnav>li>span{
		margin-left: 20px;
	}
	.aboutFriday-leftnav>li>h3{
		font-weight: normal;
		font-size: 20px;
		line-height: 58px;
		color: #707070;
		padding-left: 20px;
		border-bottom: 1px solid #e9e9e9;
	}
	.aboutFriday-leftnav>li>p{
		font-size: 17px;
		line-height: 40px;
		color: #707070;
	}
	.aboutFriday-leftnav>li>span{
		font-size: 15px;
		line-height: 36px;
		color: #999999;
	}
	.aboutFriday-leftnav>li .aboutFriday-actives{
		color: #498e3d;
		text-decoration: underline;
	}
	.aboutFriday-leftnav>li>p:hover,.aboutFriday-leftnav>li>span:hover{
		color: #498e3d;
		text-decoration: underline;
	}
	.aboutFriday-rightbar{
		width: 1085px;
		border: 1px solid #e7e7e7;
	}
	.aboutFriday-rightbarnav>h3{
		color: #232323;
		font-weight: normal;
		font-size: 20px;
		line-height: 58px;
		padding-left: 22px;
		border-bottom: 1px solid #e7e7e7;
	}
	.aboutFriday-rightbarcore{
		text-align: center;
		padding: 0 42px 22px 36px;
	}
	.aboutFriday-rightbarcore>h2{
		font-weight: normal;
		color: #498e3d;
		font-size: 25px;
		line-height: 25px;
		margin-top: 41px;
		margin-bottom: 21px;
	}
	.aboutFriday-rightbarcore>i,.aboutFriday-rightbarcore>b{
		font-size: 15px;
		color: #999999;
	}
	.aboutFriday-rightbarcore>i{
		margin-right: 90px;
		font-style: normal;
	}
	.aboutFriday-rightbarcore>b{
		font-weight: normal;
	}
	.aboutFriday-rightbarcore>p{
		margin-top: 30px;
		margin-bottom: 19px;
		font-size: 14px;
		text-align: left;
		color: #707070;
		line-height: 30px;
		letter-spacing: 1.2px;
	}
	.aboutFriday-rightbarcore>img{
		width: 1007px;
	}
</style>