import { createRouter, createWebHistory } from 'vue-router'
import HomePage from '../views/HomePage.vue'
import AboutPage from '../views/AboutPage.vue'
import RecommendPage from '../views/RecommendPage.vue'
import ServicePage from '../views/ServicePage.vue'
import StrategyPage from '../views/StrategyPage.vue'

const routes = [
  {
    path: '/',
    name: 'Home',
    component: HomePage
  },
  {
    path: '/about',
    name: 'About',
    component: AboutPage
  },
  {
    path: '/recommend',
    name: 'Recommend',
    component: RecommendPage
  },
  {
    path: '/service',
    name: 'Service',
    component: ServicePage
  },
  {
    path: '/strategy',
    name: 'Strategy',
    component: StrategyPage
  }
]

const router = createRouter({
  history: createWebHistory(process.env.BASE_URL),
  routes
})

export default router
