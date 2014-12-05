class CreateVotes < ActiveRecord::Migration
  def self.up
    create_table :votes do |t|
      t.integer :group_id
      t.string :vote_type
      t.datetime :expiration_time
      t.integer :expiration_time_number
      t.datetime :expected_time
      t.string :winner_restaurant_id
      t.string :winner_restaurant_name
      t.string :winner_restaurant_picture
      t.float :winner_restaurant_location_x
      t.float :winner_restaurant_location_y
      t.timestamps null: false
    end
  end

  def self.down
    drop_table(:votes)
  end
end
