class CreateCarColors < ActiveRecord::Migration
  def change
    create_table :car_colors do |t|
    	t.string :color
    	t.integer :car_model_id

      t.timestamps
    end
  end
end