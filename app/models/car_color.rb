class CarColor < ActiveRecord::Base
	attr_accessible :paint_name, :color

	has_many :car_color_options
	has_many :car_models, through: :car_color_options
	has_many :car_tags
end