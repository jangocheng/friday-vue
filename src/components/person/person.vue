<template>
		<div>
		<top></top>
		<div class="personWarp">
			<ul>
				<li>个人中心</li>
				<li class="personNav">交易管理<em>&gt;</em></li>
				<li>
					<router-link to="/person">我的账号</router-link>
				</li>
				<li>
					<router-link to="/person/myOrder">我的订单</router-link>
				</li>
				<li>
					<router-link  to="/person/myIntegration">我的积分</router-link>
				</li>
				<li>
					<router-link  to="/person/IntOrder">积分订单</router-link>
				</li>
				<li>
					<router-link to="/person/myWallet">我的钱包</router-link>
				</li>
				<li class="personNav">会员资料<em>&gt;</em></li>
				<li>
					<router-link to="/person/perCenter">个人资料</router-link>
				</li>
				<li>
					<router-link  to="/person/myAddress">地址管理</router-link>
				</li>
				<li>
				<router-link to="/person/myCollection">我的收藏</router-link>
				</li>
				<li>
					<router-link  to="/person/recentBrowse">最近浏览</router-link>
				</li>
				<li>
					<router-link  to="/person/changePass">修改密码</router-link>
				</li>
				<li class="personNav">站内信<em>&gt;</em></li>
				<li>
					<router-link  to="/person/myinforion">我的消息</router-link>
				</li>
				<li>
					<router-link to="/person/opinion">意见反馈</router-link>
				</li>
			</ul>
			<div id="personShow">
			  <router-view></router-view>
			</div>
		</div>
	<foot></foot>
			</div>	
</template>

<script>
	import top from '@/components/head/Notload/header'
	import foot from '@/components/foot/foot'
		export default {
			name:"person",
			components:{
				foot,top
			},
		
			}
</script>

<style>
	ul {
		padding: 0;
		margin: 0;
	}
	#cont {
		margin-top:386px;
		width: 100%;
		height: 710px;
		border: 1px solid pink
	}
	em {
		font-style: normal
	}
.personWarp {
		width: 1280px;
		/*height: 625px;*/
		margin: 0 auto;
		overflow: hidden;
	}
	
	.personWarp>ul {
		width: 168px;
		height: 625px;
		list-style: none;
		border: 1px solid lightgray;
		overflow: hidden;
		float: left;
	}
	
	.personWarp>ul>li {
		padding-left: 20px;
		height: 35px;
		color: rgb(108, 108, 108);
		font-size: 14px;
		line-height: 38px;
	}
	
	.personWarp>ul>li:nth-child(1) {
		width: 168px;
		height: 55px;
		border-bottom: 1px solid lightgray;
		color: rgb(108, 108, 108);
		line-height: 55px;
		padding-left: 20px;
		font-size: 22px;
	}
	
	.personWarp>ul>li:nth-child(3) {
		text-decoration: underline;
	}
	
	.personWarp>ul>li:nth-child(3) a:visited {
		color: rgb(73, 142, 61);
		text-decoration: underline;
	}
	
	.personNav {
		height: 40px!important;
		font-size: 18px!important;
		line-height: 40px!important;
	}
	
	.personNav em {
		display: inline-block;
		margin-right: 20px;
		margin-top: -1px;
		float: right;
	}
	
	.personWarp>ul>li>a:visited {
		color: rgb(108, 108, 108);
	}
	
	.personWarp>ul>li>a:hover {
		color: rgb(73, 142, 61);
		text-decoration: underline;
	}
	
	.personShow {
		widows: 500px;
		/*height: 500px;*/
		float: left;
	}
</style>