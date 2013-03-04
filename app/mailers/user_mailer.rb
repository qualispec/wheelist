class UserMailer < ActionMailer::Base
  default :from => "from@example.com"

  def welcome_email(user)
    @user = user
    @url = "http://example.com/login"
    mail(:to => user.email, :subject => "Welcome to My Awesome Site")
  end

  def new_comment_email(comment)
    @comment_user = comment.user
    @comment_body = comment.body
    @image_user = comment.image.user
    @url = image_url(comment.image)
    mail(:to => @image_user.email, :subject => "Someone commented on your image!")
  end

end
