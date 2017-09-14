class TransactionsController < ApplicationController

  before_action :require_login

  def new
    @transaction = Transaction.new
    @team = Team.find(params[:team_id])
    @league = @team.league
    @position = session[:position]
  end

  def create
    session.delete :position
    @league= League.find(params[:league_id])
    @player= Player.find(params[:transaction][:player_id])
    @player.update(available: false)
    @transaction = Transaction.new(player: @player, team: Team.find(params[:team_id]))
    @transaction.save
    if session[:user_turn] < 4
      session[:user_turn] += 1
    else
      session[:draft_order] = session[:draft_order].reverse
      session[:user_turn] = 0
      session[:round_number]+=1
    end
    number = session[:user_turn]
    @team = Team.find(session[:draft_order][number])
    if session[:round_number] <=2
      redirect_to league_team_position_select_path(@league, @team)
    else
      redirect_to end_draft_path(@league,@league.draft)
    end
  end


end
