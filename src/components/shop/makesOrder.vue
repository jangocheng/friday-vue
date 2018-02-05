<template>
	<div>
		<small_Shoppingcarthead></small_Shoppingcarthead>
		<div class="makesOrder-head">
			<div class="makesOrder-heads">
				<img src="../../img/foot/homelogo.png"/>
				<b>确认兑换信息</b>
			</div>
		</div>
		<div class="makesOrder-person">
			<h3>收货人地址</h3>
			<router-link to="">使用新地址</router-link>
			<div class="makesOrder-defaultads">
				<input type="radio" />
				<i>但小兵 北京 北京市 昌平区 天通苑明天第一城4号楼101 固定电话010-21541589</i>
				<span>默认地址</span>
				<router-link to="">删除</router-link>
				<router-link to="">修改</router-link>
			</div>
			<div class="makesOrder-newads" v-for="item in addRess">
				<input type="radio" />
				<i>{{item.to}}</i>
				<router-link to="">删除</router-link>
				<router-link to="">修改</router-link>
				<span>设置为默认地址</span>
			</div>
			<i>展开其他地址</i>
			<em>收起地址</em>
			<ul class="makesOrder-ifmtion">
				<li>
					<h3>商品信息</h3>
				</li>
				<li>
					<i>商品名称</i>
					<i>规格</i>
					<i>数量</i>
					<i>金额</i>
				</li>
				<li v-for="item in goodsPrise">
					<div class="makesOrder-name">
						<img v-bind:src="item.pto"/>
						<span>{{item.name}}</span>
					</div>
					<em class="makesOrder-default">{{item.norms}}</em>
					<div class="makesOrder-num">
						<button v-on:click="jian(num)">-</button><input disabled="disabled" type="text" v-model="num" /><button v-on:click="jia(num)">+</button>
					</div>
					<em class="makesOrder-active">{{item.prises}}积分</em>
				</li>
			</ul>
			<div class="makesOrder-note">
				<h3>添加订单备注</h3>
				<input type="" placeholder="限45个字,请填写有关商品、支付、发票等信息" />
			</div>
			<div class="makesOrder-refer">
				<i>应付积分 :</i>
				<em>500积分</em>
				<router-link to="/makeOrder">确认兑换</router-link>
			</div>
		</div>
		<foot></foot>
	</div>
</template>

<script>
	import small_Shoppingcarthead from '@/components/shop/small_Shoppingcarthead'
	import foot from '@/components/foot/foot'
	
	export default {
		name: "makesOrder",
		components: {
			small_Shoppingcarthead,
			foot
		},
		data:function(){
			return{
				addRess:[{
					to:"但小兵 北京 北京市 昌平区 天通苑明天第一城4号楼101 固定电话010-21541589"
				},{
					to:"但小兵 北京 北京市 昌平区 天通苑明天第一城4号楼101 固定电话010-21541589"
				},{
					to:"但小兵 北京 北京市 昌平区 天通苑明天第一城4号楼101 固定电话010-21541589"
				}],
				goodsPrise:[{
					pto: require("../../img/makesOrder/makesOrder_goods.png"),
					name:"云南蒙自石榴8个装",
					norms:"8个装",
					prises:60
				},{
					pto: require("../../img/makesOrder/makesOrder_goods.png"),
					name:"云南蒙自石榴8个装",
					norms:"8个装",
					prises:60
				},{
					pto: require("../../img/makesOrder/makesOrder_goods.png"),
					name:"福建琯溪白心蜜柚 ( 大果 ) 2个装",
					norms:"8个装",
					prises:60
				}],
				num:1
			}
		},
		methods:{
			jian:function(){
				console.log(this);
				this.num--;
			},
			jia:function(){
				console.log(this);
				this.num++;
			}
		}
	}
	
</script>

