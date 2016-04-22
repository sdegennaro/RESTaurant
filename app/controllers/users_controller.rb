class UsersController < ApplicationController
  # include SessionsHelper
  before_action :authenticate_home!, only: [:profile]

  def new
    @user = User.new
  end

  def create
    user = User.create user_params
    redirect_to log_in_path
  end

  def log_in

  end

  def profile
    @user = current_user

  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation, :is_admin)
  end

end
