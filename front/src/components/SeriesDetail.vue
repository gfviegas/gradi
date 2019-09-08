<template lang="html">
  <article class="media">
    <figure class="media-left">
      <p class="image is-64x64">
        <img :src="serie.poster" />
      </p>
    </figure>
    <div class="media-content">
      <div id="details" class="content">
        <div class="columns">
          <div class="column is-8">
            <h2 class="title">{{ serie.title }}</h2>
            <h3 class="subtitle">Data de Lançamento: {{ serie.dateReleased | formatDate }}</h3>
          </div>
          <div class="column is-4">
            <h3
              v-if="serie.revenue"
              class="subtitle"
            >Renda: R$ {{ serie.revenue | formatPrice }}</h3>
            <h3
              v-if="serie.runtime"
              class="subtitle"
            >Tempo de duração: {{ serie.runtime }}</h3>
            <h3 v-if="serie.seasons" class="subtitle">{{ serie.seasons }} Temporadas</h3>
          </div>
        </div>
        <h3>Descrição:</h3>
        <p>{{ serie.description }}</p>
        <div class="columns">
          <div class="column is-8">
            <h3>Atores:</h3>
            <ul class="fa-ul">
              <li v-for="actor of serie.actors" v-bind:key="actor.name">
                <b-icon icon="account" size="is-small"></b-icon>
                <strong>{{actor.name}}</strong> Estrelando
                <strong>{{actor.character}}</strong> -
                <em v-if="actor.protagonist">Protagonista</em>
                <em v-else>Quadjuvante</em>
              </li>
            </ul>
          </div>
          <div class="column is-4">
            <h3>Línguas:</h3>
            <ul class="fa-ul">
              <li v-for="language of serie.languages" v-bind:key="language">
                <b-icon pack="fas" icon="globe" size="is-small"></b-icon>
                {{language}}
              </li>
            </ul>
            <section v-if="!serie.languages">
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
              <li v-for="writer of serie.writers" v-bind:key="writer">
                <b-icon pack="fas" icon="user-edit" size="is-small"></b-icon>
                {{writer}}
              </li>
            </ul>
            <section v-if="!serie.writers">
              <div class="content has-text-grey has-text-centered">
                <p>
                  <b-icon pack="fas" icon="sad-tear" size="is-large"></b-icon>
                </p>
                <p>Nenhum Escritor Reconhecido.</p>
              </div>
            </section>
          </div>
          <div class="column is-4">
            <h3>Spinoffs:</h3>
            <ul class="fa-ul">
              <li v-for="spinoff of serie.spinoffs" v-bind:key="spinoff.imdbId">
                <b-icon pack="fas" icon="film" size="is-small"></b-icon>
                {{spinoff.imdbId}} - {{spinoff.title}}
              </li>
            </ul>
            <section v-if="!serie.spinoffs">
              <div class="content has-text-grey has-text-centered">
                <p>
                  <b-icon pack="fas" icon="sad-tear" size="is-large"></b-icon>
                </p>
                <p>Nenhum Spinoff nessa série.</p>
              </div>
            </section>
          </div>
          <div class="column is-4">
            <h3>Gêneros:</h3>
            <ul class="fa-ul">
              <li v-for="genre of serie.genres" v-bind:key="genre">
                <b-icon pack="fas" icon="genderless" size="is-small"></b-icon>
                {{genre}}
              </li>
            </ul>
            <section v-if="!serie.genres">
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
            <h3>Países:</h3>
            <ul class="fa-ul">
              <li v-for="country of serie.countries" v-bind:key="country">
                <b-icon pack="fas" icon="flag" size="is-small"></b-icon>
                {{country}}
              </li>
            </ul>
            <section v-if="!serie.countries">
              <div class="content has-text-grey has-text-centered">
                <p>
                  <b-icon pack="fas" icon="sad-tear" size="is-large"></b-icon>
                </p>
                <p>Essa série não está disponível em nenhum país.</p>
              </div>
            </section>
          </div>
        </div>
      </div>
    </div>
  </article>
</template>

<script>
  export default {
    props: {
      serie: { type: Object, required: true },
      props: { required: false }
    }
  }
</script>

  <style lang="sass" scoped>
    @import "~@/styles/variables.sass"

    .fa-ul
      margin-left: 0 !important
      li
        list-style-type: none
        list-style-position: inside
        .icon
          margin-right: 1%
    #details
      h2
        color: $primary
        font-size: 24px
      h3
        color: $secondary
        font-size: 16px
      h4
        font-size: 12px
      p
        font-size: 14px

      .protagonist
        background: $primary
        font-weight: bold
  </style>
