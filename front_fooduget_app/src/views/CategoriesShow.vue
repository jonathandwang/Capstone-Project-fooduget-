<template>
  <div class="categories-show">
    <p>Name: {{ category.name }}</p>
    <p>Budget Amount: ${{ category.target_budget_amount }}</p>
    <p>Reoccurence: {{ category.occurence }}</p>
    <p class="mb-0 flagged" v-if="isOverBudget(category.target_budget_amount, category.total_spent)">Total Spent: ${{ category.total_spent }}</p>
    <p class="mb-0 green" v-else>Total Spent: ${{ category.total_spent }}</p>    
    <p class="mb-0 bold">Amount left: ${{ category.target_budget_amount - category.total_spent}}</p>
    <a class="btn btn-primary btn-sm" href="/items/new" role="button">Add item</a>
    <br>
    <area-chart :data="data"></area-chart>
    <div v-for="item in category.items"> 
     - {{ item.name }} || ${{ item.price }} || {{ item.date_bought}}
    </div>
    <router-link to="/">Back to all Categories</router-link>
  </div>
</template>

<style>
.categories-show{
  color:black;
  font-weight: bold;
}
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
      category: {},
      data: {},
    };
  },
  created: function() {
    axios.get("/api/categories/" + this.$route.params.id).then(response => {
      console.log("categories show", response);
      this.category = response.data;
      this.setupChart() 
    });
  },
  methods: {
    setupChart: function() {
      
      var foodData={} 
      var budgetData={}
      var total = 0
      this.category.items.forEach(item=> {
        total += parseFloat(item.price)
        foodData[item.date_bought] = total
        budgetData[item.date_bought] = this.category.target_budget_amount  
      })
      this.data=[
        {name:"budget", data: budgetData},
        {name:"amount spent", data: foodData}
      ]
    },
    isOverBudget: function(budget, spent) {
      return spent > budget;
    } 
  },
};
</script> 