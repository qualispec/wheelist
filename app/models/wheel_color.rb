class WheelColor < ActiveRecord::Base
  attr_accessible :paint_name, :color

  has_many :wheel_color_options
  has_many :wheel_models, through: :wheel_color_options
  has_many :wheel_tags

end