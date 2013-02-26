class WheelOffset < ActiveRecord::Base
  attr_accessible :offset

  has_many :wheel_offset_options
  has_many :wheel_models, through: :wheel_offset_options
  has_many :wheel_tags

end