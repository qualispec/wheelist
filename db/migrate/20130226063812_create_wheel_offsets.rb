class CreateWheelOffsets < ActiveRecord::Migration
  def change
    create_table :wheel_offsets do |t|
    	t.integer :offset

      t.timestamps
    end
  end
end