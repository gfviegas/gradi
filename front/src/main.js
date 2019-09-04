import Vue from "vue";
import App from "./modules/App.vue";
import Movies from "./modules/Movies.vue";
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
  "/filmes": Movies
};

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
