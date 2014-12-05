class CreateGroups < ActiveRecord::Migration
  def self.up
    create_table :groups do |t|
      t.string :admin_user
      t.integer :user_id
      t.timestamps null: false
    end
    add_index(:groups, :user_id)
  end

  def self.down
    drop_table :groups
  end
end
