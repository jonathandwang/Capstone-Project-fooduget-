<template>
  <div id="app">
    <h1 class="display-4">All My Categories</h1>
    <pie-chart :data="data"></pie-chart>

    <div v-for="category in categories">
      <div class="card shadow mb-4 text-center">
        <div class="card-header py-3">
          <a class="link" v-bind:href="`/categories/${category.id}`">
            <h6 class="m-0 font-weight-bold text-primary">{{ category.name }}</h6>
          </a>
        </div>
        <div class="card-body">
          <p class="mb-0">Budget Amount: ${{ category.target_budget_amount }}</p>
          <p class="mb-0">Reoccurence: {{ category.occurence }}</p>
          <p class="mb-0 flagged" v-if="isOverBudget(category.target_budget_amount, category.total_spent)">Total Spent: ${{ category.total_spent }}</p>
          <p class="mb-0 green" v-else>Total Amount Spent: ${{ category.total_spent }}</p>
          <p class="mb-0 bold">Amount left: ${{ category.target_budget_amount - category.total_spent}}</p>
        </div>
      </div>
    </div>
  </div>
</template>

<style>
.green{
    color: green;
}
.flagged{
    color: red;
}
</style>

<script>
import axios from "axios";
export default {
  data: function() {
    return {
      categories: [],
      data: [],
    };
  },
  created: function() {
    axios.get("/api/categories").then(response => {
      console.log("categories index", response);
      this.categories = response.data;
      this.setupChart();
    });
  },
  methods: {
    setupChart: function() {
      console.log(this.categories);
      this.data = this.categories.map(category=> {
          return [category.name, category.total_spent]
      })
    },
    isOverBudget: function(budget, spent) {
        return spent > budget;
    }
  },
};
</script>
