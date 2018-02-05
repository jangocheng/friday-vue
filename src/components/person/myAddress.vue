<template>
<div class="myAddress">
	 	<span><p>地址管理</p><router-link to="/person/newAddress">添加新地址</router-link></span>
	 		<div class="addressCont">
	 			
	 		
	 	<span class="addSpan">
	 		 <em></em> 暂无收货地址,请点击 <router-link to="/person/newAddress">添加新地址</router-link>
	 	</span>
	<!--<ul class="addressList">
		<li>
			<span class="addPeo">收货人</span>
			<span class="addCity">所在区域</span>
			<span class="addStreet">街道地址</span>
			<span class="addNum">联系电话</span>
			<span class="addNote">备注</span>
			<span class="addDo">操作</span>
		</li>
			<li><span class="addPeo">张强强</span>
			<span class="addCity">北京 北京市 朝阳区</span>
			<span class="addStreet">朝阳媒体村(北苑天畅)C3-2506室</span>
			<span class="addNum">18331205623</span>
			<span class="addNote">家里的地址</span>
			<span class="addDo"><em>修改</em>|<em>删除</em></span></li>
				<li><span class="addPeo">张强强</span>
			<span class="addCity">北京 北京市 朝阳区</span>
			<span class="addStreet">朝阳媒体村(北苑天畅)C3-2506室</span>
			<span class="addNum">18331205623</span>
			<span class="addNote">家里的地址</span>
			<span class="addDo"><span>设置为默认地址</span>|<em>修改</em>|<em>删除</em></span></li>
	</ul>-->
	</div>
</div>

</template>

<script>
</script>

<style>
	.myAddress {
		float: right;
		width: 1085px;
		height: 625px;
		margin-bottom: 40px;
		border: 1px solid lightgray;
		overflow: hidden;
	}
	.myAddress>span>p{
		display: inline-block;
		line-height: 55px;
		width: 50%;
		float: left;
		font-size: 20px;
		padding-left: 20px;
	}
	.myAddress>span>a{
		width: 90px;
		height: 30px;
		line-height: 30px;
		display: inline-block;
		text-align: center;
		border-radius: 5px;
		float: right;
		background:rgb(73, 142, 61);
		color: white;
		margin-top: 13px;
		margin-right: 22px;
	}
	.myAddress>span{
		width: 100%;
		height: 55px;
		display: inline-block;
        border-bottom: 1px solid lightgray;
	}
	.addressCont{
		width: 1047px;
		height: 570px;
	}
	.addressList{
		list-style: none;
		width: 1047px;
		margin-left: 20px;
		margin-top: 10px;
			border-left: 1px solid lightgray;
			border-right: 1px solid lightgray;
	}
	.addressList>li{
		width: 1047px;
		height: 45px;
		line-height: 45px;
			border-bottom: 1px solid lightgray;
	}
	.addressList>li:nth-child(1){
		background: lightgray;
	
	}
		.addressList>li>span{
			text-align: center;
			display: inline-block;
			float: left;
		}
	.addPeo{
		width: 10%;
	}
	.addCity{
		width: 15%;
		/*padding-left: 5%;*/
	}
	.addStreet{
	width: 30%;	
	}
	.addNum{
		width: 15%;
	}
	.addNote{
		width: 12%;
	}
	.addDo{
		width: 18%;
	}
	.addDo>em{
		color:rgb(73, 142, 61) ;
	}
	.addDo>span{
		color: rgb(240,130,0);
	}
	.addSpan{
		width: 100%;
	display: inline-block;
	text-align: center;
	margin: 0 auto;
	color: #999;
	font-size: 19px;
	}
	.addSpan>a{
		margin-top: 230px;
		width: 90px;
		height: 30px;
		line-height: 30px;
		font-size: 15px;
		display: inline-block;
		text-align: center;
		border-radius: 5px;
		background:rgb(73, 142, 61);
		color: white;
		border: none;
		outline: none;
	}
	.addSpan>em{
		background: url(../../img/person/myAddress1.png) no-repeat;
		background-size: 32px;
		display: inline-block;
		width: 32px;
		height: 32px;
		margin-bottom: -8px;
	}
</style>