class CreateWheelMfgs < ActiveRecord::Migration
  def change
    create_table :wheel_mfgs do |t|
    	t.string :mfg

      t.timestamps
    end
  end
end