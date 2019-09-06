<template lang="html">
  <form class="small-updown" @submit.prevent="search">
    <b-collapse class="card" aria-id="contentIdForA11y3">
      <div
        slot="trigger"
        slot-scope="props"
        class="card-header"
        role="button"
        aria-controls="contentIdForA11y3">
          <p class="card-header-title"> Filtros </p>
          <a class="card-header-icon">
            <b-icon :icon="props.open ? 'menu-down' : 'menu-up'"></b-icon>
          </a>
      </div>
        <div class="card-content">
          <div class="columns">
            <div class="column is-half">
              <b-field label="Quantidade">
                <b-select v-model="filter.perPage" :disabled="!isPaginated">
                  <option value="2">2 {{label}} por página</option>
                  <option value="5">5 {{label}} por página</option>
                  <option value="10">10 {{label}} por página</option>
                  <option value="15">15 {{label}} por página</option>
                </b-select>
              </b-field>
            </div>
            <div class="column is-half">
              <b-field label="Busca por Título">
                <b-input v-model="filter.title" placeholder="Matrix..." type="text" />
              </b-field>
            </div>
          </div>
        </div>
        <footer class="card-footer">
          <a @click="search" class="card-footer-item">Buscar</a>
          <a @click="clear" class="card-footer-item">Limpar</a>
        </footer>
    </b-collapse>
  </form>
</template>

<script>
  const filter = {
    perPage: 2,
    title: ''
  }

  export default {
    data () {
      return {
        filter: Object.assign({}, filter)
      }
    },
    props: {
      label: { required: true, type: String },
      isPaginated: { required: true, type: Boolean }
    },
    methods: {
      search () {
        this.$emit('submit', this.filter)
      },
      clear () {
        this.filter = Object.assign({}, filter)
      }
    }
  }
</script>

<style lang="sass" scoped>
</style>
