class PlayersController < ApplicationController

  def position_select
    @league = League.find(params[:league_id])
    @team = Team.find(params[:team_id])
  end

  def position_submit
    @league = League.find(params[:league_id])
    @team = Team.find(params[:team_id])
    if params[:position] != nil && params[:position] != ""
      session[:position] = params[:position]
      redirect_to new_league_team_transaction_path(@league,@team)
    else
        redirect_to league_team_position_select_path(@league,@team)
    end
  end


end
