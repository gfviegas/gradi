<template>
  <div class="hello">
    <h1>{{ msg }}</h1>
    <a class="home-button" href="/principal">
      <span>Quero encontrar meu filme</span>
      <img class="icon-button" alt="Logo" src="../assets/icon-button.png">
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
