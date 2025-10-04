<template>
  <el-dialog :title="dialogObj.title" :visible.sync="dialogFormVisible" width="36%">
    <el-form :model="diaLogForm">
      <el-form-item label="专栏名" prop="name" :label-width="formLabelWidth">
        <el-input v-model="diaLogForm.name" autocomplete="off" id="name"></el-input>
      </el-form-item>
      <el-form-item label="描述" prop="description" :label-width="formLabelWidth">
        <el-input v-model="diaLogForm.description" autocomplete="off" id="description"></el-input>
      </el-form-item>
      <el-form-item label="发布状态" :label-width="formLabelWidth">
        <el-select v-model="diaLogForm.status" placeholder="状态" id="status">
          <el-option label="草稿" :value="0"></el-option>
          <el-option label="发布" :value="1"></el-option>
          <el-option label="下架" :value="2"></el-option>
        </el-select>
      </el-form-item>
    </el-form>
    <div slot="footer" class="dialog-footer">
      <el-button @click="handleCancel">取 消</el-button>
      <el-button type="primary" @click="handleSave">{{ dialogObj.mode === 'add' ? '添加' : '保存' }}</el-button>
    </div>
  </el-dialog>

</template>

<script>
import { mapState, mapMutations } from 'vuex'
export default {
  data () {
    return {
      formLabelWidth: '120px'
    }
  },
  computed: {
    dialogFormVisible: {
      get () {
        return this.$store.state.column.dialogFormVisible
      },
      set (value) {
        this.$store.state.column.dialogFormVisible = value
      }
    },
    ...mapState('column', ['diaLogForm', 'dialogObj'])
  },
  methods: {
    handleSave () {
      this.closeDialog()
    },
    handleCancel () {
      this.closeDialog()
    },
    ...mapMutations('column', ['closeDialog'])
  }

}
</script>

<style lang="less"></style>
