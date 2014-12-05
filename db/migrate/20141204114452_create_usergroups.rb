class CreateUsergroups < ActiveRecord::Migration
  def self.up
    create_table :usergroups do |t|
      t.timestamps null: false
      t.integer :user_id
      t.integer :group_id
    end
    add_index(:usergroups, :user_id)
    add_index(:usergroups, :group_id)
  end

  def self.down
    drop_table :usergroups
  end
end
