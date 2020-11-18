<template>
  <div class="categories-new"> 
        <div class="card-header py-3">
          <h6 class="m-0 font-weight-bold text-primary">Add Category</h6>
        </div>
        <div class="card-body">
    <form v-on:submit.prevent="createCategory()">
      <ul>
        <li class="text-danger" v-for="error in errors">{{ error }}</li>
      </ul> 
      <div>
        Name:<input type="text" class="form-control" v-model="newcategoryName" />
      </div>
      <div>
        Budget Amount: <input type="text" class="form-control" v-model="newcategoryTargetBudgetAmount" />
      </div>
      <div>
        Reoccurence:<input type="text" class="form-control" v-model="newcategoryOccurence" />
        </div> 
        <input type="submit" button class="btn btn-info btn-block my-4" value="Submit"></button>
    </form>
        </div>
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
          this.$router.push("/")
        })
        .catch((error) => console.log(error.response));
    },
  },
};
</script>