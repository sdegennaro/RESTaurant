class AddForeignKeytoFoodOrder < ActiveRecord::Migration
  def change
    add_foreign_key :food_orders, :food_items

  end
end
