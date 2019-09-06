<template lang="html">
  <article class="media">
    <figure class="media-left">
      <p class="image is-64x64">
        <img :src="props.row.poster" />
      </p>
    </figure>
    <div class="media-content">
      <div id="details" class="content">
        <div class="columns">
          <div class="column is-8">
            <h2 class="title">{{ props.row.title }}</h2>
            <h3 class="subtitle">Data de Lançamento: {{ props.row.dateReleased | formatDate }}</h3>
          </div>
          <div class="column is-4">
            <h3
              v-if="props.row.revenue"
              class="subtitle"
            >Renda: R$ {{ props.row.revenue | formatPrice }}</h3>
            <h3
              v-if="props.row.runtime"
              class="subtitle"
            >Tempo de duração: {{ props.row.runtime }}</h3>
            <h3 v-if="props.row.seasons" class="subtitle">{{ props.row.seasons }} Temporadas</h3>
          </div>
        </div>
        <h3>Descrição:</h3>
        <p>{{ props.row.description }}</p>
        <div class="columns">
          <div class="column is-8">
            <h3>Atores:</h3>
            <ul class="fa-ul">
              <li v-for="actor of props.row.actors" v-bind:key="actor.name">
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
              <li v-for="language of props.row.languages" v-bind:key="language">
                <b-icon pack="fas" icon="globe" size="is-small"></b-icon>
                {{language}}
              </li>
            </ul>
            <section v-if="!props.row.languages">
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
              <li v-for="writer of props.row.writers" v-bind:key="writer">
                <b-icon pack="fas" icon="user-edit" size="is-small"></b-icon>
                {{writer}}
              </li>
            </ul>
            <section v-if="!props.row.writers">
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
              <li v-for="director of props.row.directors" v-bind:key="director">
                <b-icon pack="fas" icon="user-tie" size="is-small"></b-icon>
                {{director}}
              </li>
            </ul>
            <section v-if="!props.row.directors">
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
              <li v-for="genre of props.row.genres" v-bind:key="genre">
                <b-icon pack="fas" icon="genderless" size="is-small"></b-icon>
                {{genre}}
              </li>
            </ul>
            <section v-if="!props.row.genres">
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
        <div class="columns" v-for="company of props.row.companies" v-bind:key="company.name">
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
        <section v-if="!props.row.companies">
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
      series: { type: Object, required: true }
    }
  }
</script>

<style lang="sass" scoped>
</style>
