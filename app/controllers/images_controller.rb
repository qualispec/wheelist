class ImagesController < ApplicationController

	def new
		@image = Image.new
		@image.cartaggings.build
		@image.wheeltaggings.build
	end

	def create
		@image = Image.new(params[:image])
		@image.user_id = current_user.id

		if @image.save
			redirect_to current_user
			# redirect_to user_images_path(current_user)
		else
			render 'new'
		end
	end

	def index
		@image = Image.new
		@image.cartaggings.build
		# @image.wheeltaggings.build

		@images = Image.all

	end

	def show
		@image = Image.find(params[:id])
	end

	def search

		@image = Image.new

		car_id = params[:image][:cartaggings_attributes]["0"][:car_id]

		@image.cartaggings.build(car_id: car_id)
		@images = Image.joins(:cartaggings).where('car_id = ?', car_id).all

		render 'index'
	end

end