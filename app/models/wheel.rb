class Wheel < ActiveRecord::Base
  attr_accessible :bolt_pattern, :color, :diameter, :mfg, :model, :offset, :width

  validates :mfg, presence: true
  validates :model, presence: true
  validates :diameter, inclusion: { in: 13..24 }
  validates :width, inclusion: { in: 6..12 }

  has_many :wheeltaggings
end