class CommentsController < ApplicationController

  def create
    @comment = Comment.new(params[:comment])
    @comment.user_id = current_user.id

    if @comment.save
      #do nothing
    else
      flash[:error] = "There was an error with your comment."
    end

    @comments = Comment.where(:image_id => params[:comment][:image_id]).all

    if request.xhr?       # if it's an AJAX request
      render '_update_comment', :layout => false
    else
      redirect image_path(params[:comment][:image_id])
    end
  end

end