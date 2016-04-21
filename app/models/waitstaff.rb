class Waitstaff < ActiveRecord::Base
  has_many :customers
  has_many :food_orders
  has_many :food_items, through: :food_orders

end
