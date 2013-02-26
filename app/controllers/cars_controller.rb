class CarsController < ApplicationController

	def index

		# @cars = Car.all

		@car_mfgs = CarMfg.all
		@car_models = CarModel.all

		respond_to do |format|
			format.json { render :json => @cars_mfgs }
			format.json { render :json => @car_models }
		end
	end

end