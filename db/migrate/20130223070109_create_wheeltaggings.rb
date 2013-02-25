class CreateWheeltaggings < ActiveRecord::Migration
  def change
    create_table :wheeltaggings do |t|
      t.integer :user_id
      t.integer :image_id
      t.integer :wheel_id

      t.timestamps
    end
  end
end
