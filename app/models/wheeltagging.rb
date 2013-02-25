class Wheeltagging < ActiveRecord::Base
  attr_accessible :image_id, :user_id, :wheel_id

  belongs_to :user
  belongs_to :image
  belongs_to :wheel

end