class LikesController < ApplicationController
  def new
    session[:post_id] = params[:post_id]
    session[:user_id] = params[:user_id]
    @like = Like.new
  end

  def create
    @user = User.find(session[:user_id])
    @post = Post.find(session[:post_id])
    @post.likes.create(params[:post_id])
    redirect_to @user
  end

  def index
    @likes = Like.all
  end

  private

  def like_params
    params.require(:post_id)
  end

end
