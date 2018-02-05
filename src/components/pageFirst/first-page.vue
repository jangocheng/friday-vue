<template>
	<div>
		<top></top>
			<div class="f-swiper">
			<swipers></swipers>
		</div>
		<!--热卖商品-->
		<div class="first-hot-sell">
			<a href=""><img src="../../img/first/first-2.jpg" /></a>
			<a href=""><img src="../../img/first/first-3.jpg" /></a>
			<a href=""><img src="../../img/first/first-01.jpg" /></a>
			<a href=""><img src="../../img/first/first-4.jpg" /></a>
		</div>
		<!--礼拜五-->
		<div class="first-firday">
			<img src="../../img/first/first-5.png" />
			<span class="sp1">礼拜五</span>
			<span class="sp2">firday</span>
			<div class="first-firday-settime">
				<span class="sp3">距离开始</span>
				<em>5天</em>
				<em>08</em>:
				<em>16</em>:
				<em>13</em>
				<a href="" class="sp4">更多></a>
			</div>
		</div>
		<!--礼拜五图片-->
		<router-link to="/firdaydetail" class="first-firdayPic" >
			<div  v-for="item in dataf1"  v-on:click="detailFn(item)">
				<img :src="item.bigImg" />
				<span class="first-goods-name">{{item.intro}}</span>
				<span class="first-goods-num">1个装</span>
				<em class="first-firday-prize1">礼拜五价:</em> <em class="first-firday-prize2">{{item.jiage}}</em>
			</div>
		</router-link>
		<!--新鲜水果-->
		<div class="first-firday">
			<img src="../../img/first/first-fruit.png" />
			<span class="sp1">新鲜水果</span>
			<span class="sp2">精选海内外特色水果,品质一流</span>
			<a href="" class="sp5">更多></a>
		</div>
		<!--水果图片-->
			<div class="first-fruitPic" >
			<router-link to="/firdaydetail" class="first-firdayPic">
			<div v-for="item in dataf2" v-on:click="detailFn1(item)">
				<img class="first-fruit-pic" :src="item.bigImg" />
				<span class="first-pic-information">
				<span class="first-fruit-name">{{item.title}}</span>
				<span class="first-fruit-intro">{{item.intro}}</span>
				<em class="first-now-prize">¥{{item.jiage}}</em> <em class="first-used-prize">¥{{item.oldparse}}</em>
				<!--购物车-->
				<a class="shoping-car" href="javascript:void(0)">
					<img class="first-shop-pic" src="../../img/first/first-shopcar.png"/>
				</a>
				</span>
			</div>
			</router-link>
		</div>
		<!--水产海鲜-->
		<div class="first-firday">
			<img src="../../img/first/first-seafresh.png" />
			<span class="sp1">水产海鲜</span>
			<span class="sp2">国内外新鲜到港的鱼虾蟹贝,我们全都有</span>
			<a href="" class="sp5">更多></a>
		</div>
		<!--水果图片-->
		<div class="first-fruitPic"  >
			<router-link to="/firdaydetail" class="first-firdayPic" >
			<div v-for="item in dataf3" v-on:click="detailFn1(item)">
			<img class="first-fruit-pic" :src="item.bigImg" />
				<span class="first-pic-information">
				<span class="first-fruit-name">{{item.title}}</span>
				<span class="first-fruit-intro">{{item.intro}}</span>
				<em class="first-now-prize">¥{{item.jiage}}</em> <em class="first-used-prize">¥{{item.oldparse}}</em>
				<!--购物车-->
				<a class="shoping-car" href="javascript:void(0)">
					<img class="first-shop-pic" src="../../img/first/first-shopcar.png"/>
				</a>
				</span>
			</div>
			</router-link>
		</div>
		<!--肉类禽蛋-->
		<div class="first-firday">
			<img src="../../img/first/first-meat.png"  v-on:click="detailFn1(item)" />
			<span class="sp1">肉类禽蛋</span>
			<span class="sp2">国内外精品肉类,安全放心</span>
			<a href="" class="sp5">更多></a>
		</div>
		
		<!--水果图片-->
		<div class="first-fruitPic" >
			<router-link to="/firdaydetail" class="first-firdayPic">
			<div v-for="item in dataf4" v-on:click="detailFn1(item)">
			<img class="first-fruit-pic" :src="item.bigImg" />
				<span class="first-pic-information">
				<span class="first-fruit-name">{{item.title}}</span>
				<span class="first-fruit-intro">{{item.intro}}</span>
				<em class="first-now-prize">¥{{item.jiage}}</em> <em class="first-used-prize">¥{{item.oldparse}}</em>
				<!--购物车-->
				<a class="shoping-car" href="javascript:void(0)">
					<img class="first-shop-pic" src="../../img/first/first-shopcar.png"/>
				</a>
				</span>
			</div>
			</router-link>
		</div>
		
		
		<!--水产海鲜-->
		<div class="first-firday">
			<img src="../../img/first/first-milk.png" />
			<span class="sp1">蛋奶速食</span>
			<span class="sp2">国内外新鲜到港的鱼虾蟹贝,我们全都有</span>
			<a href="" class="sp5">更多></a>
		</div>
		
		<!--水果图片-->
		<div class="first-fruitPic" >
			<router-link to="/firdaydetail" class="first-firdayPic">
			<div v-for="item in dataf5" v-on:click="detailFn1(item)">
			<img class="first-fruit-pic" :src="item.bigImg" />
				<span class="first-pic-information">
				<span class="first-fruit-name">{{item.title}}</span>
				<span class="first-fruit-intro">{{item.intro}}</span>
				<em class="first-now-prize">¥{{item.jiage}}</em> <em class="first-used-prize">¥{{item.oldparse}}</em>
				<!--购物车-->
				<a class="shoping-car" href="javascript:void(0)">
					<img class="first-shop-pic" src="../../img/first/first-shopcar.png"/>
				</a>
				</span>
			</div>
			</router-link>
		</div>

		<foot></foot>
	</div>
