class CreateItemTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :item_types do |t|
      t.integer :type_id
      t.integer :item_id

      t.timestamps
    end
  end
end
