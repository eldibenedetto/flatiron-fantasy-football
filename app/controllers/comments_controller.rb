class CommentsController < ApplicationController

  def create
    @comment = Comment.new(comment_params)
    @league = League.find(params[:league_id])
    if @comment.update(user: current_user,league: @league)
      redirect_to league_path(@league)
    else
      redirect_to league_path(@league)
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end

end
