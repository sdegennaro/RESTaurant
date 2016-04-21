class FoodItem < ActiveRecord::Base
  has_many :food_orders
  has_many :customers, through: :food_orders
end
