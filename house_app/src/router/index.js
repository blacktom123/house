import Vue from 'vue'
import Router from 'vue-router'
import Home from '../components/Home'
import Login from '../components/login/login'
import userRegister from '../components/register/userRegister'
import City from '../components/city/City'
import Details from '../components/details/Details'
import Talk from '../components/talk/Talk'

Vue.use(Router)

export default new Router({
  routes: [
    {path:'/',name:'home',component:Home},
    {path:'/login',name:'login',component:Login},
    {path:'/userRegister',name:'userRegister',component:userRegister},
    {path:'/city',name:'city',component:City},
    {path:'/details',name:'details',component:Details},
    {path:'/talk',component:Talk}
  ],
  scrollBehavior (to, from, savedPosition) {
    return { x: 0, y: 0 }
  }
})
