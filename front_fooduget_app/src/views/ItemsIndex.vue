<template>
<table class="table">
    <thead class="thead-dark">
    <tr>
      <th class="th-lg">Name</th>
      <th class="th-lg">Price</th>
      <th class="th-lg">Category</th>
      <th class="th-lg">Date Bought</th>
    </tr>
  </thead>
  <tbody>
    <tr v-for="item in items" id="itemColor">
        <td> {{item.name}}</td>
        <td> ${{item.price}}</td>
        <td> {{item.category_name}}</td>
        <td> {{item.date_bought}}</td>
     </tr>
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

<style>
#itemColor{
    font:  bolder;
    color: black;
}

</style>

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