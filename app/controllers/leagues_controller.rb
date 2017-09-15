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
          Team.create(user: user, name: "Added to #{@league.name} - Edit Team Name", league: @league)
        end
      redirect_to league_path(@league)
    else
      redirect_to new_league_path
    end
  end

  def show
    @league = League.find(params[:id])
    @teams = @league.teams
    @draft = @league.draft
    @comment = Comment.new
  end

  def edit
    @league = League.find(params[:id])
  end

  def update
    @league = League.find(params[:id])
    if @league.update(league_params)

      redirect_to league_path(@league)
    else
      redirect_to edit_league_path(@league)
    end
  end

  def destroy
    @league = League.find(params[:id])
    if @league.teams
      @league.teams.destroy_all
    end
    if @league.transactions
      @league.transactions.destroy_all
    end
    if @league.comments
      @league.comments.destroy_all
    end
    if @league.draft
      @league.draft.destroy
    end
    @league.destroy
    redirect_to user_path(current_user)
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
