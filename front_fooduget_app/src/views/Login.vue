<template>
  <div class="login" style="text-align:center">


                      <!-- <form v-on:submit.prevent="submit()">
                        <h1>Login</h1>
                        <ul>
                          <li class="text-danger" v-for="error in errors">{{ error }}</li>
                        </ul>
                        <div class="form-group">
                          <label>Email:</label>
                          <input type="email" class="form-control" v-model="email" />
                        </div>
                        <div class="form-group">
                          <label>Password:</label>
                          <input type="password" class="form-control" v-model="password" />
                        </div>
                        <input type="submit" class="btn btn-primary" value="Submit" />
                      </form> -->
                      <!-- Default form login -->
  <form v-on:submit.prevent="submit()">
    <div class="h4 m" >Sign in</div>
      <ul>
      <li class="text-danger" v-for="error in errors">{{ error }}</li>
      </ul>
    <!-- Email -->
    <input type="email" id="defaultLoginFormEmail" class="form-control mb-4" v-model= "email" placeholder="Email">

    <!-- Password -->
    <input type="password" id="defaultLoginFormPassword" class="form-control mb-4" v-model= "password" placeholder="Password">
    <!-- Sign in button -->
    <input type="submit" button class="btn btn-info btn-block my-4" value="Submit"></button>
  </form>

    <!-- Register -->
    <p>Not a member?
        <a href="/signup">SignUp</a>
    </p>
</div>
<!-- Default form login -->

                      <!-- <hr /> -->
                      <!-- <div class="text-center">
                                        <a class="small" href="/forgot-password.html">Forgot Password?</a>
                                    </div>
                                    <div class="text-center"> -->
                      <!-- <a class="small" href="/register.html">Create an Account!</a>
                                    </div> -->
                    <!-- </div> -->

  <!-- <div class="login">
    <form v-on:submit.prevent="submit()">
      <h1>Login</h1>
      <ul>
        <li class="text-danger" v-for="error in errors">{{ error }}</li>
      </ul>
      <div class="form-group">
        <label>Email:</label>
        <input type="email" class="form-control" v-model="email">
      </div>
      <div class="form-group">
        <label>Password:</label>
        <input type="password" class="form-control" v-model="password">
      </div>
      <input type="submit" class="btn btn-primary" value="Submit">
    </form>
  </div> -->
</template>

<script>
import axios from "axios";
export default {
  data: function() {
    return {
      email: "",
      password: "",
      errors: [],
    };
  },
  methods: {
    submit: function() {
      var params = {
        email: this.email,
        password: this.password,
      };
      axios
        .post("/api/sessions", params)
        .then(response => {
          axios.defaults.headers.common["Authorization"] = "Bearer " + response.data.jwt;
          localStorage.setItem("jwt", response.data.jwt);
          this.$router.push("/");
        })
        .catch(error => {
          this.errors = ["Invalid email or password."];
          this.email = "";
          this.password = "";
        });
    },
  },
};
</script>
