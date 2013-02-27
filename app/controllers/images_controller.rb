class ImagesController < ApplicationController

	def new
		@image = Image.new
		@image.car_tags.build
		@image.wheel_tags.build
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
		@image.car_tags.build
		@image.wheel_tags.build

		@images = Image.all

	end

	def show
		@image = Image.find(params[:id])
	end

	def search

		@image = Image.new

		car_params   = params[:image][:car_tags_attributes]["0"]
		wheel_params = params[:image][:wheel_tags_attributes]["0"]

	  @image.car_tags.build(car_model_id: car_params[:car_model_id], 
	  											car_color_id: car_params[:car_color_id])
	  @image.wheel_tags.build(wheel_model_id: wheel_params[:wheel_model_id], 
	  												wheel_size_id: wheel_params[:wheel_size_id],
	  												wheel_offset_id: wheel_params[:wheel_offset_id], 
	  												wheel_color_id: wheel_params[:wheel_color_id])

		@images = Image

		car_params.each do |key, value|
			if value.present?
				@images = @images.joins(:car_tags)
												 .where(car_tags: { key => value } )
			end
		end

		wheel_params.each do |key, value|
			if value.present?
				@images = @images.joins(:wheel_tags)
												 .where(wheel_tags: { key => value} )
			end
		end

		@images = @images.all


		if request.xhr?				# if it's an AJAX request
			render '_search', :layout => false
		else
			render 'index'
		end

	end

	def like
		image = Image.find(params[:id])
		image.image_likes.create!(:user_id => current_user.id)

		@image = Image.new
		@images = Image.all

		render 'index'

	end

end