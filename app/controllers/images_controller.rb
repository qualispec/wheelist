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
		# @image.wheeltaggings.build

		@images = Image.all

	end

	def show
		@image = Image.find(params[:id])
	end

	def search

		@image = Image.new

		car_model_id = params[:image][:car_tags_attributes]["0"][:car_model_id]
		car_color_id = params[:image][:car_tags_attributes]["0"][:car_color_id]

	  @image.car_tags.build(car_model_id: car_model_id, car_color_id: car_color_id)

	  if car_model_id.present? && car_color_id.present?
	  	@images = Image.joins(:car_tags)
									 .where(car_tags: { car_model_id: car_model_id, 
									 										car_color_id: car_color_id })
									 .all
		elsif car_model_id.present?
			@images = Image.joins(:car_tags)
									 .where(car_tags: { car_model_id: car_model_id })
									 .all
		else
			@images = Image.joins(:car_tags)
									 .where(car_tags: { car_color_id: car_color_id })
									 .all
		end

		render 'index'
	end

end