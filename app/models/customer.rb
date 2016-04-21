class Customer < ActiveRecord::Base
  belongs_to :party
  has_many :food_orders
end
