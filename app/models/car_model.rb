class CarModel < ActiveRecord::Base
  attr_accessible :model, :year

  belongs_to :car_mfg
  has_many :car_color_options
  has_many :car_colors, through: :car_color_options
  has_many :car_tags

end