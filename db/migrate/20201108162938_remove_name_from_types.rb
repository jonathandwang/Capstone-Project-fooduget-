class RemoveNameFromTypes < ActiveRecord::Migration[6.0]
  def change
    remove_column :types, :name, :string
  end
end
