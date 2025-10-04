export default {
  namespaced: true,
  state () {
    return {
      dialogFormVisible: false
    }
  },
  mutations: {
    setDialogFormVisible (state, value) {
      state.dialogFormVisible = value
    }
  }
}
