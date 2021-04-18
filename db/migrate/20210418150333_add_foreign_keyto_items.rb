class AddForeignKeytoItems < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :items, :categories, on_delete: :cascade
  end
end
