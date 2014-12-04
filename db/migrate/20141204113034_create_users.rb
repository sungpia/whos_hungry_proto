class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :facebook_id
      t.string :username
      t.string :os_type
      t.string :push_id
      t.string :picture
      t.string :location_x
      t.string :location_y
      t.timestamps null: false
    end
  end
end
