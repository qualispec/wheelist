class ChangeUserIdTypeInImageTable < ActiveRecord::Migration
  def up
    change_column :images, :user_id, :integer, limit: nil
  end

  def down
  end
end