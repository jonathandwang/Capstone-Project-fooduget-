class Category < ApplicationRecord
  belongs_to :user
  has_many :items

  def total_spent
    items.reduce(0) { |total, item| total + item.price }
  end
end
