class AddYearToCarModel < ActiveRecord::Migration
  def change
  	add_column :car_models, :year, :integer
  end
end