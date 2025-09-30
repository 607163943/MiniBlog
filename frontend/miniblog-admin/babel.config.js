module.exports = {
  presets: [
    '@vue/cli-plugin-babel/preset'
  ],
  // 配置ElementUI按需自动导入
  plugins: [
    [
      'component',
      {
        libraryName: 'element-ui',
        styleLibraryName: 'theme-chalk'
      }
    ]
  ]
}
