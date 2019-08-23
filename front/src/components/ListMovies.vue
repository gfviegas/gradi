<template>
  <section>
    <h1>Lista dos Filmes mais tops</h1>
    <b-field grouped group-multiline>
      <b-select v-model="defaultSortDirection">
        <option value="asc">Ordenação Ascendente</option>
        <option value="desc">Ordenação Decrescente</option>
      </b-select>
      <b-select v-model="perPage" :disabled="!isPaginated">
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

    <b-table
      :data="data"
      :paginated="isPaginated"
      :per-page="perPage"
      :current-page.sync="currentPage"
      :pagination-simple="isPaginationSimple"
      :pagination-position="paginationPosition"
      :default-sort-direction="defaultSortDirection"
      :sort-icon="sortIcon"
      :sort-icon-size="sortIconSize"
      default-sort="user.first_name"
      aria-next-label="Next page"
      aria-previous-label="Previous page"
      aria-page-label="Page"
      aria-current-label="Current page"
    >
      <template slot-scope="props">
        <b-table-column field="id" label="ID" width="40" sortable numeric>{{ props.row.id }}</b-table-column>

        <b-table-column
          field="user.first_name"
          label="First Name"
          sortable
        >{{ props.row.user.first_name }}</b-table-column>

        <b-table-column
          field="user.last_name"
          label="Last Name"
          sortable
        >{{ props.row.user.last_name }}</b-table-column>

        <b-table-column field="date" label="Date" sortable centered>
          <span class="tag is-success">{{ new Date(props.row.date).toLocaleDateString() }}</span>
        </b-table-column>

        <b-table-column label="Gender">
          <span>
            <b-icon pack="fas" :icon="props.row.gender === 'Male' ? 'mars' : 'venus'"></b-icon>
            {{ props.row.gender }}
          </span>
        </b-table-column>
      </template>
    </b-table>
  </section>
</template>

<script>
const data = [
  {
    id: 1,
    user: { first_name: "Bruno", last_name: "Marreta" },
    date: new Date(),
    gender: "Male"
  },
  {
    id: 2,
    user: { first_name: "Viegas", last_name: "Gustavo" },
    date: new Date(),
    gender: "Male"
  },
  {
    id: 3,
    user: { first_name: "Vitor", last_name: "Zangado" },
    date: new Date(),
    gender: "Male"
  },
  {
    id: 4,
    user: { first_name: "Dani", last_name: "Boy" },
    date: new Date(),
    gender: "Male"
  },
  {
    id: 5,
    user: { first_name: "Viniig", last_name: "99" },
    date: new Date(),
    gender: "Male"
  },
  {
    id: 6,
    user: { first_name: "Batatão", last_name: "Assado" },
    date: new Date(),
    gender: "Male"
  }
];

export default {
  data() {
    return {
      data,
      isPaginated: true,
      isPaginationSimple: false,
      paginationPosition: "bottom",
      defaultSortDirection: "asc",
      sortIcon: "arrow-up",
      sortIconSize: "is-small",
      currentPage: 1,
      perPage: 5
    };
  }
};
</script>