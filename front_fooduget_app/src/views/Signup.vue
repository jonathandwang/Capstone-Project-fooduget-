<template>
  <!-- <div class="signup">
    <form v-on:submit.prevent="submit()">
      <h1>Signup</h1>
      <ul>
        <li class="text-danger" v-for="error in errors">{{ error }}</li>
      </ul>
       <div class="form-group">
        <label>Username:</label>
        <input type="text" class="form-control" v-model="user_name">
      </div>
      <div class="form-group">
        <label>Email:</label>
        <input type="email" class="form-control" v-model="email">
      </div>
      <div class="form-group">
        <label>Password:</label>
        <input type="password" class="form-control" v-model="password">
      </div>
      <div class="form-group">
        <label>Password confirmation:</label>
        <input type="password" class="form-control" v-model="passwordConfirmation">
      </div>
      <input type="submit" class="btn btn-primary" value="Submit">
    </form>
  </div> -->
    <form v-on:submit.prevent="submit()">
    <p class="h4 mb-4">Sign in</p>
      <ul>
      <li class="text-danger" v-for="error in errors">{{ error }}</li>
      </ul>
    <!-- Username -->
    <input type="username" id="defaultLoginFormUsername" class="form-control mb-4" v-model= "userName" placeholder="Username">

    <!-- Email -->
    <input type="email" id="defaultLoginFormEmail" class="form-control mb-4" v-model= "email" placeholder="Email">

    <!-- Password -->
    <input type="password" id="defaultLoginFormPassword" class="form-control mb-4" v-model= "password" placeholder="Password">

    <!-- Password -->
    <input type="password" id="defaultLoginFormPasswordConfirmation" class="form-control mb-4" v-model= "passwordConfirmation" placeholder="Password Confirmation">

    <!-- Sign Up button -->
    <input type="submit" button class="btn btn-info btn-block my-4" value="Submit"></button>
  </form>
</template>

<script>
import axios from "axios";

export default {
  data: function () {
    return {
      userName: "",
      email: "",
      password: "",
      passwordConfirmation: "",
      errors: [],
    };
  },
  methods: {
    submit: function () {
      var params = {
        user_name: this.userName,
        email: this.email,
        password: this.password,
        password_confirmation: this.passwordConfirmation,
      };
      axios
        .post("/api/users", params)
        .then((response) => {
          this.$router.push("/login");
        })
        .catch((error) => {
          this.errors = error.response.data.errors;
        });
    },
  },
};
</script>

<style>
</style>