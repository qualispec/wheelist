class WheelTag < ActiveRecord::Base
  attr_accessible :user_id, :image_id, :wheel_model_id, :wheel_size_id, 
  								:wheel_offset_id, :wheel_color_id

  belongs_to :user
  belongs_to :image
  belongs_to :wheel_model
  belongs_to :wheel_size
  belongs_to :wheel_offset
  belongs_to :wheel_color

  # validates :wheel_model_id, presence: true
  # validates :wheel_size_id,  presence: true
end