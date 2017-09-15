class DraftsController < ApplicationController

  def new
    @draft = Draft.new
    @league = League.find(params[:league_id])
  end

  def create
    @draft = Draft.new(draft_params)
    @league = League.find(params[:league_id])
    @draft.league = @league
    if @draft.save
      redirect_to @league
    else
      redirect_to new_league_draft_path
    end
  end

  def show
    @draft= Draft.find(params[:id])
    @league = League.find(params[:league_id])
  end

  def start_draft
    @draft= Draft.find(params[:id])
    @league = @draft.league
    session[:draft_order] = @draft.draft_order(@league)
    @first_team = Team.find(session[:draft_order][0])
    session[:user_turn] = 0
    session[:round_number] = 1
    if @league.transactions
      @league.teams.each do |team|
        team.transactions.destroy_all
      end
    Player.update_all(available: true)
    end
  end

  def end_draft
    session.delete :user_turn
    session.delete :round_number
    Player.update_all(available: true)
    @draft= Draft.find(params[:id])
    @league= @draft.league
    @draft.update(closed: true)
  end

  private

  def draft_params
    params.require(:draft).permit(:draft_time)
  end

end
