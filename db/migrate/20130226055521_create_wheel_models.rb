class CreateWheelModels < ActiveRecord::Migration
  def change
    create_table :wheel_models do |t|
    	t.string :model
    	t.integer :wheel_mfg_id

      t.timestamps
    end
  end
end