class AddTableIdtoFoodOrder < ActiveRecord::Migration
  def change
    add_column :food_orders, :table_id, :integer

  end
end
