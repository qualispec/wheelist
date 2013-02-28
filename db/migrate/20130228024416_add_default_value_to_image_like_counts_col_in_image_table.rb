class AddDefaultValueToImageLikeCountsColInImageTable < ActiveRecord::Migration
  def change
    change_column :images, :image_likes_count, :integer, :default => 0
  end
end