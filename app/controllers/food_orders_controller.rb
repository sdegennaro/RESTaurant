class FoodOrdersController < ApplicationController
  before_action :authenticate!





def create
  newOrder = FoodOrder.create order_params
  redirect_to new_table_food_order_path
end

def new
  @food_order = FoodOrder.new
  @food_orders = FoodOrder.where(table_id: params[:table_id])
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
