# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!([
  { full_name: "jonathan wang", user_name: "jonathanwang", email: "jonathanwang@email.com", password: "password", },
  { full_name: "bill gates", user_name: "billgates", email: "billgates@email.com", password: "password" },
  
])

Category.create!([
  { name: "eat out", target_budget_amount: 100, occurence: "weekly", user_id: 1},
  { name: "groceries", target_budget_amount: 300, occurence: "bi-weekly", user_id: 1},
  { name: "drinks", target_budget_amount: 250, occurence: "monthly", user_id: 2},
  { name: "Healthy Eating", target_budget_amount: 275, occurence: "monthly", user_id: 2},

])

Item.create!([
  { name: "box of Chobani Yogurt", price: 19.99, category_id: 2, date_bought: "2020-11-01"},
  { name: "25 tv dinners", price: 69.99, category_id: 2, date_bought: "2020-11-01"},
  { name: "Diet Coke", price: 2.50, category_id: 3, date_bought: "2020-11-20"},
  { name: "Diet Coke", price: 2.50, category_id: 3, date_bought: "2020-11-21"},
  { name: "Diet Coke", price: 2.50, category_id: 3, date_bought: "2020-11-21"},
  { name: "Diet Coke", price: 2.50, category_id: 3, date_bought: "2020-11-21"},
  { name: "Diet Coke", price: 2.50, category_id: 3, date_bought: "2020-11-21"},
  { name: "Diet Coke", price: 2.50, category_id: 3, date_bought: "2020-11-22"},
  { name: "Diet Coke", price: 2.50, category_id: 3, date_bought: "2020-11-24"},
  { name: "Diet Coke", price: 2.50, category_id: 3, date_bought: "2020-11-26"},
  { name: "Diet Coke", price: 2.50, category_id: 3, date_bought: "2020-11-27"},
  { name: "Diet Coke", price: 2.50, category_id: 3, date_bought: "2020-11-29"},
  { name: "Diet Coke", price: 2.50, category_id: 3, date_bought: "2020-11-02"},
  { name: "Diet Coke", price: 2.50, category_id: 3, date_bought: "2020-11-05"},
  { name: "Diet Coke", price: 2.50, category_id: 3, date_bought: "2020-11-29"},
  { name: "Diet Coke", price: 2.50, category_id: 3, date_bought: "2020-11-04"},
  { name: "Diet Coke", price: 2.50, category_id: 3, date_bought: "2020-11-09"},
  { name: "Eggs", price: 4.50, category_id: 4, date_bought: "2020-12-24"},
  { name: "Milk", price: 9.00, category_id: 4, date_bought: "2020-12-12"},
  { name: "Steak meat", price: 300, category_id: 4, date_bought: "2020-12-05"},
  { name: "24 pack water bottle", price: 10.00, category_id: 4, date_bought: "2020-12-08"},
  { name: "24 pack water bottle", price: 10.00, category_id: 4, date_bought: "2020-12-08"},
  { name: "24 pack water bottle", price: 10.00, category_id: 4, date_bought: "2020-12-08"},
  { name: "bag of frozen veggies", price: 39.99, category_id: 4, date_bought: "2020-12-29"},
  { name: "Spices", price: 14.50, category_id: 4, date_bought: "2020-12-30"},
  { name: "20 pack of small chips", price: 19.99, category_id: 2, date_bought: "2020-11-02"},
  { name: "case of strawberries", price: 7.95, category_id: 2, date_bought: "2020-11-02"},
  { name: "3 bags of frozen chicken", price: 24.99, category_id: 2, date_bought: "2020-11-02"},
  { name: "bag of apples", price: 11.99, category_id: 2, date_bought: "2020-11-02"},
  { name: "string cheese", price: 8.99, category_id: 2, date_bought: "2020-11-02"},
  { name: "12 pack of Sprite", price: 5.99, category_id: 2, date_bought: "2020-11-02"},
  { name: "10 boxes of pasta", price: 29.99, category_id: 2, date_bought: "2020-11-02"},
  { name: "bluberries", price: 5.25, category_id: 2, date_bought: "2020-11-08"},
  { name: "bag of potatoes", price: 11.99, category_id: 2, date_bought: "2020-11-09"},
  { name: "bag of potatoes", price: 11.99, category_id: 2, date_bought: "2020-11-12"},
  { name: "turkey", price: 40.99, category_id: 2, date_bought: "2020-11-15"},
  { name: "marshmellows", price: 3.99, category_id: 2, date_bought: "2020-11-19"},
  { name: "carrots", price: 4.99, category_id: 2, date_bought: "2020-11-22"},
  { name: "cheese squares", price: 3.99, category_id: 2, date_bought: "2020-11-21"},
  { name: "bag of sugar", price: 7.99, category_id: 2, date_bought: "2020-11-21"},

])

Type.create!([
  { name: "breakfast"},
  { name: "dinner"},
  { name: "drinks"},
  { name: "Groceries"},
  
])

ItemType.create!([
  {type_id: 1, item_id: 1},
  {type_id: 2, item_id: 2},
  {type_id: 3, item_id: 3},
  {type_id: 3, item_id: 4},
  {type_id: 3, item_id: 5},
  {type_id: 3, item_id: 6},
  {type_id: 3, item_id: 7},
  {type_id: 3, item_id: 8},
  {type_id: 3, item_id: 9},
  {type_id: 3, item_id: 10},
  {type_id: 3, item_id: 11},
  {type_id: 3, item_id: 12},
  {type_id: 3, item_id: 13},
  {type_id: 3, item_id: 14},
  {type_id: 3, item_id: 15},
  {type_id: 3, item_id: 16},
  {type_id: 3, item_id: 17},
  {type_id: 2, item_id: 18},
  {type_id: 2, item_id: 19},
  {type_id: 2, item_id: 20},
  {type_id: 2, item_id: 21},
  {type_id: 2, item_id: 22},
  {type_id: 2, item_id: 23},
  {type_id: 2, item_id: 24},
  {type_id: 2, item_id: 25},
  {type_id: 4, item_id: 26},
  {type_id: 4, item_id: 27},
  {type_id: 4, item_id: 28},
  {type_id: 4, item_id: 29},
  {type_id: 4, item_id: 30},
  {type_id: 4, item_id: 31},
  {type_id: 4, item_id: 32},
  {type_id: 4, item_id: 33},
  {type_id: 4, item_id: 34},
  {type_id: 4, item_id: 35},
  {type_id: 4, item_id: 36},
  {type_id: 4, item_id: 37},
  {type_id: 4, item_id: 38},
  {type_id: 4, item_id: 39},
  {type_id: 4, item_id: 40},

])