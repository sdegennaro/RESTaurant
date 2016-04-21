class FoodOrdersController < ApplicationController
  def new
     @food_order = FoodOrder.new
  end
end
