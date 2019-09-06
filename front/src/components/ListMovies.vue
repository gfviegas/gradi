<template>
  <section class="small-lateral">
    <div class="small-updown">
      <b-collapse class="card" aria-id="contentIdForA11y3">
          <div
              slot="trigger" 
              slot-scope="props"
              class="card-header"
              role="button"
              aria-controls="contentIdForA11y3">
              <p class="card-header-title">
                  Filtros
              </p>
              <a class="card-header-icon">
                  <b-icon
                      :icon="props.open ? 'menu-down' : 'menu-up'">
                  </b-icon>
              </a>
          </div>
          <div class="card-content">
              <div class="content">
                <b-field grouped group-multiline>
                  <b-select v-model="perPage" :disabled="!isPaginated">
                    <option value="2">2 Filmes por página</option>
                    <option value="5">5 Filmes por página</option>
                    <option value="10">10 Filmes por página</option>
                    <option value="15">15 Filmes por página</option>
                  </b-select>
                </b-field>
              </div>
          </div>
          <footer class="card-footer">
              <a class="card-footer-item">Buscar</a>
              <a class="card-footer-item">Limpar</a>
          </footer>
      </b-collapse>
    </div>
    <b-table
      @sort="sortWith"
      @details-open="detailsOpen"
      class="scrollable"
      :data="moviesList.movies"
      :paginated="isPaginated"
      :current-page.sync="currentPage"
      :pagination-position="paginationPosition"
      :default-sort-direction="defaultSortDirection"
      :narrowed="true"
      :total="moviesList.totalCount"
      :per-page="perPage"
      :backend-pagination="true"
      :backend-sorting="true"
      detailed
      detail-key="id"
      default-sort="title"
      aria-next-label="Next page"
      aria-previous-label="Previous page"
      aria-page-label="Page"
      aria-current-label="Current page"
    >
      <template slot-scope="props">
        <b-table-column field="imdbId" label="imdbId" width="40" sortable>{{ props.row.imdbId }}</b-table-column>

        <b-table-column field="title" label="Título" sortable>{{ props.row.title }}</b-table-column>

        <b-table-column field="dateReleased" label="Data de Lançamento" sortable centered>
          <span class="tag is-success">{{ props.row.dateReleased | formatDate }}</span>
        </b-table-column>
        <b-table-column field="revenue" label="Receita" sortable centered>
          <span class="tag">R$ {{ props.row.revenue | formatPrice }}</span>
        </b-table-column>
        <b-table-column field="rating" label="Avaliação" sortable centered>
          <span class="tag">{{ props.row.rating }}</span>
        </b-table-column>
      </template>

      <template slot="detail">
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
                  >Receita: R$ {{ movie.revenue | formatPrice }}</h3>
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
                      <strong>{{character.actor.name}}</strong> Estrelando
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
    </b-table>
  </section>
</template>

<script>
import { createProvider } from "../vue-apollo";
import Movies from "../graphql/Movies.gql";
import Movie from "../graphql/Movie.gql";

export default {
  data() {
    return {
      id: 1,
      movie: {},
      moviesList: [],
      activeTab: 0,
      defaultOpenedDetails: [1],
      isPaginated: true,
      paginationPosition: "bottom",
      defaultSortDirection: "asc",
      currentPage: 1,
      perPage: 2
    };
  },
  apollo: {
    moviesList: {
      query: Movies,
      variables() {
        return {
          limit: parseInt(this.perPage),
          page: this.currentPage
        }
      }
    },
    movie: {
      query: Movie,
      variables() {
        return {
            id: this.id
        }
      }
    }
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
    sortWith(column) {
      console.log(column);
    },
    detailsOpen(data) {
      this.id = data.id;
    }
  }
};
</script>