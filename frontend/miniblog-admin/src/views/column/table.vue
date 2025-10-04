<template>
  <div class="column-table">
    <div class="button-group">
      <el-button type="success" @click="handleAdd">添加专栏</el-button>
      <el-button type="danger">批量删除</el-button>
    </div>
    <el-table :data="tableData" border stripe>
      <el-table-column type="selection">
      </el-table-column>
      <el-table-column prop="name" label="专栏名">
      </el-table-column>
      <el-table-column prop="description" label="描述">
      </el-table-column>
      <el-table-column prop="status" label="状态">
      </el-table-column>
      <el-table-column prop="releaseTime" label="发布时间">
      </el-table-column>
      <el-table-column label="操作">
        <template slot-scope="scope">
          <el-button size="mini" type="primary" plain @click="handleEdit(scope.row)">编辑</el-button>
          <el-button size="mini" type="danger" plain @click="handleDelete(scope.row)">删除</el-button>
        </template>
      </el-table-column>
    </el-table>

    <el-pagination background layout="total, prev, pager, next, sizes, jumper" :total="1000" class="page"
      :page-sizes="[100, 200, 300, 400]" :page-size="100" :hide-on-single-page="isHide"
      @current-change="handleCurrentChange">
    </el-pagination>
  </div>
</template>

<script>
import { mapMutations } from 'vuex'
export default {
  data () {
    return {
      tableData: [{
        date: '2016-05-02',
        name: '王小虎',
        address: '上海市普陀区金沙江路 1518 弄'
      }, {
        date: '2016-05-04',
        name: '王小虎',
        address: '上海市普陀区金沙江路 1517 弄'
      }, {
        date: '2016-05-01',
        name: '王小虎',
        address: '上海市普陀区金沙江路 1519 弄'
      }, {
        date: '2016-05-03',
        name: '王小虎',
        address: '上海市普陀区金沙江路 1516 弄'
      }],
      isHide: false
    }
  },
  methods: {
    handleAdd () {
      this.showDialog({
        id: 0,
        title: '新增专栏',
        mode: 'add'
      })
    },
    handleEdit (row) {
      this.showDialog({
        id: row.id,
        title: '修改专栏',
        mode: 'update'
      })
    },
    handleDelete (row) {
      console.log(row)
    },
    handleCurrentChange (currentChange) {
      console.log(currentChange)
    },
    ...mapMutations('column', ['showDialog'])
  }
}
</script>

<style lang="less">
.column-table {
  padding: 0 40px;

  .button-group {
    margin-bottom: 10px;
  }

  .page {
    margin-top: 20px;
    text-align: center;
  }
}
</style>
