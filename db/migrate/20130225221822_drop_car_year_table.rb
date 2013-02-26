class DropCarYearTable < ActiveRecord::Migration
  def up
  	drop_table :car_years
  end

  def down
  end
end
