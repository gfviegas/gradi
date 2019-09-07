<template>
  <main>
    <section id="app">
      <router-view/>
    </section>
  </main>
</template>

<script>
  export default {
    name: 'app'
  }
</script>

<style lang="sass">
  @import "../styles/global.sass"
</style>
