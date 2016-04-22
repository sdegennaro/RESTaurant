class FoodOrdersController < ApplicationController
  def new
     @food_order = FoodOrder.new
  end

def create
  newOrder = FoodOrder.create order_params
  redirect_to food_orders_path newOrder.id
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
  redirect_to food_orders_path food_order.id
end

def destroy
  FoodOrder.destroy params[:id]
  redirect_to food_orders_path
end

private

def order_params
  params.require(:food_order).permit(:seat_number, :food_item_id)
end
end
