<template>
  <div class="items-new">
    <h1>Add Item</h1>
    <form v-on:submit.prevent="createItem()">
      <ul>
        <li class="text-danger" v-for="error in errors">{{ error }}</li>
      </ul> 
        Name:<input type="text" v-model="newitemName" />
        Price:<input type="text" v-model="newitemPrice" />
        Category_Id <input type="text" v-model="newitemCategoryId" />
        Date Bought:<input type="text" v-model="newitemDateBought" />
        <button type="submit">Create</button>
    </form>
  </div>
</template>

<script>
import axios from "axios";

export default {
  data: function () {
    return {
      newitemName: "",
      newitemPrice: "",
      newitemCategoryId: "",
      newitemDateBought: "",
      errors: [],
    };
  },
  methods: {
    createItem: function () {
      var params = {
        name: this.newitemName,
        price: this.newitemPrice,        
        category_id: this.newitemCategoryId,
        date_bought: this.newitemDateBought,
      };
      axios
        .post("/api/items", params)
        .then((response) => {
          this.$router.push("/items")
        })
        .catch((error) => console.log(error.response));
    },
  },
};
</script>