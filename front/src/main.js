import Vue from 'vue'
import App from './modules/App.vue'
import router from './router'
import Buefy from "buefy";

import VueApollo from 'vue-apollo'
import ApolloClient from 'apollo-boost'

const apolloClient = new ApolloClient({
  // You should use an absolute URL here
  uri: 'http://localhost:4000/api'
})

Vue.config.productionTip = false

const apolloProvider = new VueApollo({
  defaultClient: apolloClient
})

Vue.use(Buefy)
Vue.filter('formatDate', (date) => new Date(date).toLocaleDateString('pt-BR'))
Vue.filter('formatPrice', (value) => {
  const val = (value / 1).toFixed(2).replace('.', ',')
  return val.toString().replace(/\B(?=(\d{3})+(?!\d))/g, '.')
})

/* eslint-disable no-new */
new Vue({
  el: '#app',
  router,
  apolloProvider,
  template: '<App/>',
  components: { App },
  render: h => h(App)
})
// new Vue({
//   data: {
//     currentRoute: window.location.pathname
//   },
//
//   apolloProvider,
//   computed: {
//     ViewComponent() {
//       return routes[this.currentRoute] || App
//     }
//   },
//
//   render(h) {
//     return h(this.ViewComponent)
//   }
// }).$mount('#app')
