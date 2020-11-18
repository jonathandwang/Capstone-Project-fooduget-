<template>
  <div class="items-new">
    <h1>Add Item</h1>
    <form v-on:submit.prevent="createItem()">
      <ul>
        <li class="text-danger" v-for="error in errors">{{ error }}</li>
      </ul>
      <div class="form-group">
        Name:
        <input type="text" class="form-control" v-model="newitemName" />
      </div>
      <div>
        Price:
        <input type="text" class="form-control" v-model="newitemPrice" />
      </div>
      <div>
        <!-- <label for="exampleFormControlOccurence">Reoccurence:</label>
              <select class="form-control" id="exampleFormControlOccurence">
                <option>Weekly</option>
                <option>Bi-Weekly</option>
                <option>Monthly</option>
              </select> -->
        Category Name:
        <select v-model="newitemCategoryId" class="form-control" >
          <option v-for="category in categories" v-bind:value="category.id">
            {{ category.name }}
          </option>
        </select>
        <!-- <input type="text" class="form-control" v-model="newitemCategoryId" /> -->
      </div>
      <div>
        Date Bought:
        <input type="text" class="form-control" v-model="newitemDateBought" />
      </div>
        <input type="submit" button class="btn btn-info btn-block my-4" value="Submit"></button>
    </form>
  </div>
</template>

<style>
.items-new{
  color:black;
  font-weight: bold;
}
</style>

<script>
import axios from "axios";

export default {
  data: function() {
    return {
      newitemName: "",
      newitemPrice: "",
      newitemCategoryId: "",
      newitemDateBought: "",
      categories: [],
      errors: [],
    };
  },
  created: function() {
    axios.get("/api/categories").then(response => {
      console.log("categories index", response);
      this.categories = response.data;
    });
  },
  methods: {
    createItem: function() {
      var params = {
        name: this.newitemName,
        price: this.newitemPrice,
        category_id: this.newitemCategoryId,
        date_bought: this.newitemDateBought,
      };
      axios
        .post("/api/items", params)
        .then(response => {
          this.$router.push("/items");
        })
        .catch(error => console.log(error.response));
    },
  },
};
</script>
