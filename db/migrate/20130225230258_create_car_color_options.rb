class CreateCarColorOptions < ActiveRecord::Migration
  def change
    create_table :car_color_options do |t|
    	t.integer :car_model_id
    	t.integer :car_color_id

      t.timestamps
    end
  end
end
