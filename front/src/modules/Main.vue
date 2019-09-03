<template>
  <div id="content">
    <h1>Lista dos Filmes mais tops</h1>
    <ListMovies/>
  </div>
</template>

<script>
import ListMovies from "../components/ListMovies.vue";
import Vue from "vue";
import Buefy from "buefy";

Vue.use(Buefy);

export default {
  name: "principal",
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