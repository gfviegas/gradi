<template>
  <div class="listMovies">
    <a href="/principal">Quero encontrar meu filme</a>
  </div>
</template>

<script>
export default {
  name: "ListMovies",
  props: {
    movies: Array
  }
};
</script>
