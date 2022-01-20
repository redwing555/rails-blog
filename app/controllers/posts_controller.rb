class PostsController < ApplicationController
  def show
    @user = User.find_by_id(params[:user_id])
    @post = @user.includes(:likes, :comments).find_by_id(params[:id])
  end

  def index
    @user = User.includes(:posts).find_by_id(params[:user_id])
  end

  def new
    @current = current_user
  end

  def create
    created_post = current_user.posts.build(post_params)

    respond_to do |format|
      format.html do
        if created_post.save
          redirect_to user_post_path(created_post.author_id, created_post.id), notice: 'Post created !'
        else
          render :new, alert: 'Post not created, please try again!'
        end
      end
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :text)
  end
end
