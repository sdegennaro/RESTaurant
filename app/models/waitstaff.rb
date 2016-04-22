class Waitstaff < ActiveRecord::Base
  has_many :tables
  has_many :food_orders, through: :tables

end
