require 'rails_helper'

RSpec.describe Item, type: :model do
  describe 'associating models' do
    it 'should pass item belongs_to category' do
      expect(Item.reflect_on_association(:category).macro).to eq(:belongs_to)
    end
  end

  describe 'item validations' do
    it 'should not be valid if no category' do
      item = Item.new(name: 'apple', price: 3.00, category_id: nil, date_bought: '2021-04-28')
      expect(item).to be_invalid
    end
  end
end

