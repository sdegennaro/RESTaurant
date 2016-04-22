class AddColumntoFoodOrderforForeignKey < ActiveRecord::Migration
  def change
    add_column :food_orders, :food_item_id, :integer

  end
end
