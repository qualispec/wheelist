class RemoveAuthColsFromUser < ActiveRecord::Migration
  def up
    remove_column :users, :email
    remove_column :users, :password_digest
    remove_column :users, :remember_token
  end

  def down
  end
end
