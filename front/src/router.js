import Vue from 'vue'
import Router from 'vue-router'

import Home from './modules/Home.vue'
import Movies from './modules/Movies.vue'
import Series from './modules/Series.vue'

Vue.use(Router)

export default new Router({
  mode: 'history',
  base: process.env.BASE_URL,
  routes: [
    {
      path: '/',
      name: 'home',
      component: Home
    },
    {
      path: '/filmes',
      name: 'movies',
      component: Movies
    },
    {
      path: '/series',
      name: 'series',
      component: Series
    }
  ]
})
