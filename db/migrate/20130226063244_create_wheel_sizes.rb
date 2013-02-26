class CreateWheelSizes < ActiveRecord::Migration
  def change
    create_table :wheel_sizes do |t|
    	t.integer :diameter
    	t.float :width
    	
      t.timestamps
    end
  end
end