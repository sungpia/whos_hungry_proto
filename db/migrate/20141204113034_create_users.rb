class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :facebook_id # Unique Facebook id
      t.string :username # Firstname + Lastname
      t.string :os_type # IOS / ANDROID
      t.string :push_id # push_id from devie
      t.string :picture # URL of facebook pictures
      t.float :location_x # current user location_x
      t.float :location_y # current user location_y
      t.integer :group_id
      t.timestamps null: false
    end
    add_index(:users, :group_id)
  end

  def self.down
    drop_table :users
  end
end
