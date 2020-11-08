class AddIntegerToTypes < ActiveRecord::Migration[6.0]
  def change
    add_column :types, :type_id, :integer
    add_column :types, :item_id, :integer
  end
end
