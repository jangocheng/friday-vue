import Vue from 'vue'
import Router from 'vue-router'
import firstPage from '@/components/pageFirst/first-page'
import register from '@/components/reg/register'
import person from '@/components/person/person'
import myAccount from '@/components/person/myAccount'
import perCenter from '@/components/person/perCenter'
import myOrder from '@/components/person/myOrder'
import myIntegration from '@/components/person/myIntegration'
import IntOrder from '@/components/person/IntOrder'
import myWallet from '@/components/person/myWallet'
import myAddress from '@/components/person/myAddress'
import myCollection from '@/components/person/myCollection' 
import recentBrowse from '@/components/person/recentBrowse' 
import changePass from '@/components/person/changePass' 
import myMages from '@/components/person/myMages' 
import opinion from '@/components/person/opioion' 
import loadFirst from '@/components/pageFirst/loadFirst' 
import exechange from '@/components/person/exechange' 
import changePhone from '@/components/person/changePhone' 
import orderMes from '@/components/person/orderMes' 
import loaduse from '@/components/loaduse/loaduse' 
import firdaydetail from '@/components/detail/firdaydetail' 
import introduction from '@/components/detail/introduction' 
import evaluate from '@/components/detail/evaluate' 
import appraise from '@/components/person/appraise' 
import newAddress from '@/components/person/newAddress' 
import myinforion from '@/components/person/myinforion' 
//引入同城组件
import samecity from "@/components/sameCity/samecity"
import all from "@/components/sameCity/all"
import wash from "@/components/sameCity/wash"
import service from "@/components/sameCity/service"
import maintain from "@/components/sameCity/maintain"
import move from "@/components/sameCity/move"
import car from "@/components/sameCity/car"
import shopping from "@/components/sameCity/shopping"
import trail from "@/components/sameCity/trail"
import notfind from "@/components/other/notFind"
import firdaypage from "@/components/other/firday"
import aboutFir from "@/components/about/aboutFriday"
//空购物车
import emptyShop from "@/components/shop/emptyShopcar"
//积分商城
import integral from "@/components/shop/integral"
import intDetail from "@/components/detail/intDetail"
//订单
import orderSub from "@/components/shop/orderSub"
import makeOrder from "@/components/shop/makesOrder"
//商品分类
import goodskind from "@/components/kinds/goodskind"
//支付页面
import topupPayment from "@/components/puy/topupPayment"
import paysuccess from "@/components/puy/paysuccess"
Vue.use(Router)
export default new Router({
  routes: [
    {
      path: '/',
      name: 'firstPage',
      component: firstPage
    }, {
    	  path: '/makeOrder',
      name: 'makeOrder',
      component: makeOrder
    },{
    	  path: '/shopCar',
      name: 'emptyShop',
      component: emptyShop
    },{
    	  path: '/topupPayment',
      name: 'topupPayment',
      component: topupPayment
    },{
    	  path: '/orderSub',
      name: 'orderSub',
      component: orderSub
    },{
			path: "/firday",
			name: "firdaypage",
			component: firdaypage
		},{
			path: "/integral",
			name: "integral",
			component: integral
		},{
			path: "/intDetail",
			name: "intDetail",
			component: intDetail
		},{
			path: "/aboutFir",
			name: "aboutFir",
			component: aboutFir
		},{//搜索
			path: "/goodskind",
			name: "goodskind",
			component: goodskind,
		},{
			path: "/samecity",
			name: "samecity",
			component: samecity,
			children: [{
					path: "/all",
					name: "all",
					component: all,
				}, {
					path: "/samecity",
					name: "all",
					component: all
				},
				//点击跳转到洗涤服务
				{
					path: "/wash",
					name: "wash",
					component: wash
				}, //点击跳转到家政服务
				{
					path: "/service",
					name: "service",
					component: service
				}, {
					path: "/maintain",
					name: "maintain",
					component: maintain
				}, {
					path: "/move",
					name: "move",
					component: move
				}, {
					path: "/car",
					name: "car",
					component: car
				}, {
					path: "/shopping",
					name: "shopping",
					component: shopping
				}, {
					path: "/trail",
					name: "trail",
					component: trail
				}
			]
		}, {
			path: "/photo",
			name: "notfind",
			component: notfind
		}, {
			path: "/fruit",
			name: "fruit",
			component: notfind
		},{
			path: "/fruit",
			name: "fruit",
			component: notfind
		},{
			path: "/wedding",
			name: "wedding",
			component: notfind
		},{
			path: "/net",
			name: "net",
			component: notfind
		},{
			path: "/nav",
			name: "nav",
			component: notfind
		},{
    	 path: '/loaduse',
      name: 'loaduse',
      component: loaduse
    },  {
    		 path: '/firdaydetail',
      name: 'firdaydetail',
      component: firdaydetail,children:[
      {
      	 path: '/',
      name: 'introduction',
      component: introduction
      },{
      	 path: '/firdaydetail/evaluate',
      name: 'evaluate',
      component: evaluate
      }
      ]
    },
    {
    	 path: '/loadFirst',
      name: 'loadFirst',
      component: loadFirst
    },{
    	path: '/person',
      name: 'person',
      component: person,children:[
      {
      path: '/person/perCenter',
      name: 'perCenter',
      component: perCenter,
      },{
      	    path: '/person/IntOrder',
      name: 'IntOrder',
      component: IntOrder,
      },{
      	path: '/person/myinforion',
      name: 'myinforion',
      component: myinforion,
      },{
      	    path: '/person/newAddress',
      name: 'newAddress',
      component: newAddress,
      },{
      	   path: '/person/exechange',
      name: 'exechange',
      component: exechange,
      },{
      	  path: '/person/myMages',
      name: 'myMages',
      component: myMages,
      },
      {
      path: '/person/myOrder',
      name: 'myOrder',
      component: myOrder,
      },
      {
      	 path: '/person/orderMes',
      name: 'orderMes',
      component: orderMes,
      },{
      	  path: '/person/opinion',
      name: 'opinion',
      component: opinion,
      },{
      	    path: '/person/appraise',
      name: 'appraise',
      component: appraise,
      },{
      	    path: '/person/changePhone',
      name: 'changePhone',
      component: changePhone,
      },
      {
      path: '/person/changePass',
      name: 'changePass',
      component: changePass,
      },
      {
      path: '/person',
      name: 'myAccount',
      component: myAccount,
      },{
      path: '/person/myCollection',
      name: 'myCollection',
      component: myCollection,
      },{
      	  path: '/person/myinforion',
      name: 'myinforion',
      component: myinforion,
      },
      {
      path: '/person/recentBrowse',
      name: 'recentBrowse',
      component: recentBrowse,
      },
      {
      path: '/person/myWallet',
      name: 'myWallet',
      component: myWallet,
      },
      {
      path: '/person/myIntegration',
      name: 'myIntegration',
      component: myIntegration,
      },
      {
      path: '/person/myAddress',
      name: 'myAddress',
      component: myAddress,
      }
      ]
    },{   
    	path: '/register',
      name: 'register',
      component: register
    },{
    		path: '/paysuccess',
      name: 'paysuccess',
      component: paysuccess
    },
//  {   
//    path: '*',
//    name: 'firstPage',
//    component: firstPage
//  }
  ]
})
