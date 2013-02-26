class CreateWheelColors < ActiveRecord::Migration
  def change
    create_table :wheel_colors do |t|
    	t.string :paint_name
    	t.string :color

      t.timestamps
    end
  end
end