class CarMfg < ActiveRecord::Base
  attr_accessible :mfg

  has_many :car_models
end