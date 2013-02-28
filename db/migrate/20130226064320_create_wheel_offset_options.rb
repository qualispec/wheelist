class CreateWheelOffsetOptions < ActiveRecord::Migration
  def change
    create_table :wheel_offset_options do |t|
    	t.integer :wheel_model_id
    	t.integer :wheel_offset_id

      t.timestamps
    end
  end
end