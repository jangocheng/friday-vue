<template>
	<swiper :options="swiperOption" ref="mySwiper">
		<!-- slides -->
		<swiper-slide><img src="../img/2.png" alt="" /></swiper-slide>
		<swiper-slide><img src="../img/1.png"/></swiper-slide>
		<swiper-slide><img src="../img/2.png"/></swiper-slide>
		<swiper-slide><img src="../img/1.png"/></swiper-slide>
		
		<!-- Optional controls -->
		<div class="swiper-pagination" slot="pagination"></div>
		<div class="swiper-button-prev" slot="button-prev"></div>
		<div class="swiper-button-next" slot="button-next"></div>
		
	</swiper>
</template>

<script>
	import Vue from 'vue'
	import { swiper, swiperSlide } from 'node_modules/vue-awesome-swiper'
	export default {
		name: 'swipers',
		data() {
			return {
				swiperOption: {
					notNextTick: true,
					autoplay: 3000,
					direction: 'horizontal',
					grabCursor: true,
					setWrapperSize: true,
					autoHeight: true,
					pagination: '.swiper-pagination',
					paginationClickable: true,
					prevButton: '.swiper-button-prev',
					nextButton: '.swiper-button-next',
					mousewheelControl: true,
					observeParents: true,
					debugger: true,
					onTransitionStart(swiper) {
					},

				}
			}
		},

		computed: {
			swiper() {
				return this.$refs.mySwiper.swiper
			}
		},
		mounted() {
			console.log('this is current swiper instance object', this.swiper)
			//    this.swiper.slideTo(3, 1000, false)
		},
		components: {
			swiper,
			swiperSlide
		}
	}
</script>

<style>

</style>