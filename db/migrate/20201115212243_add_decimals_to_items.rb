class AddDecimalsToItems < ActiveRecord::Migration[6.0]
  def change
    change_column :items, :price, :decimal, precision: 8, scale: 2
  end
end
