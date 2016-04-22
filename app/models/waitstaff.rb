class Waitstaff < ActiveRecord::Base
  has_many :customers
  has_many :food_orders, through: :customers

end
