# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!([
  { full_name: "jonathan wang", user_name: "jonathanwang", email: "jonathanwang@gmail.com", password: "password", },
  { full_name: "sarah wong", user_name: "sarahwong", email: "sarahwong@example.com", password: "password" },
])

Category.create!([
  { name: "eat out", target_budget_amount: 100, occurence: "weekly", user_id: 1},
  { name: "groceries", target_budget_amount: 300, occurence: "bi-weekly", user_id: 1},
])

Item.create!([
  { name: "bluberries", price: 5, category_id: 1, date_bought: "2020-11-08"},
  { name: "bag of potatoes", price: 11.99, category_id: 2, date_bought: "2020-11-09"},
])

Type.create!([
  { name: "breakfast"},
  { name: "lunch"},
])

Item_types.create!([
  {type_id: 1, item_type: 1},
  {type_id: 2, item_type: 2},
])