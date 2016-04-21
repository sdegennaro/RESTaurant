class FoodOrder < ActiveRecord::Base
  has_many :food_items
end
