export default {
  namespaced: true,
  state: {
    publishStatusList: [],
    activeStatusList: []
  },
  mutations: {
    setPublishStatusList (state, list) {
      state.publishStatusList = list
    },
    setActiveStatusList (state, list) {
      state.activeStatusList = list
    }
  }
}
