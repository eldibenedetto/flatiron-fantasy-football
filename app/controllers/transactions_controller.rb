class TransactionsController < ApplicationController

  def new
    @transaction = Transaction.new
    @team = Team.find(params[:team_id])
    @league = @team.league
  end

  def create
    @league= League.find(params[:league_id])
    @player= Player.find(params[:transaction][:player_id])
    @player.update(available: false)
    @transaction = Transaction.new(player: @player, team: Team.find(params[:team_id]))
    @transaction.save
    if session[:user_turn] < 5
      session[:user_turn] += 1
    else
      session[:user_turn] = 1
      # session[:round_number]+=1
    end
    # if session[:round_number] <=2
    if @league.teams[session[:user_turn]-1].players.count < 2
      redirect_to new_league_team_transaction_path(@league,@league.teams[session[:user_turn]-1])
    else
      redirect_to end_draft_path(@league,@league.draft)
    end
  end


end
