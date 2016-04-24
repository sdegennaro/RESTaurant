class WaitstaffsController < ApplicationController
  before_action :authenticate!

  def index
    @waitstaffs = Waitstaff.all
  end

  def create
    newStaff = Waitstaff.create staff_params
    redirect_to waitstaff_path
  end

  def new
    @waitstaff = Waitstaff.new
    @user = current_user

  end

  def edit
    @waitstaff = Waitstaff.find params[:id]
  end

  def show
    @waitstaff = Waitstaff.find params[:id]
    @tables =Table.where(waitstaff_id: params[:id])
  end

  def update
    waitstaff = Waitstaff.find params[:id]
    waitstaff.update staff_params
    redirect_to waitstaff_path waitstaff.id
  end

  def destroy
    Waitstaff.destroy params[:id]
    redirect_to waitstaffs_path
  end

  private

  def staff_params
    params.require(:waitstaff).permit(:name)
  end
end
