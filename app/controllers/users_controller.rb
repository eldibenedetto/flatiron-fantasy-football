class UsersController < ApplicationController

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to @user
    else
      redirect_to welcome_path
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:username, :password, :email)
  end

end
