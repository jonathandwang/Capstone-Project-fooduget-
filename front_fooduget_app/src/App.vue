<template>
  <div id="app">
    		<!-- Header -->
			<header id="header">
				<h1>Fooduget</h1>
				<nav>
					<ul>      
						<li><a v-if="!isLoggedIn()" href="/login">Login</a></li>   
						<li><a v-if="!isLoggedIn()" href="/signup">Signup</a></li>   
    				<li><a v-if="isLoggedIn()" href="/categories">My Categories</a></li>   
    				<li><a v-if="isLoggedIn()" href="/categories/new">Add Category</a></li>  		
						<li><a v-if="isLoggedIn()" href="/items">My Items</a></li>       				
    				<li><a v-if="isLoggedIn()" href="/items/new">Add Item</a></li>        
    				<li><a v-if="isLoggedIn()" href="logout">Logout</a></li>                             
					</ul>
				</nav>
			</header>
      <!-- <router-link v-if="isLoggedIn()" to="/categories">My Categories  |  </router-link> 
      <router-link v-if="isLoggedIn()" to="/categories/new">Add Category  |  </router-link> 
      <router-link v-if="isLoggedIn()" to="/items/new"> Add Item  |  </router-link> -->
      <!-- <router-link v-if="!isLoggedIn()" to="/login">Login  |  </router-link>  -->
      <!-- <router-link v-if="!isLoggedIn()" to="/signup">Signup  |  </router-link>  -->
      <!-- <router-link v-if="isLoggedIn()" to="/logout">Logout  |  </router-link>  -->

    <router-view/>

    	<!-- Footer -->
		  <footer id="footer">

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
