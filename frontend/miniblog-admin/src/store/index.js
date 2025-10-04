import Vue from 'vue'
import Vuex from 'vuex'
import column from './modules/column'
import system from './modules/system'

Vue.use(Vuex)

export default new Vuex.Store({
  state: {
  },
  getters: {
  },
  mutations: {
  },
  actions: {
  },
  modules: {
    column,
    system
  }
})
