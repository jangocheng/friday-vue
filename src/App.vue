<template>
  <div id="app">
    <router-view></router-view>
    	<loginbou v-if="logoBol"></loginbou>
  </div>
</template>

<script>
import loginbou from  "@/components/loaduse/loginBounced"
export default {
  name: 'app',
  computed:{
      logoBol(){
   return  	this.$store.state.logoBol
		}
      },
  components:{
  	loginbou
  }
}
</script>
