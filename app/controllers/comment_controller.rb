class CommentController < ApplicationController
  def create
    comment = params[:comment].permit(:content,:post_id)
    @comment = Comment.create(comment)
    redirect_to :back,notice: 'コメントしました！'
  end
end
