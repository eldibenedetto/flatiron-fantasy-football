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
      redirect_to league_draft_path(@league, @draft)
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
    session[:user_turn] = 1
    # session[:round_number] = 1
  end

  def end_draft
    session.delete :user_turn
    session.delete :round_number
    Player.update_all(available: true)
  end

  private

  def draft_params
    params.require(:draft).permit(:draft_time)
  end

end
