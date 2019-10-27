import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import ElementUI from 'element-ui'
import 'element-ui/lib/theme-chalk/index.css';
import MyHeader from './components/MyHeader'
import MyFooter from './components/MyFooter'
import Carousel from './components/Carousel'

import axios from 'axios'
// 配置请求时保存session信息
axios.defaults.withCredentials=true;
// 配置请求基础路径
axios.defaults.baseURL="http://127.0.0.1:8000/"
// 注册
Vue.prototype.axios=axios;

Vue.config.productionTip = false
Vue.use(ElementUI);

Vue.component("my-header", MyHeader);
Vue.component("my-footer", MyFooter);
Vue.component("carousel", Carousel);

new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
