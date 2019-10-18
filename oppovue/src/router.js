import Vue from 'vue'
import Router from 'vue-router'
import Index from './views/Index'
import MyHeader from './components/MyHeader'
import MyFooter from './components/MyFooter'
import Carousel from './components/Carousel'
import Shop from './views/Shop'
import NotFound from './views/NotFound'

Vue.use(Router)

export default new Router({
  routes: [
    {path: '/',component:Index},
    {path: '/index',component:Index},
    {path: '/index',component:Index},
    {path: '/MyHeader',component:MyHeader},
    {path: '/MyFooter',component:MyFooter},
    {path: '/Carousel',component:Carousel},
    {path: '/Shop',component:Shop},
    {path: '/*',component:NotFound},
  ]
})
