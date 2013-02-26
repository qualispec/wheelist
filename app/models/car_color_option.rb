class CarColorOption < ActiveRecord::Base
  attr_accessible :car_model_id, :car_color_id

  belongs_to :car_model
  belongs_to :car_color

end