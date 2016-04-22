module SessionsHelper
  def authenticate!
    redirect_to log_in_path unless current_user
  end

  def authenticate_home!
    redirect_to root_path unless current_user 
  end

  def current_user
    @current_user = User.find session[:user_id] if session[:user_id]
  end
end
