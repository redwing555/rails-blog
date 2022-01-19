class PostsController < ApplicationController

  def show
    @user = User.find_by_id(params[:id])
    @post = Post.find_by_id(params[:id])
    # @post = @user.posts.find_by_id(params[:id])
  end
  
  def index
    @user = User.find(params[:user_id])
    @posts = @user.posts.order(created_at: :desc)
  end

  
end
