class ImageLike < ActiveRecord::Base
	attr_accessible :image_id, :user_id

	belongs_to :image, counter_cache: true
	belongs_to :user
end