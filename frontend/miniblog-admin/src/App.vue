<template>
  <div id="app">
    <router-view></router-view>
  </div>
</template>

<script>
import { listSystemDict } from '@/api/system'
import { mapMutations } from 'vuex'
export default {
  created () {
    this.getSystemDict()
  },
  methods: {
    async getSystemDict () {
      const res = await listSystemDict()
      const list = res.data
      this.parseSystemDictString(this.setPublishStatusList, 'publish_status', list)
      this.parseSystemDictString(this.setActiveStatusList, 'active_status', list)
    },
    // 解析系统字典字符串
    parseSystemDictString (func, code, list) {
      const statusList = list.find(item => item.code === code)
      func(JSON.parse(statusList.items))
    },
    ...mapMutations('system', ['setPublishStatusList', 'setActiveStatusList'])
  }
}
</script>

<style lang="less">
#app {
  width: 100%;
  height: 100%;
}
</style>
