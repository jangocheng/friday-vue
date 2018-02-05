<template>
	<div class="shopCar">
		<p><em></em>购物车</p>
		<div class="shopcarBox">
		<ul class="shopCarList" >
			<li>
			<span class="shopcarNa"><input type="checkbox" v-on:click="buyFn()"/>礼拜五生鲜</span>
			<span class="shopcarRu">规格</span>
			<span class="shopcarPe">单价</span>
			<span class="shopcarNu">数量</span>
			<span class="shopcarAl">金额</span>
			<span class="shopcarDo">操作</span>
			</li>
			<li  v-for="item  in  Goodlist">
			<span class="shopcarNa"><input type="checkbox" checked="checked" v-on:click="buyFn(item)"/><img :src="item.bigImg" alt=""/>{{item.title}}</span>
			<span class="shopcarRu">{{item.rulerBuy}}</span>
			<span class="shopcarPe" >{{item.jiage}}</span>
			<span class="shopcarNu" ><button v-on:click="cut(item)" class="cut">-</button><input type="text" v-model="item.buyNum" />
			<button v-on:click="add(item)">+</button></span>
			<span class="shopcarAl">{{item.shopcarAl}}</span>
			<span class="shopcarDo"><button>删除</button></span>
				</li>
		</ul>
		</div>
		<span class="allChoose">全选</span>
		<span class="allDel">批量删除</span>
		<router-link to="/orderSub"><button class="buyNow" v-on:click="buyNow()">立即购买</button></router-link>
		<span class="allMon">商品总价¥{{allParse}}</span>
	</div>
</template>

<script>
	export default{
		data: function() {
			return {
				allParse:0,
				Goodlist:[
				]
			}
		},
		components: {
		},
		methods: {
			cut: function(item) {
				this.allParse=0;
				if(	item.buyNum == 0) {
					item.buyNum = 0;
					item.shopcarAl=item.buyNum-0*item.jiage-0;
				}else {
					item.buyNum--;
				    item.shopcarAl=item.buyNum*item.jiage;
				}
				for(var f=0;f<this.Goodlist.length;f++){
				this.allParse+=this.Goodlist[f].shopcarAl;
				}		
			},
            buyNow:function(){
	        sessionStorage.setItem("allParse",this.allParse)
           },
			add:function(item){
				this.allParse=0;
				item.buyNum++;
				item.shopcarAl=item.buyNum*item.jiage;
				for(var f=0;f<this.Goodlist.length;f++){
				this.allParse+=this.Goodlist[f].shopcarAl;
				}		
			},
		},
	created(){
			var _that =this;
					$.ajax({
					type: "post",
					dataType: "json",
					url: "/api/buy",
					data: {
                    phNum:sessionStorage.getItem("phNum"),
                    act:"carMes"
					},
					success: function(data) {
						console.log(data)
						if (data!="") {
							for(var i in data){
							console.log(data)
							data[i].shopcarAl=data[i].buyNum*data[i].jiage;
							_that.Goodlist=data;
							_that.allParse+=data[i].shopcarAl;
							}
						_that.$store.state.shopCarBol=true 
						}else{
							_that.$store.state.shopCarBol=false 
						}
					}
				});
			},
	}
</script>

<style>
	input,button,ul{
		margin: 0;
		padding: 0;
	}	
em{
	font-style: normal;
}
	.shopCar{
		width: 1280px;
		border: 1px solid red;
		margin: 0px auto;
		overflow: hidden;
	}
	.shopCar>p{
		margin-left: 20px;
	}
	.shopCar>p>em{
		display: inline-block;
		width: 25px;
		height: 25px;
		margin-right: 10px;
		background: url(../../img/evaluate/first/first-shopcar.png) no-repeat;
		background-size: 25px 25px ;
	}
	.shopCarList{
		width: 1280px;
		margin-top: 40px;
		list-style: none;
	}
	.shopCarList>li{
			width: 1278px;
			height: 130px;
			line-height: 130px;
			border: 1px solid lightgray;
			color: gray;
	}
		.shopCarList>li:nth-child(1){
			width: 1278px;
			height: 48px;
			background: lightgray;
			line-height: 48px;
			font-size: 17px;
			color: black;
		}
		.shopCarList>li>span{
			display: inline-block;
	        float: left;
		}
			.shopcarNa>input{
				border: none;
				border: 1px solid lightgreen;
				margin-right: 20px;
			}
				.shopcarNa>img{
					width: 60px;
					height: 60px;
					margin-top: 35px;
					margin-right: 5px ;
				}
				.shopcarNu>input{
					width: 45px;
					height: 25px;
						 float: left;
						 margin-top: 45px;
						 text-align: center;
				}
				.shopcarNu>button{
		        display: inline-block;
		  	 float: left; 
		        border: none;
		        width: 30px;
		        height: 30px;
		        text-align: center;
		        background-color: #f2f2f2;
		        cursor: pointer;
		        margin-top: 45px;
				}
				.cut{
					 float: left;
					 margin-left: 75px;
				}
		.shopcarNa{
			width: 20%;
			text-align: left;
				text-indent: 20px;
		}
		.shopcarRu{
			width: 15%;
			text-align: center;
		
		}
		.shopcarNu{
		
			width: 20%;
					text-align: center;
		}
		.shopcarPe{
				width: 15%;
			text-align: center;
			overflow: hidden;
		}
		.shopcarAl{
			width: 15%;
			text-align: center;
		}
		.shopcarDo{
			width: 15%;
			text-align: center;
		}
		.shopcarBox{
		 overflow: hidden;	
		 border: 1px solid lightgray;
		 border-top: none;
		}	
		.allPar{
			float: right;
			margin-right: 30px;
			font-size: 20px;
			height: 80px;
			line-height: 80px;
		}
		.allPar>span>em{
			font-size: 30px;
			color: red;
		}
		.allChoose{
			display: inline-block;
			margin:62px 32px;
			color: rgb(73,142,61);
		}
		.allDel{
			display: inline-block;
			color: rgb(73,142,61);
		}
		.allMon{  
			float: right;
			margin:62px 32px;
 			display: inline-block;
		}
		.buyNow{
			width: 150px;
			height: 50px;
			background: rgb(240,130,0);
			float: right;
			margin:45px 32px 0  0;
 			display: inline-block;
 			border: none;
 			color: white;
 			font-size:17px ;
		}
</style>