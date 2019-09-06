<template lang="html">
  <article class="media">
    <figure class="media-left">
      <p class="image is-64x64">
        <img :src="movie.poster" />
      </p>
    </figure>
    <div class="media-content">
      <div id="details" class="content">
        <div class="columns">
          <div class="column is-8">
            <h2 class="title">{{ movie.title }}</h2>
            <h3 class="subtitle">Data de Lançamento: {{ movie.dateReleased | formatDate }}</h3>
          </div>
          <div class="column is-4">
            <h3
              v-if="movie.revenue"
              class="subtitle"
            >Receita: U$ {{ movie.revenue | formatPrice }}</h3>
            <h3
              v-if="movie.rating"
              class="subtitle"
            >Nota: {{ movie.rating }}</h3>
          </div>
        </div>
        <h3>Descrição:</h3>
        <p>{{ movie.description }}</p>
        <div class="columns">
          <div class="column is-8">
            <h3>Atores:</h3>
            <ul class="fa-ul">
              <li v-for="character of movie.characters" v-bind:key="character.actor.name">
                <b-icon icon="account" size="is-small"></b-icon>
                <strong>{{character.actor.name}}</strong> estrelando
                <strong>{{character.name}}</strong> -
                <em v-if="character.protagonist">Protagonista</em>
                <em v-else>Coadjuvante</em>
              </li>
            </ul>
          </div>
          <div class="column is-4">
            <h3>Línguas:</h3>
            <ul class="fa-ul">
              <li v-for="language of movie.languages" v-bind:key="language.name">
                <b-icon pack="fas" icon="globe" size="is-small"></b-icon>
                {{language.name}}
              </li>
            </ul>
            <section v-if="!movie.languages">
              <div class="content has-text-grey has-text-centered">
                <p>
                  <b-icon pack="fas" icon="sad-tear" size="is-large"></b-icon>
                </p>
                <p>Nenhuma Língua Reconhecida.</p>
              </div>
            </section>
          </div>
        </div>
        <div class="columns">
          <div class="column is-4">
            <h3>Escritores:</h3>
            <ul class="fa-ul">
              <li v-for="writer of movie.writers" v-bind:key="writer.name">
                <b-icon pack="fas" icon="user-edit" size="is-small"></b-icon>
                {{writer.name}}
              </li>
            </ul>
            <section v-if="!movie.writers">
              <div class="content has-text-grey has-text-centered">
                <p>
                  <b-icon pack="fas" icon="sad-tear" size="is-large"></b-icon>
                </p>
                <p>Nenhum Escritor Reconhecido.</p>
              </div>
            </section>
          </div>
          <div class="column is-4">
            <h3>Diretores:</h3>
            <ul class="fa-ul">
              <li v-for="director of movie.directors" v-bind:key="director.name">
                <b-icon pack="fas" icon="user-tie" size="is-small"></b-icon>
                {{director.name}}
              </li>
            </ul>
            <section v-if="!movie.directors">
              <div class="content has-text-grey has-text-centered">
                <p>
                  <b-icon pack="fas" icon="sad-tear" size="is-large"></b-icon>
                </p>
                <p>Nenhum Diretor Reconhecido.</p>
              </div>
            </section>
          </div>
          <div class="column is-4">
            <h3>Gêneros:</h3>
            <ul class="fa-ul">
              <li v-for="genre of movie.genres" v-bind:key="genre.name">
                <b-icon pack="fas" icon="genderless" size="is-small"></b-icon>
                {{genre.name}}
              </li>
            </ul>
            <section v-if="!movie.genres">
              <div class="content has-text-grey has-text-centered">
                <p>
                  <b-icon pack="fas" icon="sad-tear" size="is-large"></b-icon>
                </p>
                <p>Nenhum Gênero Reconhecido.</p>
              </div>
            </section>
          </div>
        </div>
        <div class="columns">
          <div class="column">
            <h3 class="subtitle">Empresas Produtoras:</h3>
          </div>
        </div>
        <div class="columns" v-for="company of movie.companies" v-bind:key="company.name">
          <div class="column is-2">
            <figure class="media-left">
              <p class="image is-64x64">
                <img :src="company.logo" />
              </p>
            </figure>
          </div>
          <div class="column">
            <h3 class="subtitle">{{company.name}}</h3>
            <h4>Origem: {{company.country}}</h4>
          </div>
        </div>
        <section v-if="!movie.companies">
          <div class="content has-text-grey has-text-centered">
            <p>
              <b-icon pack="fas" icon="sad-tear" size="is-large"></b-icon>
            </p>
            <p>Nenhuma Empresa Reconhecida.</p>
          </div>
        </section>
      </div>
    </div>
  </article>
</template>

<script>
  export default {
    props: {
      movie: { type: Object, required: true }
    }
  }
</script>

<style lang="sass" scoped>
</style>
