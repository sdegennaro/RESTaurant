class FoodItemsController < ApplicationController

  def index
    @food_items = FoodItem.all
  end

  def create
    newFood = FoodItem.create food_params
    redirect_to food_item_path newFood.id
  end

  def new
    @food_item = FoodItem.new
  end

  def edit
    @food_item = FoodItem.find params[:id]
  end

  def show
    @food_item = FoodItem.find params[:id]
  end

  def update
    food_item = FoodItem.find params[:id]
    food_item.update food_params
    redirect_to food_item_path food_item.id
  end

  def destroy
    FoodItem.destroy params[:id]
    redirect_to food_item_path
  end

  private

  def food_params
    params.require(:food_item).permit(:name, :category, :price)
  end
end
