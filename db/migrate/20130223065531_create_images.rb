class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :url
      t.string :caption
      t.string :user_id

      t.timestamps
    end
  end
end
