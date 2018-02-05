<template>
<div>
  <!--商品详情-->
  <div class="intro-detail">
  	<dl>
  		<dt class="intro-goods-title">男士短袖</dt>
  		<dd class="intro-goods-detail">明水礼盒十分优秀,是送朋友,送亲人的不二选择<br />什么,您还不知道明水礼盒,今年过节不收礼,收礼只收明水礼盒,out了吧,赶紧买起礼盒送亲朋,送好友吧<br />完成交易,如有剩余库存,从新上架产品
  		</dd>
  	</dl>
  	<img src="../img/introduction/detail.png"/>
  </div>
  <div class="intro-detail">
  	<dl>
  		<dt class="intro-goods-title">男士短袖</dt>
  		<dd class="intro-goods-detail">明水礼盒十分优秀,是送朋友,送亲人的不二选择<br />什么,您还不知道明水礼盒,今年过节不收礼,收礼只收明水礼盒,out了吧,赶紧买起礼盒送亲朋,送好友吧<br />完成交易,如有剩余库存,从新上架产品
  		
  		</dd>
  	</dl>
  	<img src="../img/introduction/detail.png"/>
  </div>
 <foot></foot>
</div>
</template>
<script>
	import foot from "@/components/foot"
	export default{
		name:"introduction",
		components:{
			foot,
		},
		data:function(){
			return{
			}
		}
	}
</script>

<style>
	dd{
		font-style: normal;
	}
	/*商品详情*/
	.intro-detail{
		width: 1280px;
		margin: 30px auto;
		line-height: 35px;
	}
	.intro-goods-title{
		color: #ec6a17;
	}
	.intro-goods-detail{
		color: #707070;
		font-style: normal;
	}
	
</style>