class AddOptiontoForeignKeys < ActiveRecord::Migration
  def change
    remove_foreign_key :food_orders, :tables
    remove_foreign_key :food_orders, :food_items
    add_foreign_key :food_orders, :tables, on_delete: :cascade
    add_foreign_key :food_orders, :food_items, on_delete: :cascade


  end
end
