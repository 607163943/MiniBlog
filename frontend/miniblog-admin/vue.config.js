const { defineConfig } = require('@vue/cli-service')
module.exports = defineConfig({
  transpileDependencies: true,
  // 端口设置为8000
  devServer: {
    port: 8000,
    // 配置代理
    proxy: {
      '/api': {
        target: 'http://localhost:8080',
        changeOrigin: true,
        pathRewrite: {
          '^/api': ''
        }
      }
    }
  }
})
