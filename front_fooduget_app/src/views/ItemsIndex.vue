<template>
  <div class="items-index">
    <h1>All My Items</h1>
    <div v-for="item in items">
      <h4>Item name: {{ item.name }}</h4>
      <p>Price: {{ item.price }}</p>
      <p>Category Name: {{ category.name }}</p>
      <p>Date Bought: {{ item.date_bought }}</p>
    </div>
  </div>
</template>

<script>
import axios from "axios";

export default {
  data: function() {
    return {
      items: [],
    };
  },
  created: function() {
    axios.get("/api/items").then(response => {
      console.log("items index", response);
      this.items = response.data;
    });
  },
  methods: {},
};
</script> 