class LeaguesController < ApplicationController

  def new
    @league = League.new
  end

  def create
    @league = League.new(league_params)
    @league.owner= current_user

    if validates_users(params[:users].values) && @league.save
      @team = Team.new(team_params)
      @team.user= current_user
      @team.league= @league
      @team.save
      params[:users].values.each do |username|
          user = User.find_by(username: username)
          Team.create(user: user, name: "Login to Change Team Name", league: @league)
        end
      redirect_to league_path(@league)
    else
      redirect_to new_league_path
    end
  end

  def show
    @league = League.find(params[:id])
    @teams = @league.teams
  end



  private

  def league_params
    params.require(:league).permit(:name)
  end

  def team_params
    params.require(:team).permit(:name)
  end

  def validates_users(array)
    empty_array = []
    array.each do |username|
      empty_array << User.find_by(username: username)
    end
    empty_array.exclude?(nil)
  end

end
