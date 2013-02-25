class Cartagging < ActiveRecord::Base
  attr_accessible :car_id, :image_id, :user_id

  belongs_to :user
  belongs_to :image
  belongs_to :car

end