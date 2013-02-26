class WheelOffsetOption < ActiveRecord::Base
  attr_accessible :wheel_model_id, :wheel_offset_id

  belongs_to :wheel_model
  belongs_to :wheel_offset

end