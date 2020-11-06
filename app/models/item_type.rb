class ItemType < ApplicationRecord
  belongs_to :type
  belongs_to :item
end
