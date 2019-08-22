<template>
  <div id="app">
    <div id="title">
      <img id="logo" alt="Logo" src="./assets/logo.png">
      <HelloWorld msg="Seja bem vindo ao nosso gerenciador de filmes"/>
    </div>
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