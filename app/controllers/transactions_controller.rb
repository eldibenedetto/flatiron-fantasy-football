class TransactionsController < ApplicationController

  def new
    @transaction = Transaction.new
    @team = Team.find(params[:team_id])
    @league = @team.league
  end

  def create
    session[:user_turn] += 1
    @transaction = Transaction.new(transaction_params)
    @transaction.team=(Team.find(params[:team_id]))
    @player= Player.find(params[:transaction][:player_id])
    @player.available=false
    byebug
  end

  private

  def transaction_params
    params.require(:transaction).permit(:player_id)
  end
end
