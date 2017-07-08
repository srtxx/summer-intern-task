class PostController < ApplicationController

  def index
    @post = Post.new
    @posts = Post.all
  end

  def create
    post = params[:post].permit(:content,:like)
    @post = Post.create(post)
    redirect_to post_index_path
  end

  def show
    @post = Post.find(params[:id])
  end

  def like
    @post = Post.find(params[:id])
    @post.increment(:like,1)
    @post.save
    redirect_to :back, notice: 'いいねしました！'
  end

end
