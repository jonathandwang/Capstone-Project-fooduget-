class Type < ApplicationRecord
  has_many :items, through: :item_types
  has_many :item_types
end
