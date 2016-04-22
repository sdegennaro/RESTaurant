class FoodItem < ActiveRecord::Base
  has_many :food_orders
  has_many :tables, through: :food_orders
end
