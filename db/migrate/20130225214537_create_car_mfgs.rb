class CreateCarMfgs < ActiveRecord::Migration
  def change
    create_table :car_mfgs do |t|
    	t.string :mfg

      t.timestamps
    end
  end
end