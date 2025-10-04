<template>
  <el-header>
    <!-- TODO:Logo可以添加一点动态选中效果 -->
    <div class="logo">
      <a href="/">
        <h1><img src="@/assets/Logo.png" alt="Logo图片">Logo</h1>
      </a>
    </div>
  </el-header>
</template>

<script>
export default {

}
</script>

<style lang="less">
.el-header {
  background-color: #FFFFFF;
  color: #303133;
  text-align: center;
  line-height: 60px;
  border-bottom: 1px solid #F5F7FA;
}

.logo {
  height: 100%;
  width: 124px;
  text-align: left;

  h1 {
    height: 100%;
    font-size: 0px;
  }

  img {
    margin-top: 10px;
    margin-left: 24px;
    height: 40px;
  }
}
</style>
