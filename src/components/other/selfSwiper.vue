<template>
	<swiper :options="swiperOption" ref="mySwiper">
		<!-- slides -->
		<swiper-slide><img src="../../img/2.png" alt="" /></swiper-slide>
		<swiper-slide><img src="../../img/1.png"/></swiper-slide>
		<swiper-slide><img src="../../img/2.png"/></swiper-slide>
		<swiper-slide><img src="../../img/1.png"/></swiper-slide>
		<div class="swiper-button-prev" slot="button-prev"></div>
		<div class="swiper-button-next" slot="button-next"></div>
		
	</swiper>
</template>

<script>
	import Vue from 'vue'
	import { swiper, swiperSlide } from '../../../node_modules/node_modules/vue-awesome-swiper'
	export default {
		name: 'swipers',
		data() {
			return {
				swiperOption: {
					notNextTick: true,
					autoplay: 3000,
					direction: 'horizontal',
					setWrapperSize: true,
					pagination: '.swiper-pagination',
					paginationClickable: true,
					prevButton: '.swiper-button-prev',
					nextButton: '.swiper-button-next',
					observeParents: true,
				}
			}
		},
		computed: {
			swiper() {
				return this.$refs.mySwiper.swiper
			}
		},
		components: {
			swiper,
			swiperSlide
		}
	}
</script>

<style>

</style>