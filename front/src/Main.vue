<template>
  <div id="main">
    <ListMovies/>
  </div>
</template>

<script>
import ListMovies from "./components/ListMovies.vue";
import Vue from "vue";
import Buefy from "buefy";

Vue.use(Buefy);

export default {
  name: "main",
  components: {
    ListMovies
  }
};
</script>

<style lang="scss">
@import "./styles/buefy.scss";
</style>

<style lang="sass">
  @import "./styles/main.sass"
</style>