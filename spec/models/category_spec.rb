require 'rails_helper'

RSpec.describe Category, type: :model do
  it 'should be able to calculate total spent' do
    user = User.create!(user_name: 'jonathandwang', email: 'jonathan@email.com', password: 'jw', password_confirmation: 'jw')
    category = Category.create!(name: 'breakfast', target_budget_amount: 500, occurence: 'monthly', user_id: user.id)
    Item.create!(name: 'blueberries', price: 3.15, category_id: category.id, date_bought: '2021-02-28')
    Item.create!(name: 'bread', price: 12.22, category_id: category.id, date_bought: '2021-03-02')
    expect(category.total_spent).to eq(15.37)
  end
end