</template>
<script>
    import top from '@/components/head/Notload/header'
	import foot from "@/components/foot/foot"
	import swipers from "@/components/other/selfSwiper"
	export default {
		name: "firstpage",
		components: {
			top,
			foot,
			swipers
		},
		data:function(){
		    return {
		    	 dataf1:[{
		    	 	bigImg:"",
		    	 	intro:"新西兰佳沛黄金奇异果",
		    	 	numbers:"6",
		    	 	jiage:"28.80",
		    	 	id:0
		    	 }],
		    	 dataf2:[],
		    	 	dataf3:[],
		    	 	dataf4:[],
		    	 dataf5:[],
		    }
		},
		methods:{
			detailFn:function(item){
			sessionStorage.setItem("title",item.intro);
			sessionStorage.setItem("bigImg",item.bigImg);
			sessionStorage.setItem("jiage",item.jiage);
			sessionStorage.setItem("id",item.id);
			sessionStorage.setItem("actt","goods")
			sessionStorage.setItem("kinds", "礼拜五折扣")
			sessionStorage.setItem("rush", true)
			sessionStorage.setItem("oldparse",40);
			},
			detailFn1:function(item){
		    sessionStorage.setItem("bigImg",item.bigImg);
		    sessionStorage.setItem("title",item.title);
			sessionStorage.setItem("jiage",item.jiage);
			sessionStorage.setItem("oldparse",item.oldparse);
			sessionStorage.setItem("id",item.id);
			sessionStorage.setItem("actt","othergoods")
			sessionStorage.setItem("kinds", item.kinds)
			sessionStorage.setItem("rush", true)
			}
		},
  created(){
  	var _that =this;
  			$.ajax({
					type: "post",
					dataType: "json",
					url: "/api/goods",
					data: {
                    act:"firstPage"
					},
					success: function(data) {
						if (data) {
							for(var i in data){
									 data[i].bigImg = require("../../img/goods/"+data[i].bigImg)
						  		    _that.dataf1=data
							}
						
						}
					}
				});
					$.ajax({
					type: "post",
					dataType: "json",
					url: "/api/goods",
					data: {
                    act:"firstPage1"
					},
					success: function(data) {
						if (data) {
						for(var i=0;i<4;i++){
									 data[i].bigImg = require("../../img/goods/"+data[i].bigImg)
						  		    _that.dataf2.push(data[i])
							}
							for(var i=4;i<8;i++){
									 data[i].bigImg = require("../../img/meat/"+data[i].bigImg)
						  		   _that.dataf3.push(data[i])
							}
							for(var i=8;i<12;i++){
									 data[i].bigImg = require("../../img/meat/"+data[i].bigImg)
						  		   _that.dataf4.push(data[i])
							}	
							for(var i=12;i<16;i++){
									 data[i].bigImg = require("../../img/meat/"+data[i].bigImg)
						  		   _that.dataf5.push(data[i])
							}
						
						}
					}
				});
  }
	}
</script>
<style>
@import url("../../css/firstHome.css");
	
</style>