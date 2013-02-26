class WheelModel < ActiveRecord::Base
  attr_accessible :model

  belongs_to :wheel_mfg

  has_many :wheel_size_options
  has_many :wheel_sizes, through: :wheel_size_options
	 
  has_many :wheel_offset_options
  has_many :wheel_offsets, through: :wheel_offset_options

  has_many :wheel_color_options
  has_many :wheel_colors, through: :wheel_color_options

  has_many :wheel_tags

end