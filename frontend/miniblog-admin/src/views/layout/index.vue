<template>
  <el-container>
    <Header></Header>
    <el-container>
      <AsideNav></AsideNav>
      <Main></Main>
    </el-container>
  </el-container>

</template>

<script>
import AsideNav from './aside-nav.vue'
import Header from './header.vue'
import Main from './main.vue'
export default {
  components: {
    AsideNav,
    Header,
    Main
  }
}
</script>

<style lang="less">
.el-container {
  height: 100%;
  width: 100%;
}

// 修复组件封装后ElementUI布局错乱问题
#app>.el-container {
  flex-direction: column;
}
</style>
