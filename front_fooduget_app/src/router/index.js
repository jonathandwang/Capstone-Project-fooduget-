import Vue from 'vue';
import VueRouter from 'vue-router';
import Home from '../views/Home.vue';
import CategoriesIndex from '../views/CategoriesIndex.vue';
import Signup from '../views/Signup.vue';

Vue.use(VueRouter);

const routes = [
  {
    path: '/',
    name: 'Home',
    component: Home
  },
  {
    path: '/about',
    name: 'About',
    // route level code-splitting
    // this generates a separate chunk (about.[hash].js) for this route
    // which is lazy-loaded when the route is visited.
    component: () => import(/* webpackChunkName: "about" */ '../views/About.vue')
  },
  { path: "/signup", name: "signup", component: Signup},
  { path: "/categories", name: "categories-index", component: CategoriesIndex},
];

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes
})

export default router;
