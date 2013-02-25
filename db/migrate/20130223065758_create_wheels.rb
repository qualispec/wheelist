class CreateWheels < ActiveRecord::Migration
  def change
    create_table :wheels do |t|
      t.string :mfg
      t.string :model
      t.integer :diameter
      t.float :width
      t.integer :offset
      t.string :bolt_pattern
      t.string :color

      t.timestamps
    end
  end
end
