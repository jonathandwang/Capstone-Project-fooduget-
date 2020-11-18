<template>
<div class="sign-up" style="text-align:center">
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
  </div>
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