class ChangePriceToInteger < ActiveRecord::Migration[6.0]
  def change
    change_column :items, :price, :integer
  end
end
