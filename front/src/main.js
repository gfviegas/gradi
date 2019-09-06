import Vue from "vue";
import App from "./modules/App.vue";
import Movies from "./modules/Movies.vue";
import Series from "./modules/Series.vue";
import VueApollo from "vue-apollo";
import ApolloClient from "apollo-boost";

const apolloClient = new ApolloClient({
  // You should use an absolute URL here
  uri: "http://localhost:4000/api"
});

Vue.config.productionTip = false;

const apolloProvider = new VueApollo({
  defaultClient: apolloClient
});

const routes = {
  "/": App,
  "/filmes": Movies,
  "/series": Series
};

Vue.filter('formatDate', (date) => new Date(date).toLocaleDateString())
Vue.filter('formatPrice', (value) => {
  const val = (value / 1).toFixed(2).replace('.', ',')
  return val.toString().replace(/\B(?=(\d{3})+(?!\d))/g, '.')
})

new Vue({
  data: {
    currentRoute: window.location.pathname
  },

  apolloProvider,
  computed: {
    ViewComponent() {
      return routes[this.currentRoute] || App;
    }
  },

  render(h) {
    return h(this.ViewComponent);
  }
}).$mount("#app");
