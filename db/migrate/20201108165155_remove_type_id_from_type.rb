class RemoveTypeIdFromType < ActiveRecord::Migration[6.0]
  def change
    remove_column :types, :type_id, :integer 
    remove_column :types, :item_id, :integer 
    add_column :types, :name, :string
  end
end
