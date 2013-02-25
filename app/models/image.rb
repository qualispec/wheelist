class Image < ActiveRecord::Base
  attr_accessible :caption, :url, :cartaggings_attributes, 
  								:wheeltaggings_attributes

  validates :url, :format => { :with => /\.(jpg|JPG|png|PNG|bmp|BMP)$/ }
  # validates :caption, presence: true

  belongs_to :user
  has_many :wheeltaggings
  has_many :cartaggings
  has_many :wheels, through: :wheeltaggings
  has_many :cars, 	through: :cartaggings

	accepts_nested_attributes_for :wheeltaggings
	accepts_nested_attributes_for :cartaggings

end