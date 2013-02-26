class CreateCarTags < ActiveRecord::Migration
  def change
    create_table :car_tags do |t|
    	t.integer :user_id
    	t.integer :image_id
    	t.integer :car_mfg_id
    	t.integer :car_model_id
    	t.integer :car_color_id

      t.timestamps
    end
  end
end