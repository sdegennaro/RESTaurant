class AddSeatNumberColumntoFoodOrder < ActiveRecord::Migration
  def change
    add_column :food_orders, :seat_number, :integer

  end
end
