<template>
  <div class="categories-new">
    <h1>New Category</h1>
    <form v-on:submit.prevent="createCategory()">
      <ul>
        <li v-for="error in errors">{{ error }}</li>
      </ul>
      <div class="form-group">
        <label>Name:</label> 
        <input type="text" v-model="newcategoryName" />
      </div>
      <div class="form-group">
        <label>Target Budget Amount:</label>
        <input type="text" v-model="newcategoryTargetBudgetAmount" />
      <!-- potential issue? -->
      </div>
      <div class="form-group">
        <label>Occurence:</label>
        <input type="text" v-model="newcategoryOccurence" />
      </div>
      <input type="submit" value="Create" />
    </form>
  </div>
</template>

<script>
import axios from "axios";
export default {
  data: function() {
    return {
      newcategoryName: "",
      newcategoryTargetBudgetAmount: "",
      newcategoryOccurence: "",
      errors: [],
    };
  },
  created: function() {},
  methods: {
    createCategory: function() {
      var params = {
        name: this.newcategoryName,
        target_budget_amount: this.newcategoryTargetBudgetAmount,
        occurence: this.newcategoryOccurence,
      };
      axios
        .post("/api/categories", params)
        .then(response => {
          console.log("categories create", response);
          this.$router.push("/categories");
        })
        .catch(error => {
          console.log("categories create error", error.response);
          this.errors = error.response.data.errors;
        });
    },
  },
};
</script> 