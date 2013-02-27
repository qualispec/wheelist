class AddImageLikesCountColumnToImage < ActiveRecord::Migration
  def change
    add_column :images, :image_likes_count, :integer
  end
end