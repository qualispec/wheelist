class ImageLike < ActiveRecord::Base
	attr_accessible :image_id, :user_id

	belongs_to :image, counter_cache: true
	belongs_to :user

  # validates_uniqueness_of :image_id, :scope => :user_id
end