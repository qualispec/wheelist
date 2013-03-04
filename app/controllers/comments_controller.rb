class CommentsController < ApplicationController

  def create
    @comment = Comment.new(params[:comment])
    @comment.user_id = current_user.id

    if @comment.save
      UserMailer.new_comment_email(@comment).deliver
    else
      flash[:error] = "There was an error with your comment."
    end

    @comments = Comment.where(:image_id => params[:comment][:image_id]).all

    if request.xhr?       # if it's an AJAX request
      render '_update_comment', :layout => false
    else
      redirect_to image_path(params[:comment][:image_id])
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    image_id = @comment.image.id

    @comment.destroy

    @comments = Comment.where(:image_id => image_id).all

    if request.xhr?
      render '_update_comment', :layout => false
    else
    end
  end

end