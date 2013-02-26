class WheelSizeOption < ActiveRecord::Base
  attr_accessible :wheel_model_id, :wheel_size_id

  belongs_to :wheel_model
  belongs_to :wheel_size

end