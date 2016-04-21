class PartiesController < ApplicationController
  def index
    @parties = Party.all
  end

  def create
    newParty = Party.create party_params
    redirect_to party_path newParty.id
  end

  def new
    @party = Party.new
  end

  def edit
    @party = Party.find params[:id]
  end

  def show
    @party = Party.find params[:id]
  end

  def update
    party = Party.find params[:id]
    party.update party_params
    redirect_to party_path party.id
  end

  def destroy
    Party.destroy params[:id]
    redirect_to party_path
  end

  def make_customers
    Party.makeCustomers Party.party_size
  end

  private

  def party_params
    params.require(:party).permit(:table_number, :party_size)
  end
end
