class LikesController < ApplicationController
  def new
    session[:post_id] = params[:post_id]
    session[:user_id] = params[:user_id]
    @like = Like.new
    render 'new'
  end
end
