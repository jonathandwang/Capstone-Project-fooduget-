import Vue from 'vue';
import VueRouter from 'vue-router';
import CategoriesIndex from '../views/CategoriesIndex.vue';
import CategoriesShow from  '../views/CategoriesShow.vue';
import Signup from '../views/Signup.vue';
import Login from '../views/Login.vue';
import Logout from '../views/Logout.vue';
import CategoriesNew from '../views/CategoriesNew.vue';
import ItemsIndex from '../views/ItemsIndex.vue';
import ItemsNew from '../views/ItemsNew.vue';

Vue.use(VueRouter);

const routes = [

  // {
  //   path: '/about',
  //   name: 'About',
  //   // route level code-splitting
  //   // this generates a separate chunk (about.[hash].js) for this route
  //   // which is lazy-loaded when the route is visited.
  //   component: () => import(/* webpackChunkName: "about" */ '../views/About.vue')
  // },
  { path: "/", name: "categories-index", component: CategoriesIndex},
  { path: "/signup", name: "signup", component: Signup},
  { path: "/categories/new", name: "categories-new", component: CategoriesNew},
  { path: "/categories/:id", name: "categories-show", component: CategoriesShow},
  { path: "/login", name: "login", component: Login },
  { path: "/logout", name: "logout", component: Logout },
  { path: "/items", name: "items-index", component: ItemsIndex },
  { path: "/items/new", name: "items-new", component: ItemsNew },
];

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes
})

export default router;
