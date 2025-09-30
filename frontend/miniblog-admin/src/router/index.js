import Vue from 'vue'
import VueRouter from 'vue-router'
import Layout from '@/views/layout'
import Dashboard from '@/views/dashboard'
import Column from '@/views/column'
import Article from '@/views/article'
import Tag from '@/views/tag'
import NotFound from '@/views/not-found'

Vue.use(VueRouter)

const router = new VueRouter({
  routes: [
    {
      path: '/',
      component: Layout,
      redirect: '/dashboard',
      children: [
        { path: '/dashboard', component: Dashboard },
        { path: '/column', component: Column },
        { path: '/article', component: Article },
        { path: '/tag', component: Tag }
      ]
    },
    { path: '*', component: NotFound }
  ]
})

export default router
