class FoodItem < ActiveRecord::Base
  belongs_to :food_orders
  has_many :customers, through: :food_orders
end
