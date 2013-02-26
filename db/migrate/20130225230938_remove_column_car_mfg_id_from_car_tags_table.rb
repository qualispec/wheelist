class RemoveColumnCarMfgIdFromCarTagsTable < ActiveRecord::Migration
  def up
  	remove_column :car_tags, :car_mfg_id
  end

  def down
  end
end