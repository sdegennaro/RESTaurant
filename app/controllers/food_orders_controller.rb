class FoodOrdersController < ApplicationController
  before_action :authenticate!

  def index
    @tables = Table.all
  end

  def new
     @food_order = FoodOrder.new
     @tables = Table.all
  end

def create
  newOrder = FoodOrder.create order_params
  redirect_to table_food_orders_path 
end

def new
  @food_order = FoodOrder.new
end

def edit
  @food_order = FoodOrder.find params[:id]
end

def show
  @food_order = FoodOrder.find params[:id]
end

def update
  food_order = FoodOrder.find params[:id]
  food_order.update order_params
  redirect_to table_food_orders_path food_order.id
end

def destroy
  FoodOrder.destroy params[:id]
  redirect_to table_food_orders_path
end

private

def order_params
  params.require(:food_order).permit(:seat_number, :food_item_id, :table_id)
end
end
