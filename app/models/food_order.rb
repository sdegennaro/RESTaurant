class FoodOrder < ActiveRecord::Base
  belongs_to :food_item
  belongs_to :table
end
