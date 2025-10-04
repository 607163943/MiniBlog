<template>
  <el-form :inline="true" :model="searchForm" class="column-search" ref="searchForm">
    <el-form-item label="专栏名" prop="column">
      <el-input v-model="searchForm.column" placeholder="专栏名" id="column"></el-input>
    </el-form-item>
    <el-form-item label="状态" prop="status">
      <el-select v-model="searchForm.status" placeholder="状态" id="status">
        <!-- TODO:状态数据从数据库中获取 -->
        <el-option label="草稿" :value="0"></el-option>
        <el-option label="发布" :value="1"></el-option>
        <el-option label="下架" :value="2"></el-option>
      </el-select>
    </el-form-item>
    <el-form-item>
      <el-button type="primary" @click="onSubmit">查询</el-button>
      <el-button @click="resetForm('searchForm')">重置</el-button>
    </el-form-item>
  </el-form>
</template>

<script>
export default {
  data () {
    return {
      searchForm: {
        column: '',
        status: ''
      }
    }
  },
  methods: {
    onSubmit () {
      console.log('submit!')
    },
    resetForm (formName) {
      this.$refs[formName].resetFields()
    }
  }
}
</script>

<style lang="less">
.column-search {
  padding: 24px;
}
</style>
