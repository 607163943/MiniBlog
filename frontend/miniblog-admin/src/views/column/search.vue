<template>
  <el-form :inline="true" :model="searchForm" class="column-search" ref="searchForm">
    <el-form-item label="专栏名" prop="column">
      <el-input v-model="searchForm.column" placeholder="专栏名" id="column"></el-input>
    </el-form-item>
    <el-form-item label="状态" prop="status">
      <el-select v-model="searchForm.status" placeholder="状态" id="status">
        <el-option v-for="item in publishStatusList" :key="item.value" :label="item.label"
          :value="item.value"></el-option>
      </el-select>
    </el-form-item>
    <el-form-item>
      <el-button type="primary" @click="onSubmit">查询</el-button>
      <el-button @click="resetForm('searchForm')">重置</el-button>
    </el-form-item>
  </el-form>
</template>

<script>
import { mapState } from 'vuex'
export default {
  data () {
    return {
      searchForm: {
        column: '',
        status: ''
      }
    }
  },
  computed: {
    ...mapState('system', ['publishStatusList'])
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
