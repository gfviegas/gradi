<template>
  <div id="main">
    <ListMovies movies="[]"/>
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
  @import "./styles/main.sass"
</style>