<template>
	<!--头部-->
	<div class="submitOrders">
		<div class="submitOrders-header">
			<div class="submitOrders-header-content">
				<div class="submitOrders-header-left">
					所在城市 :
					<select name="">
						<option value="">北京朝阳区</option>
					</select>
				</div>
				<div class="submitOrders-header-right">
					<div class="submitOrders-header-userphone">
						您好,
						<i>{{phNum}}</i>
					</div>
					<div class="submitOrders-nav">
						<router-link to="/"><span v-on:click="clearUser()">
							退出
						</span></router-link>
						<router-link to="">我的订单</router-link>
						<router-link to="">我的消息</router-link>
						<router-link to="">我是商家</router-link>
					</div>
					<img src="../../../img/head/top-phone.png" />
					<i>400-800-8820</i>
				</div>
			</div>
		</div>
	</div>
	</div>
</template>

<script>
	export default{
		name:"reg-nav",
         components:{
		},
		data(){
			return{
				phNum:sessionStorage.getItem("phNum"),
			}
		},
computed:{
			id(){
				return  sessionStorage.getItem("id")
			}
		},
		created(){
			var _that =this;
					$.ajax({
					type: "post",
					dataType: "json",
					url: "/api/user",
					data: {
                    id:sessionStorage.getItem("id"),
                    act:"presonMes"
					},
					success: function(data) {
						if (data) {
							_that.phNum=data[0].username
							sessionStorage.setItem("phNum",data[0].username);
					        sessionStorage.setItem("integral",data[0].integral);
							sessionStorage.setItem("money",data[0].money);
						}
					}
				});
			},
		methods:{
			clearUser:()=>{
				sessionStorage.clear();
				window.location.reload();
			}
		}
		
	}
</script>

<style>
	body,
	template,
	div,
	a,
	i,
	em,
	span,
	h3 {
		margin: 0;
		padding: 0;
	}
	em,
	i {
		font-style: normal;
	}
	
	img {
		vertical-align: top;
	}
	
	a {
		text-decoration: none;
	}
	
	a {
		color: #787878;
	}
	
	.submitOrders-header {
		background: #eee;
		font-size: 13px;
		height: 36px;
		line-height: 36px;
		color: #787878;
	}
	
	.submitOrders-header-content {
		width: 1280px;
		margin: auto;
		position: relative;
	}
	
	select {
		appearance: none;
		border: none;
		font-size: 13px;
		color: #787878;
		background-color: transparent;
		cursor: pointer;
	}
	
	.submitOrders-header-left,
	.submitOrders-header-right {
		display: inline-block;
	}
	
	.submitOrders-header-left:after {
		content: "";
		width: 0;
		height: 0;
		border-left: 3.5px solid transparent;
		border-right: 3.5px solid transparent;
		border-top: 4px solid #787878;
		position: absolute;
		top: 16px;
		left: 135px;
	}
	
	.submitOrders-header-right {
		float: right;
	}
	
	.submitOrders-header-userphone i {
		color: #498E3D;
	}
	
	.submitOrders-header-userphone,
	.submitOrders-nav {
		display: inline-block;
	}
	
	.submitOrders-nav>a {
		padding: 0 12px;
		border-right: 1px solid #999;
	}
	
	.submitOrders-header-right>img {
		margin-top: 10px;
		margin-left: 10px;
	}
	
	.submitOrders-header-right>i {
		color: #666;
		font-weight: bolder;
	}

</style>