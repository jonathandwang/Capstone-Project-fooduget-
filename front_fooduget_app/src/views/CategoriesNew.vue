<template>
  <div class="categories-new">
    <h1>Add Category</h1>
    <form v-on:submit.prevent="createCategory()">
      <ul>
        <li class="text-danger" v-for="error in errors">{{ error }}</li>
      </ul> 
        Name:<input type="text" v-model="newcategoryName" />
        Target Budget Amount: <input type="text" v-model="newcategoryTargetBudgetAmount" />
        Occurence:<input type="text" v-model="newcategoryOccurence" />
        <button type="submit">Create</button>
    </form>
  </div>
</template>

<script>
import axios from "axios";

export default {
  data: function () {
    return {
      newcategoryName: "",
      newcategoryTargetBudgetAmount: "",
      newcategoryOccurence: "",
      errors: [],
    };
  },
  methods: {
    createCategory: function () {
      var params = {
        name: this.newcategoryName,
        target_budget_amount: this.newcategoryTargetBudgetAmount,
        occurence: this.newcategoryOccurence,
      };
      axios
        .post("/api/categories", params)
        .then((response) => {
          this.$router.push("/categories")
        })
        .catch((error) => console.log(error.response));
    },
  },
};
</script>