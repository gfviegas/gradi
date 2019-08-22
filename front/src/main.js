import Vue from "vue";
import App from "./App.vue";
import Main from "./Main.vue";

Vue.config.productionTip = false;

const routes = {
    "/": App,
    "/principal": Main
};

new Vue({
    data: {
        currentRoute: window.location.pathname
    },
    computed: {
        ViewComponent() {
            return routes[this.currentRoute] || App;
        }
    },
    render(h) {
        return h(this.ViewComponent);
    }
}).$mount("#app");
