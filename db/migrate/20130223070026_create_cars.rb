class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :mfg
      t.string :model
      t.integer :year
      t.string :official_color
      t.string :color

      t.timestamps
    end
  end
end
