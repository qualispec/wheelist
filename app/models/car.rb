class Car < ActiveRecord::Base
  attr_accessible :color, :mfg, :model, :official_color, :year

  has_many :cartaggings

end