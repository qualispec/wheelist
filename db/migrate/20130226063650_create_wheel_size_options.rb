class CreateWheelSizeOptions < ActiveRecord::Migration
  def change
    create_table :wheel_size_options do |t|
    	t.integer :wheel_model_id
    	t.integer :wheel_size_id

      t.timestamps
    end
  end
end