<template>
  <div id="app">
    <div id="title">
      <ListMovies movies="[]"/>
    </div>
  </div>
</template>

<script>
import ListMovies from "./components/ListMovies.vue";

export default {
  name: "main",
  components: {
    ListMovies
  }
};
</script>

<style lang="sass">
  @import "./styles/home.sass"
</style>