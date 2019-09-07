<template>
  <article>
    <img id="logo" alt="Logo" src="~@/assets/logov2.png" />

    <h1 class="title is-2"> Seja bem vindo ao nosso gerenciador de filmes e séries </h1>

    <div class="button-section">
      <router-link to="/filmes">
        <b-button type="is-primary" size="is-large"> Quero encontrar meu filme </b-button>
      </router-link>
      <router-link to="/series">
        <b-button type="is-dark" size="is-large"> Quero encontrar minha série </b-button>
      </router-link>
    </div>
  </article>
</template>

<script>
  export default {
    name: 'Home'
  }
</script>

<style lang="sass" scoped>
  article
    img
      height: 400px
      width: 400px
    .button-section
      padding: 2rem 5rem
      display: flex
      justify-content: space-evenly
</style>
