class FoodOrder < ActiveRecord::Base
  has_many :food_items
  belongs_to :table
end
