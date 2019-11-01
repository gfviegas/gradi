<template>
  <article>
    <img id="logo" alt="Logo" src="~@/assets/logov2.png" />

    <h1 class="title is-2"> Seja bem vindo ao nosso gerenciador de filmes e séries </h1>

    <div class="columns is-multiline">
      <div class="column is-one-half">
        <router-link to="/filmes">
          <b-button type="is-primary" size="is-large"> Quero encontrar meu filme </b-button>
        </router-link>
      </div>
      <div class="column is-one-half">
        <router-link to="/series">
          <b-button type="is-dark" size="is-large"> Quero encontrar minha série </b-button>
        </router-link>
      </div>
      <div class="column is-one-half">
        <b-upload @input="uploadMovies" accept=".xml" v-model="moviesFile">
          <a class="button is-secondary is-large"> Quero adicionar meus filmes </a>
        </b-upload>
      </div>
      <div class="column is-one-half">
        <b-upload @input="uploadSeries" accept=".xml" v-model="seriesFile">
          <a class="button is-secondary is-large"> Quero adicionar minhas séries </a>
        </b-upload>
      </div>
    </div>
  </article>
</template>

<script>
  export default {
    data () {
      return {
        moviesFile: null,
        seriesFile: null
      }
    },
    methods: {
      uploadMovies () {
        // TODO: crar um formdata: new FormData(), dar append no arquivo formdata.append()...
        console.log(this.moviesFile)
      },
      uploadSeries () {
        // TODO: crar um formdata: new FormData(), dar append no arquivo formdata.append()...
        console.log(this.seriesFile)
        this.$buefy.toast.open({message: "Batatainha batatao", type: "is-success", position: "is-bottom", duration: 5000})
      }
    },
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
    .columns
      display: flex
      flex-direction: column
      justify-content: center
      align-content: center
      padding-bottom: 2rem
</style>
