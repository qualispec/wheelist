class CreateCarModels < ActiveRecord::Migration
  def change
    create_table :car_models do |t|
    	t.string :model
    	t.integer :year
    	t.integer :car_mfg_id

      t.timestamps
    end
  end
end