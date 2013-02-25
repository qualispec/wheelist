class CreateCartaggings < ActiveRecord::Migration
  def change
    create_table :cartaggings do |t|
      t.integer :user_id
      t.integer :image_id
      t.integer :car_id

      t.timestamps
    end
  end
end
