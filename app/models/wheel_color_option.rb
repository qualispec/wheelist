class WheelColorOption < ActiveRecord::Base
  attr_accessible :wheel_model_id, :wheel_color_id

  belongs_to :wheel_model
  belongs_to :wheel_color
end