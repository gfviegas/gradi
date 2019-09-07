<template>
  <article>
    <div class="has-text-centered title-wrapper">
      <h1 class="title is-3"> Suas Séries Favoritas </h1>
    </div>

    <ListSeries />
  </article>
</template>

<script>
  import ListSeries from '../components/ListSeries.vue'

  export default {
    components: { ListSeries }
  }
</script>

<style lang="sass" scoped>
  @import "~@/styles/variables.sass"
  .title-wrapper
    padding-bottom: 1rem
    h1
      color: $primary
</style>
