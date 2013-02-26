class WheelSize < ActiveRecord::Base
  attr_accessible :diameter, :width

  has_many :wheel_size_options
  has_many :wheel_models, through: :wheel_size_options
  has_many :wheel_tags	

end