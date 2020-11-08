<template>
  <div class="categories-show">
    <h4>{{ category.name }}</h4>
    <p>Name: {{ category.name }}</p>
    <p>Target Budget Amount: {{ category.target_budget_amount }}</p>
    <p>Occurence: {{category.occurence }}</p>
    <br>
    <router-link to="/categories">Back to all Categories</router-link>
  </div>
</template>

<script>
import axios from "axios";
export default {
  data: function() {
    return {
      category: {},
    };
  },
  created: function() {
    axios.get("/api/categories/" + this.$route.params.id).then(response => {
      console.log("categories show", response);
      this.category = response.data;
    });
  },
  methods: {},
};
</script> 