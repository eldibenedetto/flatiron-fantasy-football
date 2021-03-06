class SessionsController < ApplicationController

  def login
    @user = User.find_by(username: login_params[:username])
    if @user && @user.authenticate(login_params[:password])
      session[:user_id] = @user.id
      redirect_to @user
    else
      redirect_to welcome_path
    end
  end

  def logout
    session.delete :user_id
    redirect_to welcome_path
  end

  private

  def login_params
    params.require(:user).permit(:username, :password)
  end

end
