import Vue from 'vue'
import Vuex from 'vuex'

Vue.use(Vuex)
const store = new Vuex.Store({
  // 定义状态
  state: {
  id:"",
addCar:false,
addresBol:false,
shopCarBol:"",
logoBol:false
  },
})
export default store