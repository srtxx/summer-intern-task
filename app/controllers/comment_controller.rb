class CommentController < ApplicationController
  def create
    @comment = Comment.create(comment_params)
    redirect_to :back,notice: 'コメントしました！'
  end

  private
  def comment_params
    params.require(:comment).permit(:content, :post_id)
  end

end
