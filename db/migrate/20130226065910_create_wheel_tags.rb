class CreateWheelTags < ActiveRecord::Migration
  def change
    create_table :wheel_tags do |t|
    	t.integer :user_id
    	t.integer :image_id
    	t.integer :wheel_model_id
    	t.integer :wheel_size_id
    	t.integer :wheel_offset_id
    	t.integer :wheel_color_id

      t.timestamps
    end
  end
end