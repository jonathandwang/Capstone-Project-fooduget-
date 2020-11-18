<template>
  <div id="app">
		<!-- Page Wrapper -->
		<div v-if="!isLoggedIn()">
		<header id="header">
			<nav class="navbar navbar-expand-lg navbar bg">
				<a class="navbar-brand" href="/">Foodget</a>
				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarNav">
					<ul class="navbar-nav">
						<li class="nav-item active">
							<a class="nav-link" href="/login">Login <span class="sr-only">(current)</span></a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="/signup">Signup</a>
						</li>
					</ul>
				</div>
			</nav>
		</header> 
		</div>
    <div id="wrapper">
			<header id="header">
				<!-- Sidebar -->
				<div id="sidebar" v-if="isLoggedIn()">
					<ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">
						<!-- Sidebar - Brand -->
						<a class="sidebar-brand d-flex align-items-center justify-content-center" href="/">
							<div class="sidebar-brand-icon rotate-n-15">
								<i class="fas fa-laugh-wink"></i>
							</div>
							<div class="sidebar-brand-text mx-3">
								Foodget
							</div>
						</a>

						<!-- Divider -->
						<hr class="sidebar-divider my-0" />

						<!-- Nav Item - Dashboard -->
						<li class="nav-item active">
							<a class="nav-link" href="/">
								<i class="fas fa-fw fa-tachometer-alt "></i>
								<span>HOME</span>
							</a>
						</li>

						<!-- Divider -->
						<hr class="sidebar-divider" />

						<!-- Heading -->
						<div class="sidebar-heading">
							Interface
						</div>

						<!-- Nav Item - Pages Collapse Menu -->
						<li class="nav-item">
							<a
								class="nav-link collapsed"
								href="#"
								data-toggle="collapse"
								data-target="#collapseTwo"
								aria-expanded="true"
								aria-controls="collapseTwo"
							>
								<i class=""></i>
								<span>My Categories</span>
							</a>
							<div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
								<div class="bg-white py-2 collapse-inner rounded">
									<a class="collapse-item" href="/">View Categories</a>
									<a class="collapse-item" href="/categories/new">Add Category</a>
								</div>
							</div>
						</li>

						<!-- Nav Item - Utilities Collapse Menu -->
						<li class="nav-item">
							<a
								class="nav-link collapsed"
								href="#"
								data-toggle="collapse"
								data-target="#collapseUtilities"
								aria-expanded="true"
								aria-controls="collapseUtilities"
							>
								<i class=""></i>
								<span>My Items</span>
							</a>
							<div
								id="collapseUtilities"
								class="collapse"
								aria-labelledby="headingUtilities"
								data-parent="#accordionSidebar"
							>
								<div class="bg-white py-2 collapse-inner rounded">
									<a class="collapse-item" href="/items">Views Items</a>
									<a class="collapse-item" href="/items/new">Add item</a>
								</div>
							</div>
						</li>

						<!-- Divider -->
						<hr class="sidebar-divider" />

						<!-- Heading -->
						<div class="sidebar-heading">
							OTHER OPTIONS
						</div>

						<!-- Nav Item - Pages Collapse Menu -->
						<li class="nav-item">
							<a
								class="nav-link collapsed"
								href="#"
								data-toggle="collapse"
								data-target="#collapsePages"
								aria-expanded="true"
								aria-controls="collapsePages"
							>
								<i class=""></i>
								<span>Logout</span>
							</a>
							<div id="collapsePages" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
								<div class="bg-white py-2 collapse-inner rounded">
									<h6 class="collapse-header">Login Screens:</h6>
									<a v-if="isLoggedIn()" href="/logout">Logout</a>
								</div>
							</div>
						</li>

						<!-- Nav Item - Charts -->
						<!-- <li class="nav-item">
							<a class="nav-link" href="charts.html">
								<i class="fas fa-fw fa-chart-area"></i>
								<span>Charts</span>
							</a>
						</li> -->

						<!-- Nav Item - Tables -->
						<!-- <li class="nav-item">
							<a class="nav-link" href="tables.html">
								<i class="fas fa-fw fa-table"></i>
								<span>Tables</span>
							</a>
						</li> -->

						<!-- Divider -->
						<hr class="sidebar-divider d-none d-md-block" />

						<!-- Sidebar Toggler (Sidebar) -->
						<!-- <div class="text-center d-none d-md-inline">
							<button class="rounded-circle border-0" id="sidebarToggle"></button>
						</div> -->

						<!-- Sidebar Message -->
					</ul>
				</div>
				<!-- End of Sidebar -->
			</header>
  
      <!-- Content Wrapper -->
      <div id="content-wrapper" class="d-flex flex-column">

          <!-- Main Content -->
          <div id="content">
						 <!-- Begin Page Content -->
              <div class="container">

                  <!-- Page Heading -->
                  <div class="d-sm-flex align-items-center justify-content-between mb-4" style="justify-content: center !important;">
                      <h1 class="h4 mb-2 text-black-500 ">Welcome to Foodget</h1>
                  </div>

                  <!-- Content Row -->
                  <div class="row justify-content-center">
									

										<router-view />
                  </div>
              </div>
          </div>
      </div>
    </div>


    <!-- Footer -->
    <footer class="sticky-footer bg-white">
      <div class="container my-auto">
        <div class="copyright text-center my-auto">
          <span>Copyright &copy; Foodget 2020</span>
        </div>
      </div>
    </footer>
    <!-- End of Footer -->
  </div>
  <!-- End of Content Wrapper -->
</template>
<style>
#content-wrapper {
	background: url("/ingredients.jpeg") no-repeat center center fixed;
	background-size: cover;
}
</style>

<script>
import Vue from 'vue'
import Chartkick from 'vue-chartkick'
import Chart from 'chart.js'

Vue.use(Chartkick.use(Chart))

export default {
  methods: {
    isLoggedIn: function() {
      return localStorage.getItem("jwt");
    },
  },
};
</script>

<style></style>
