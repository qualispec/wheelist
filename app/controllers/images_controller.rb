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

	def update
		p params
		@image = Image.find(params[:id])

		if @image.update_attributes(params[:image])
			flash[:success] = "Update successful!"
		else
		end

		if request.xhr?				# if it's an AJAX request
			render '_wheel_tags', :layout => false
		else
			render image_path(@image)
		end
	end

	def index
		@image = Image.new
		@image.car_tags.build
		@image.wheel_tags.build

		# @images = Image.by_most_recent.all
		@images = Image.by_most_recent.page(params[:page]).per(18)
	end

	def show
		@image = Image.find(params[:id])

		@comment = Comment.new
		@comments = Comment.where(:image_id => params[:id]).all
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
												 # .by_most_popular
			end
		end

		wheel_params.each do |key, value|
			if value.present?
				@images = @images.joins(:wheel_tags)
												 .where(wheel_tags: { key => value} )
												 # .order('image_likes_count DESC')
												 # .order('id DESC')
			end
		end

		if params[:most_popular]
			# @images = @images.by_most_popular.all
			@images = @images.by_most_popular.page(1).per(18)
		else
			# @images = @images.order('id DESC').all
			@images = @images.order('id DESC').page(1).per(18)
		end

		if request.xhr?				# if it's an AJAX request
			render '_search', :layout => false
		else
			render 'index'
		end
	end

	def like
		image = Image.find(params[:id])

		if user_signed_in?
			image.image_likes.create!(:user_id => current_user.id)
		else
			flash[:error] = "Please sign in to Like an image!"
		end

		if request.xhr?
			render :json => image.reload.image_likes_count
		else
			@image = Image.new
			@images = Image.all
			render 'index'
		end
	end

	def unlike
		image = Image.find(params[:id])

		if image.image_likes.where(:user_id => current_user.id).present?
			image.image_likes.where(:user_id => current_user.id).first.destroy
		end
		
		if request.xhr?
			render :json => image.reload.image_likes_count
		else
			@image = Image.new
			@images = Image.all
			render 'index'
		end
	end

end