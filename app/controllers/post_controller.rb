class PostController < ApplicationController

  def index
    @post = Post.new
    @posts = Post.all
  end

  def create
    @post = Post.create(post_params)
    redirect_to post_index_path
  end

  def show
    @post = Post.find(params[:id])
    @comment = Comment.new
    @comments = Comment.where(post_id: @post.id)
  end

  def like
    @post = Post.find(params[:id])
    @post.increment(:like)
    @post.save
    redirect_to :back, notice: 'いいねしました！'
  end

  private
    def post_params
      params.require(:post).permit(:content, :like)
    end

end
