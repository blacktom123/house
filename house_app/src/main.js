import Vue from 'vue'
import App from './App'
import router from './router'
import "./assets/css/border.css"
import "./assets/css/reset.css"
import "./assets/iconfont/iconfont.css"
import 'swiper/dist/css/swiper.css'
import VueAwesomeSwiper from 'vue-awesome-swiper'
import Mint from 'mint-ui'
import'mint-ui/lib/style.css'
import fastClick from 'fastclick'
import axios from './axios'
import store from './store'



Vue.use(VueAwesomeSwiper)
Vue.use(Mint)
Vue.config.productionTip = false
fastClick.attach(document.body)

new Vue({
  el: '#app',
  router,
  store,
  components: { App },
  template: '<App/>'
})
