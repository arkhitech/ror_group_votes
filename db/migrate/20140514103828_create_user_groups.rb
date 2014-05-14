class CreateUserGroups < ActiveRecord::Migration
  def change
    create_table :user_groups do |t|
      t.string :name
      t.references :user, index: true
      t.timestamps
    end
  end
end
