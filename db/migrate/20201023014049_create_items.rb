class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name
      t.integer :price
      t.integer :category_id
      t.date :date_bought

      t.timestamps
    end
  end
end
