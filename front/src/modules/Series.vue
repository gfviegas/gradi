<template>
  <div id="content">
    <h1>Suas Séries Favoritas</h1>
    <ListMovies />
  </div>
</template>

<script>
import ListMovies from "../components/ListSeries.vue";
import Vue from "vue";
import Buefy from "buefy";

Vue.use(Buefy);

export default {
  name: "series",
  components: {
    ListMovies
  }
};
</script>

<style lang="scss">
@import "../styles/buefy.scss";
</style>

<style lang="sass">
  @import "../styles/main.sass"
</style>