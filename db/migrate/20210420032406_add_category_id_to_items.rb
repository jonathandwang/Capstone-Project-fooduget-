class AddCategoryIdToItems < ActiveRecord::Migration[6.0]
  def change
    remove_foreign_key :items, :categories
    add_foreign_key :items, :categories, dependent: :delete
  end
end
