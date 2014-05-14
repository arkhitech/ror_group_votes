class CreateLogos < ActiveRecord::Migration
  def change
    create_table :logos do |t|
      t.string :url
      t.references :user_group, index: true
      t.timestamps
    end
  end
end
