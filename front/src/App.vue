<template>
  <div id="app">
    <img alt="Logo" src="./assets/logo.png">
    <HelloWorld msg="Seja bem vindo ao nosso gerenciador de filmes"/>
  </div>
</template>

<script>
import HelloWorld from "./components/HelloWorld.vue";

export default {
  name: "app",
  components: {
    HelloWorld
  }
};
</script>

<style lang="sass">
  @import "./styles/home.sass"
</style>