class WheelMfg < ActiveRecord::Base
  attr_accessible :mfg

  has_many :wheel_models
end