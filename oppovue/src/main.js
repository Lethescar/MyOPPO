import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import axios from 'axios'
import ElementUI from 'element-ui'
import 'element-ui/lib/theme-chalk/index.css';
import MyHeader from './components/MyHeader'
import MyFooter from './components/MyFooter'
import Carousel from './components/Carousel'

Vue.config.productionTip = false
Vue.prototype.axios=axios;
Vue.use(ElementUI);

Vue.component("my-header", MyHeader);
Vue.component("my-footer", MyFooter);
Vue.component("carousel", Carousel);

new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
