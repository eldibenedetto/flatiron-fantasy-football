class UsersController < ApplicationController


  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to @user
    else
      redirect_to welcome_path
    end
  end

  def show
    @user = User.find(params[:id])
    @leagues = @user.leagues
    @teams = Team.where("user_id = '#{@user.id}'")
  end

private

  def user_params
    params.require(:user).permit(:username, :password, :email)
  end

end
