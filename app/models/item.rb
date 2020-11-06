class Item < ApplicationRecord
  belongs_to :category
  has_many :types, through: :item_types
  has_many :item_types
end
