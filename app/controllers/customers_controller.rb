class CustomersController < ApplicationController
  def index
    @customers = Customer.all
  end

  def create
    newCustomer = Customer.create customer_params
    redirect_to customer_path newCustomer.id
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
    redirect_to customer_path
  end

  def make_customers
    Customer.makeCustomers Customer.party_size
  end

  private

  def customer_params
    params.require(:customer).permit(:table_number, :party_size)
  end
end
