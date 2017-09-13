class PlayersController < ApplicationController

  def position_select
    @league = League.find(params[:league_id])
    @team = Team.find(params[:team_id])
  end

  def position_submit
    @league = League.find(params[:league_id])
    @team = Team.find(params[:team_id])
    session[:position] = params[:position]
    redirect_to new_league_team_transaction_path(@league,@team)
  end


end
