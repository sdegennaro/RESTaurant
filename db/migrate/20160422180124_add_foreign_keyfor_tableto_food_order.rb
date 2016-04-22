class AddForeignKeyforTabletoFoodOrder < ActiveRecord::Migration
  def change
    add_foreign_key :food_orders, :tables

  end
end
