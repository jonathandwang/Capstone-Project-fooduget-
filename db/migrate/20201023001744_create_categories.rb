class CreateCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :categories do |t|
      t.string :name
      t.integer :target_budget_amount
      t.string :occurence
      t.integer :user_id

      t.timestamps
    end
  end
end
