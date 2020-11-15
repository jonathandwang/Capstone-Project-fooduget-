class Item < ApplicationRecord
  validates :price, presence: true, format: { with: /\A\d+(?:\.\d{2})?\z/ }, numericality: { greater_than: 0, less_than: 1000000 }

  belongs_to :category
  has_many :types, through: :item_types
  has_many :item_types
end
