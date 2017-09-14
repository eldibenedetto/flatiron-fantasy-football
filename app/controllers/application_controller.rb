class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_user

  def welcome
    @user = User.new
  end

  def current_user
    User.find(session[:user_id])
  end

  def require_login
    unless session.include? :user_id
      redirect_to welcome_path
    end
  end

end
