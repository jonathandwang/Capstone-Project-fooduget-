<template>
<table class="table">
  <thead>
    <tr>
      <th scope="col">Name</th>
      <th scope="col">Price</th>
      <th scope="col">Category</th>
      <th scope="col">Date Bought</th>
    </tr>
  </thead>
  <tbody>
    <div class="items-index">
    <div v-for="item in items">
    <tr>
      <th scope="row"></th>
      <td>{{ item.name }}</td>
      <td>{{ item.price }}</td>
      <td>{{ item.category_name }}</td>
      <td>{{ item.date_bought }}</td>      
    </tr>
  </div>
    </div>
  </tbody>
</table>
                    
        <!-- <div class="items-index">
    <h1>All My Items</h1>  
    <div v-for="item in items">
      <h4>Item name: {{ item.name }}</h4>
      <p>Price: {{ item.price }}</p>
      <p>Category: {{ item.category_name }}</p>
      <p>Date Bought: {{ item.date_bought }}</p>
    </div>
    </div> -->
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
      console.log(response.data);
      this.items = response.data;
    });
  },
  methods: {},
};
</script> 