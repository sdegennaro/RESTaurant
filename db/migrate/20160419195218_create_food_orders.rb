class CreateFoodOrders < ActiveRecord::Migration
  def change
    create_table :food_orders do |t|
      t.references :food_items
      t.references :customers
      t.timestamps null: false
    end
  end
end
