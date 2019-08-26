<template>
  <section class="small-lateral">
    <h1>Lista dos Filmes mais tops</h1>
    <nav class="level small-lateral">
      <div class="level-left">
        <b-field grouped group-multiline>
          <b-select v-model="defaultSortDirection">
            <option value="asc">Ordenação Ascendente</option>
            <option value="desc">Ordenação Decrescente</option>
          </b-select>
          <b-select v-model="perPage" :disabled="!isPaginated">
            <option value="5">5 Filmes por página</option>
            <option value="10">10 Filmes por página</option>
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
      :data="data"
      :columns="columns"
      :paginated="isPaginated"
      :per-page="perPage"
      :current-page.sync="currentPage"
      :pagination-simple="isPaginationSimple"
      :pagination-position="paginationPosition"
      :default-sort-direction="defaultSortDirection"
      :narrowed="true"
      detailed
      detail-key="id"
      default-sort="title"
      aria-next-label="Next page"
      aria-previous-label="Previous page"
      aria-page-label="Page"
      aria-current-label="Current page"
    >
      <template slot-scope="props">
        <b-table-column field="id" label="ID" width="40" sortable numeric>{{ props.row.imdb_id }}</b-table-column>

        <b-table-column field="title" label="Título" sortable>{{ props.row.title }}</b-table-column>

        <b-table-column field="date" label="Date" sortable centered>
          <span class="tag is-success">{{ formatDate(props.row.release_date) }}</span>
        </b-table-column>
      </template>

      <template slot="detail" slot-scope="props">
        <article class="media">
          <figure class="media-left">
            <p class="image is-64x64">
              <img :src="props.row.poster">
            </p>
          </figure>
          <div class="media-content">
            <div id="details" class="content">
              <h2 class="title">{{ props.row.title }}</h2>
              <h3 class="subtitle">Data de Lançamento: {{ formatDate(props.row.release_date)}}</h3>
              <h3>Descrição:</h3>
              <p>{{ props.row.description }}</p>
              <div class="columns">
                <div class="column">
                  <h3>Atores:</h3>
                  <ul>
                    <li
                      v-for="actor of props.row.actors"
                      v-bind:class="{ protagonist: actor.protagonist }"
                    >{{actor.name}}</li>
                  </ul>
                </div>
              </div>
            </div>
          </div>
        </article>
      </template>
    </b-table>
  </section>
</template>

<script>
const data = [
  {
    imdb_id: "sdfsfasdf",
    title: "Star Wars II",
    classifcation: 12,
    description:
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ornare magna eros, eu pellentesque tortor vestibulum ut. Maecenas non massa sem. Etiam finibus odio quis feugiat facilisis.",
    release_date: new Date(),
    revenue: 12000000,
    poster:
      "https://images-na.ssl-images-amazon.com/images/I/61zAkpvYLqL._SY741_.jpg",
    actors: [
      {
        name: "Mark Hemler",
        character: "Anakin Skywalker",
        protagnist: 1
      },
      {
        name: "Willian Sheakspeare",
        character: "Padmee"
      }
    ],
    languages: ["Inglês", "Português", "Mandarin"],
    writers: ["George Lucas"],
    directors: ["George Lucas"],
    genres: ["Ficção Científica", "Romance", "Drama", "Ação"],
    companies: [
      {
        name: "Lucas Arts Studios",
        country: "EUA",
        logo:
          "https://upload.wikimedia.org/wikipedia/en/thumb/c/ce/Lucasarts_logo.svg/1200px-Lucasarts_logo.svg.png"
      }
    ]
  }
];

const columns = [
  {
    field: "id",
    label: "ID",
    width: "40",
    numeric: true
  },
  {
    field: "title",
    label: "Título"
  },
  {
    field: "date",
    label: "Lançamento",
    centered: true
  }
];

export default {
  data() {
    return {
      data,
      columns,
      activeTab: 0,
      defaultOpenedDetails: [1],
      isPaginated: true,
      paginationPosition: "bottom",
      defaultSortDirection: "asc",
      currentPage: 1,
      perPage: 5
    };
  },
  methods: {
    toggle(row) {
      this.$refs.table.toggleDetails(row);
    },
    formatDate(date) {
      return new Date(date).toLocaleDateString();
    },
    formatPrice(value) {
      let val = (value / 1).toFixed(2).replace(".", ",");
      return val.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ".");
    }
  }
};
</script>