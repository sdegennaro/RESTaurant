class CustomersController < ApplicationController
  def index
    @customers = Customer.all
    @tables = Customer.uniq.pluck(:table_number)
  end

  def create
    newCustomer = Customer.create customer_params
    redirect_to customers_path
  end

  def new
    @customer = Customer.new
  end

  def edit
    @customer = Customer.find params[:id]
  end

  def show
    @customer = Customer.find params[:id]
  end

  def update
    customer = Customer.find params[:id]
    customer.update customer_params
    redirect_to customer_path customer.id
  end

  def destroy
    Customer.destroy params[:id]
    redirect_to customers_path
  end

  def make_customers
    Customer.makeCustomers Customer.party_size
  end

  private

  def customer_params
    params.require(:customer).permit(:table_number, :waitstaffs_id, :seat_number)
  end
end
