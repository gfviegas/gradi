<template>
  <div class="listMovies">
    <h1>Filmes em destaque</h1>
    <div id="cover">
      <form method="get" action>
        <div class="tb">
          <div class="td">
            <input type="text" placeholder="Pesquise por seu filme preferido">
          </div>
        </div>
      </form>
    </div>
    <div class="container">
      <article class="card">
        <a href="#" class="card__link">
          <!-- Media -->
          <div class="card__media">
            <img class="icon-card" src="../assets/main-car.jpeg">
          </div>

          <!-- Header -->
          <div class="card__header">
            <h3 class="card__header-title">Carros 2</h3>
            <p class="card__header-meta">Infantil</p>
            <div class="card__header-icon">
              <svg viewBox="0 0 28 25">
                <path
                  fill="#fff"
                  d="M13.145 2.13l1.94-1.867 12.178 12-12.178 12-1.94-1.867 8.931-8.8H.737V10.93h21.339z"
                ></path>
              </svg>
            </div>
          </div>
        </a>
      </article>
      <article class="card">
        <a href="#" class="card__link">
          <!-- Media -->
          <div class="card__media">
            <img class="icon-card" src="../assets/main-car.jpeg">
          </div>

          <!-- Header -->
          <div class="card__header">
            <h3 class="card__header-title">Carros 2</h3>
            <p class="card__header-meta">Infantil</p>
            <div class="card__header-icon">
              <svg viewBox="0 0 28 25">
                <path
                  fill="#fff"
                  d="M13.145 2.13l1.94-1.867 12.178 12-12.178 12-1.94-1.867 8.931-8.8H.737V10.93h21.339z"
                ></path>
              </svg>
            </div>
          </div>
        </a>
      </article>
    </div>
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
