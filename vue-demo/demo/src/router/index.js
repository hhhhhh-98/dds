import Vue from 'vue'
import Router from 'vue-router'
import test from '@/components/test.vue'
import admin from '../components/admin.vue'

Vue.use(Router)
export default new Router({
  routes: [
    {
      path: '/test',
      component: test
    }, {
      path: '/admin',
      component: admin
    }
  ]
})
