class CreateUsergroups < ActiveRecord::Migration
  def change
    create_table :usergroups do |t|
      t.string :
      t.timestamps null: false
    end
  end
end
