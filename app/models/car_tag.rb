class CarTag < ActiveRecord::Base
  attr_accessible :user_id, :image_id, :car_model_id, :car_color_id

  validates :image_id, presence: true

  belongs_to :user
  belongs_to :image
  belongs_to :car_model
  belongs_to :car_color

  # validates :car_model_id, presence: true
end