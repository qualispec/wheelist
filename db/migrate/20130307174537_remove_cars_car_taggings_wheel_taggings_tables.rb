class RemoveCarsCarTaggingsWheelTaggingsTables < ActiveRecord::Migration
  def up
    drop_table :cars
    drop_table :cartaggings
    drop_table :wheeltaggings
  end

  def down
    add_table :cars
    add_table :cartaggings
    add_table :wheeltaggings
  end
end
