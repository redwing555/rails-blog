class CommentsController < ApplicationController
    def new
        @comment = Comment.new
    end

    def create
        @comment = Comment.new(comment_params)
        @comment.post_id = params[:post_id]
        @comment.author_id = current_user.id
        if @comment.save
            flash[:notice] = 'Comment created!'
            redirect_to user_posts_path(current_user)
        else
            render :new
        end
    end

    private

    def comment_params
        params.permit(:exit)
    end
end
