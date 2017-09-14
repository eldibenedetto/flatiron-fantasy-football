class UsersController < ApplicationController

  before_action :require_login, only: :show

  def create
    @user = User.new(user_params)
    if params[:user][:password_confirmation] == params[:user][:password] && @user.save
      session[:user_id] = @user.id
      redirect_to @user
    else
      redirect_to welcome_path
    end
  end

  def show
    @user = User.find(params[:id])
    @leagues = @user.leagues
    @drafts = @user.drafts
    @teams = Team.where("user_id = '#{@user.id}'")
  end

private

  def user_params
    params.require(:user).permit(:username, :password)
  end

end
