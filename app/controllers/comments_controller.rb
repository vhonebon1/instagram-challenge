class CommentsController < ApplicationController
  def new
    session[:post_id] = params[:post_id]
    session[:user_id] = params[:user_id]
    @comment = Comment.new
    render 'new'
  end

  def create
    @user = User.find(session[:user_id])
    @post = Post.find(session[:post_id])
    @post.comments.create(comment_params)
    redirect_to @user
  end

  private

  def comment_params
    params.require(:comment).permit(:comment, :post)
  end
end
