<template>
  <section class="small-lateral">
    <filter-section label="Filmes" :isPaginated="isPaginated" @submit="applyFilter" />
    <b-table
      @sort="sortWith"
      @details-open="detailsOpen"
      class="scrollable"
      :data="moviesList.movies"
      :paginated="isPaginated"
      :pagination-simple="true"
      :current-page.sync="currentPage"
      :default-sort-direction="sortDirection"
      :default-sort="sort"
      :narrowed="true"
      :total="moviesList.totalCount"
      :per-page="perPage"
      :backend-pagination="true"
      :backend-sorting="true"
      :loading="$apollo.loading"
      detailed
      detail-key="id"
      :opened-detailed="rowsOpen"
    >
      <template slot-scope="props">
        <b-table-column field="imdbId" label="imdbId" width="40" sortable>{{ props.row.imdbId }}</b-table-column>

        <b-table-column field="title" label="Título" sortable>{{ props.row.title }}</b-table-column>

        <b-table-column field="dateReleased" label="Data de Lançamento" sortable centered>
          <span class="tag is-success">{{ props.row.dateReleased | formatDate }}</span>
        </b-table-column>
        <b-table-column field="revenue" label="Receita" sortable centered>
          <span class="tag">U$ {{ props.row.revenue | formatPrice }}</span>
        </b-table-column>
        <b-table-column field="rating" label="Avaliação" centered>
          <span class="tag" :class="ratingLevel(props.row.rating)">{{ props.row.rating }}</span>
        </b-table-column>
      </template>

      <template slot="detail">
        <movie-detail :movie="movie" />
      </template>
    </b-table>
  </section>
</template>

<script>
import { createProvider } from "../vue-apollo";
import Movies from "../graphql/Movies.gql";
import Movie from "../graphql/Movie.gql";

import FilterSection from "./FilterSection.vue";
import MovieDetail from "./MovieDetail.vue";

export default {
  components: { FilterSection, MovieDetail },
  data() {
    return {
      id: 1,
      movie: {},
      moviesList: [],
      activeTab: 0,
      defaultOpenedDetails: [1],
      isPaginated: true,
      currentPage: 1,
      perPage: 2,
      title: "",
      sort: "title",
      sortDirection: "asc",
      rowsOpen: []
    };
  },
  apollo: {
    moviesList: {
      query: Movies,
      variables() {
        const { perPage, currentPage, title, sort, sortDirection } = this;
        return {
          limit: parseInt(perPage),
          page: currentPage,
          title: title || undefined,
          sort: sort || undefined,
          sortDirection: sortDirection || undefined
        };
      }
    },
    movie: {
      query: Movie,
      variables() {
        return { id: this.id };
      }
    }
  },
  methods: {
    ratingLevel(value) {
      const number = parseFloat(value);
      if (number < 6) {
        return "is-danger";
      } else if (number >= 6 && number < 8) {
        return "is-warning";
      } else if (number >= 8) {
        return "is-success";
      }
    },
    applyFilter(filter) {
      const { perPage, title } = filter;
      this.perPage = perPage;
      this.title = title;
    },
    sortWith(column, direction) {
      this.sort = column;
      this.sortDirection = direction;
    },
    detailsOpen(data) {
      this.id = data.id;
      this.rowsOpen = [data.id];
    }
  }
};
</script>
