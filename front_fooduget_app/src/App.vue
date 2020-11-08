<template>
  <div id="app">
    		<!-- Header -->
			<header id="header">
				<h1>Big Picture</h1>
				<nav>
					<ul>
						<li><a href="#intro">Intro</a></li>
						<li><a href="#one">What I Do</a></li>
						<li><a href="#two">Who I Am</a></li>
						<li><a href="#work">My Work</a></li>
						<li><a href="#contact">Contact</a></li>
					</ul>
				</nav>
			</header>
      <router-link v-if="isLoggedIn()" to="/categories">My Categories  |  </router-link> 
      <router-link v-if="isLoggedIn()" to="/categories/new">Add Category  |  </router-link> 
      <router-link v-if="isLoggedIn()" to="/items/new"> Add Item  |  </router-link>
      <router-link v-if="!isLoggedIn()" to="/login">Login  |  </router-link> 
      <router-link v-if="!isLoggedIn()" to="/signup">Signup  |  </router-link> 
      <router-link v-if="isLoggedIn()" to="/logout">Logout  |  </router-link> 
    <router-view/>
    	<!-- Footer -->
		  <footer id="footer">

				<!-- Icons -->
					<ul class="icons">
						<li><a href="#" class="icon brands fa-twitter"><span class="label">Twitter</span></a></li>
						<li><a href="#" class="icon brands fa-facebook-f"><span class="label">Facebook</span></a></li>
						<li><a href="#" class="icon brands fa-instagram"><span class="label">Instagram</span></a></li>
						<li><a href="#" class="icon brands fa-linkedin-in"><span class="label">LinkedIn</span></a></li>
						<li><a href="#" class="icon brands fa-dribbble"><span class="label">Dribbble</span></a></li>
						<li><a href="#" class="icon brands fa-pinterest"><span class="label">Pinterest</span></a></li>
					</ul>

				<!-- Menu -->
					<ul class="menu">
						<li>&copy; Untitled</li><li>Design: <a href="https://html5up.net">HTML5 UP</a></li>
					</ul>

			</footer>
  </div>
</template>

<script>
export default {
  methods: {
    isLoggedIn: function () {
      return localStorage.getItem("jwt");
    },
  },
};
</script>

<style>
</style>
