<template>
  <div id="app">
    <h1>All My Categories</h1>
    <div v-for="category in categories">
      <div class="card shadow mb-4">
        <div class="card-header py-3">
          <h6 class="m-0 font-weight-bold text-primary">{{ category.name }}</h6>
        </div>
        <div class="card-body">
          <p>
            Target Budget Amount: {{ category.target_budget_amount }}
          </p>
          <p class="mb-0">
            Occurence: {{ category.occurence }}
          </p>
        </div>
      </div>
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
      this.categories = response.data;
    });
  },
  methods: {},
};
</script>
