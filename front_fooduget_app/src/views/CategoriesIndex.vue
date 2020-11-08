<template>
  <div class="categories-index">
    <h1>All Categories</h1>
    <div v-for="category in categories">
      <h4> Name {{ category.name }}</h4>
      <p> Target Budget Amount {{ category.target_budget_amount }}</p>
      <p>Occurence: {{ category.occurence }}</p>
      <p>{{ category.user_id }}</p>
    </div>
  </div>
</template>

<script>
import axios from "axios";
export default {
  data: function() {
    return {
      categories: [],
    };
  },
  created: function() {
    axios.get("/api/categories").then(response => {
      console.log("categories index", response);
      this.cars = response.data;
    });
  },
  methods: {},
};
</script> 