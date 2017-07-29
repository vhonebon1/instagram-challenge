class PostsController < ApplicationController
  def new
    session[:user_id] = params[:user_id]
    @post = Post.new
  end

  def create
    @user = User.find(session[:user_id])
    @user.posts.create(post_params)
    redirect_to @user
  end

  def index
    @posts = Post.all
  end

  private

  def post_params
    params.require(:post).permit(:link)
  end
end
