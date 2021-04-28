require 'rails_helper'

class Category
  def total_spent
    items.reduce(0) { |total, item| total + item.price }
  end
end

RSpec.describe Category, type: :model do
  describe '#totalspent' do
    it 'returns total after adding up items' do
      items = [2, 3, 9]
      result = Category.new.total_spent.items
      expect(result).to eq(14)
    end
  end
end
