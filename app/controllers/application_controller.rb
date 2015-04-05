class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_user

  protected

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def authenticate
    unless current_user
      flash[:notice] = "You must login to view or send messages"
      redirect_to login_path
    end
  end

end
