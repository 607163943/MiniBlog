<template>
  <el-aside width="200px" class="aside-nav">
    <el-menu default-active="/dashboard" class="el-menu-vertical-demo" text-color="#606266" active-text-color="#409EFF" :router="true">
      <el-menu-item index="/dashboard">
        <i class="el-icon-data-board"></i>
        <span slot="title">工作台</span>
      </el-menu-item>
      <el-menu-item index="/article">
        <i class="el-icon-document"></i>
        <span slot="title">文章管理</span>
      </el-menu-item>
      <el-menu-item index="/column">
        <i class="el-icon-collection"></i>
        <span slot="title">专栏管理</span>
      </el-menu-item>
      <el-menu-item index="/tag">
        <i class="el-icon-collection-tag"></i>
        <span slot="title">标签管理</span>
      </el-menu-item>
    </el-menu>
  </el-aside>
</template>

<script>
export default {

}
</script>

<style lang="less">
.el-aside {
  text-align: center;
  line-height: 200px;
}

.aside-nav {
  .el-menu {
    border-right: 1px solid #F5F7FA;
    height: 100%;
    background-color: #F5F7FA;

    .el-menu-item {
      &:hover {
        background-color: #E6F0FF;
      }
    }
  }
}
</style>
