class CreateWheelColorOptions < ActiveRecord::Migration
  def change
    create_table :wheel_color_options do |t|
    	t.integer :wheel_model_id
    	t.integer :wheel_color_id

      t.timestamps
    end
  end
end