<style>
	body,div,img,h3,i,b,a,li,button,input,{
		margin: 0;
		padding: 0;
	}
	img {vertical-align: top;}
	a {text-decoration: none;}
	ul{list-style: none;}
	.makesOrder-head{
		border-bottom: 1px solid #e4e4e4;
	}
	.makesOrder-heads{
		height: 99px;
		width: 1280px;
		margin: auto;
		margin-top: 32px;
	}
	.makesOrder-heads b{
		color: #666;
		font-size: 21px;
		font-weight: normal;
		line-height: 38px;
		margin-top: 25px;
		display: inline-block;
		margin-left: 60px;
		padding-left: 60px;
		border-left: 1px solid #cecece;
	}
	.makesOrder-person{
		width: 1280px;
		margin: auto;
	}
	.makesOrder-person>h3{
		font-size: 19px;
		line-height: 58px;
		color: #666;
		display: inline-block;
	}
	.makesOrder-person>a{
		font-size: 14px;
		color: #FFFFFF;
		background: #F08200;
		width: 90px;
		height: 30px;
		line-height: 30px;
		text-align: center;
		display: inline-block;
		border-radius: 5px;
		float: right;
		margin-top: 16px;
		margin-bottom: 13px;
	}
	.makesOrder-defaultads{
		border: 1px solid #e4e4e4;
		background: #f4fff2;
		margin-bottom: 12px;
	}
	.makesOrder-defaultads>input{
		margin-left: 18px;
		margin-right: 12px;
	}
	.makesOrder-defaultads>i{
		font-style: normal;
		color: #666;
		font-size: 15px;
		line-height: 38px;
		margin-right: 20px;
	}
	.makesOrder-defaultads>span{
		color: #999;
		font-size: 14px;
	}
	.makesOrder-defaultads>a{
		line-height: 14px;
		float: right;
		color: #498e3d;
		margin-right: 15px;
		margin-left: 25px;
		margin-top: 12px;
	}
	.makesOrder-newads{
		background: #f4fff2;
		margin-bottom: 12px;
	}
	.makesOrder-newads>input{
		margin-left: 18px;
		margin-right: 12px;
	}
	.makesOrder-newads>i{
		font-style: normal;
		color: #666;
		font-size: 15px;
		line-height: 38px;
		margin-right: 30px;
	}
	.makesOrder-newads>a{
		line-height: 14px;
		float: right;
		color: #498e3d;
		margin-right: 15px;
		margin-left: 25px;
		line-height: 38px;
	}
	.makesOrder-newads>span{
		float: right;
		color: #F08200;
		font-size: 14px;
		line-height: 38px;
	}
	.makesOrder-person>i,.makesOrder-person>em{
		font-style: normal;
		color: #498e3d;
		margin-bottom: 10px;
		line-height: 54px;
	}
	.makesOrder-person>i{
		background: url(../../img/makesOrder/makesOrder_下箭头.png) no-repeat;
		background-image: 12px;
		padding-right: 20px;
		background-position: 100px 7px;
	}
	.makesOrder-person>em{
		background: url(../../img/makesOrder/makesOrder_上箭头.png) no-repeat;
		background-image: 12px;
		padding-right: 20px;
		background-position: 70px 7px;
	}
	.makesOrder-ifmtion{
		margin-bottom: 30px;
	}
	.makesOrder-ifmtion>li>h3{
		font-size: 19px;
		line-height: 60px;
		color: #666;
		border-top: 1px solid #e9e9e9;
	}
	.makesOrder-ifmtion>li:nth-child(2){
		background: #f2f2f2;
		color: #333;
		height: 47px;
		line-height: 47px;
	}
	.makesOrder-ifmtion>li:nth-child(2) i{
		width: 24%;
		display: inline-block;
		font-style: normal;
		text-align: center;
	}
	.makesOrder-name{
		display: inline-block;
		width: 26%;
		margin-left: 75px;
	}
	.makesOrder-num{
		display: inline-block;
		width:15%;
		text-align: center;
	}
	.makesOrder-ifmtion>li:nth-child(n+3){
		height: 120px;
		border: 1px solid #ececec;
		border-top: none;
	}
	.makesOrder-ifmtion>li:nth-child(n+3) em{
		font-style: normal;
		width: 8%;
		display: inline-block;
		text-align: center;
	}
	.makesOrder-active{
		color: #ff5757;
		font-size: 18px;
		line-height: 120px;
	}
	.makesOrder-default{
		color: #999;
	}
	.makesOrder-name>img{
		margin-top: -30px;
	}
	.makesOrder-name>span{
		font-size: 15px;
		color: #666;
		margin-left: 20px;
	}
	.makesOrder-num>input{
		text-align: center;
		width: 47px;
		height: 23px;
		padding: 0;
		font-size: 16px;
		color: #999999;
	}
	.makesOrder-num>button{
		width: 27px;
		height: 27px;
		color: #999999;
		font-size: 16px;
	}
	.makesOrder-note{
		height: 116px;
		border-top: 1px solid #ececec;
		border-bottom: 1px solid #ececec;
	}
	.makesOrder-note>h3{
		font-size: 18px;
		line-height: 60px;
		color: #666;
	}
	.makesOrder-note>input{
		width: 615px;
		height: 35px;
		font-size: 15px;
		padding-left: 10px;
		outline: none;
	}
	.makesOrder-refer{
		height: 191px;
		float: right;
	}
	.makesOrder-refer>i,.makesOrder-refer>em{
		font-style: normal;
	}
	.makesOrder-refer>a{
		background: #F08200;
		color: #FFFFFF;
		width: 150px;
		height: 50px;
		line-height: 50px;
		text-align: center;
		border-radius: 5px;
		display: block;
	}
	.makesOrder-refer>i{
		font-size: 17px;
		color: #666;
	}
	.makesOrder-refer>em{
		font-size: 22px;
		color: #ff5757;
		line-height: 102px;
	}
</style>