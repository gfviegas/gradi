<template>
  <div class="hello">
    <h1>{{ msg }}</h1>
    <a class="home-button" href="/filmes">
      <span>Quero encontrar meu filme</span>
    </a>
    <a class="home-button" href="/filmes">
      <span>Quero encontrar minha série</span>
    </a>
  </div>
</template>

<script>
export default {
  name: "HelloWorld",
  props: {
    msg: String
  }
};
</script>
