class TeamsController < ApplicationController

  def show
    @team = Team.find(params[:id])
    @league = @team.league
    @user = @team.user
  end

  def edit
    @team = Team.find(params[:id])
    @league = @team.league
  end

  def update
    @team = Team.find(params[:id])
    if @team.update(team_params)
      redirect_to league_team_path(@team.league, @team)
    else
      redirect_to edit_league_team_path(@team)
    end
  end

  private

  def team_params
    params.require(:team).permit(:name)
  end



end
