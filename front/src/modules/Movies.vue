<template>
  <article>
    <div class="has-text-centered title-wrapper">
      <h1 class="title is-3"> Seus Filmes Favoritos </h1>
    </div>

    <ListMovies />
  </article>
</template>

<script>
  import ListMovies from '../components/ListMovies.vue'
  import Vue from 'vue'

  export default {
    components: {
      ListMovies
    }
  }
</script>

<style lang="sass" scoped>
  @import "~@/styles/variables.sass"
  .title-wrapper
    padding-bottom: 1rem
    h1
      color: $primary
</style>
