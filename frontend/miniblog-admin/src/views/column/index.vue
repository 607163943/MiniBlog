<template>
  <div class="column">
    <Search></Search>
    <Table></Table>
    <Dialog></Dialog>
  </div>
</template>

<script>
import Search from './search.vue'
import Table from './table.vue'
import Dialog from './dialog.vue'
export default {
  components: {
    Search,
    Table,
    Dialog
  }
}
</script>

<style lang="less">

</style>
