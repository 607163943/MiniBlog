export default {
  namespaced: true,
  state () {
    return {
      dialogFormVisible: false,
      dialogObj: {
        id: 0,
        title: '新增专栏',
        mode: 'add'
      },
      diaLogForm: {
        name: '',
        description: '',
        status: ''
      }
    }
  },
  mutations: {
    // 显示专栏对话框
    showDialog (state, value) {
      state.dialogObj = value
      // TODO:根据id获取专栏详情
      if (value.mode === 'update') {
        console.log(value.id)
      }
      state.dialogFormVisible = true
    },
    // 关闭专栏对话框
    closeDialog (state) {
      state.dialogFormVisible = false
    }
  }
}
