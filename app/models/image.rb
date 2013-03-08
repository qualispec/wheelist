class Image < ActiveRecord::Base
  attr_accessible :user_id, :caption, :url, :car_tags_attributes, :wheel_tags_attributes

  validates :url, :format => { :with => /\.(jpg|JPG|png|PNG|bmp|BMP)$/ }
  # validates :caption, presence: true

  belongs_to :user
  has_many :image_likes
  has_many :comments
  has_many :car_tags
  has_many :wheel_tags

  validates :url, presence: true

  accepts_nested_attributes_for :car_tags
  accepts_nested_attributes_for :wheel_tags

  scope :by_most_recent, order('id DESC')
  scope :by_most_popular, order('image_likes_count DESC, id DESC')
end