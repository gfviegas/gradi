<template>
  <section class="small-lateral">
    <nav class="level small-lateral">
      <div class="level-left">
        <b-field grouped group-multiline>
          <b-select @input="changeOrder" v-model="defaultSortDirection">
            <option value="asc">Ordenação Ascendente</option>
            <option value="desc">Ordenação Decrescente</option>
          </b-select>
          <b-select v-model="perPage" @input="changeQnt" :disabled="!isPaginated">
            <option value="5">5 Filmes por página</option>
            <option value="10">10 Filmes por página</option>
            <option value="15">15 Filmes por página</option>
          </b-select>
          <div class="control is-flex">
            <b-switch v-model="isPaginated">Ativar Paginação</b-switch>
          </div>
          <b-select v-model="paginationPosition" :disabled="!isPaginated">
            <option value="bottom">Paginação em baixo</option>
            <option value="top">Paginação em cima</option>
            <option value="both">Ambas</option>
          </b-select>
        </b-field>
      </div>
    </nav>
    <b-table
      @sort="sortWith"
      @details-open="detailsOpen"
      class="scrollable"
      :data="allMovies"
      :paginated="isPaginated"
      :per-page="perPage"
      :current-page.sync="currentPage"
      :pagination-position="paginationPosition"
      :default-sort-direction="defaultSortDirection"
      :narrowed="true"
      detailed
      detail-key="imdbId"
      default-sort="title"
      aria-next-label="Next page"
      aria-previous-label="Previous page"
      aria-page-label="Page"
      aria-current-label="Current page"
    >
      <template slot-scope="props">
        <b-table-column field="imdbId" label="ID" width="40" sortable>{{ props.row.imdbId }}</b-table-column>

        <b-table-column field="title" label="Título" sortable>{{ props.row.title }}</b-table-column>

        <b-table-column field="dateReleased" label="Date" sortable centered>
          <span class="tag is-success">{{ props.row.dateReleased | formatDate }}</span>
        </b-table-column>
      </template>

      <template slot="detail" slot-scope="props">
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
    </b-table>
  </section>
</template>

<script>
import { createProvider } from "../vue-apollo";
import Movies from "../graphql/Movies.gql";

export default {
  data() {
    return {
      allMovies: [],
      activeTab: 0,
      defaultOpenedDetails: [1],
      isPaginated: true,
      paginationPosition: "top",
      defaultSortDirection: "asc",
      currentPage: 1,
      perPage: 5
    };
  },
  apollo: {
    allMovies: Movies
  },
  filters: {
    formatDate(date) {
      return new Date(date).toLocaleDateString();
    },
    formatPrice(value) {
      let val = (value / 1).toFixed(2).replace(".", ",");
      return val.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ".");
    }
  },
  methods: {
    changeQnt(value) {
      console.log(value);
    },
    changeOrder(value) {
      console.log(value);
    },
    sortWith(column) {
      console.log(column);
    },
    detailsOpen(data) {
      console.log(data);
    },
    toggle(row) {
      this.$refs.table.toggleDetails(row);
    }
  }
};
</script>