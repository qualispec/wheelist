class UsersController < ApplicationController

	def new
		@user = User.new
	end

	def create
		@user = User.new(params[:user])

		if @user.save
			sign_in @user
			flash[:success] = "Thanks for joining wheelist!"
			redirect_to @user
		else
			flash[:error] = "There was an error with your sign up information."
			render 'new'
		end
	end

	def show
		p params
		@user = User.find(params[:id])
	end




end