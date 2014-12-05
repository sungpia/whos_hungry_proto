class CreateChoices < ActiveRecord::Migration
  def self.up
    create_table :choices do |t|
      t.integer :vote_id
      t.string :restaurant_id
      t.string :restaurant_name
      t.string :restaurant_picture
      t.float :restaurant_location_x
      t.float :restaurant_location_y
      t.integer :count, :default => 0
      t.timestamps null: false
    end
  end

  def self.down
    drop_table(:choices)
  end
end
