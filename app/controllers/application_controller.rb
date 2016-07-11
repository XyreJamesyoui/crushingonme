class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception
  helper_method :current_user
  
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  
  def activate_page
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
    @current_user.page_active = true
    @current_user.save
    redirect_to root_path
  end
end
