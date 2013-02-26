class Image < ActiveRecord::Base
  attr_accessible :caption, :url, :car_tags_attributes, :wheel_tags_attributes

  validates :url, :format => { :with => /\.(jpg|JPG|png|PNG|bmp|BMP)$/ }
  # validates :caption, presence: true

  belongs_to :user
  has_many :image_likes
  has_many :car_tags
  has_many :wheel_tags
  # has_many :wheels, through: :wheeltaggings
  # has_many :cars, 	through: :cartaggings

  accepts_nested_attributes_for :car_tags
  accepts_nested_attributes_for :wheel_tags

end