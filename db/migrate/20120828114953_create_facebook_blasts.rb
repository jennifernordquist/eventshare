class CreateFacebookBlasts < ActiveRecord::Migration
  def change
    create_table :facebook_blasts do |t|
      t.boolean :done
      t.string :contents
      t.datetime :schedule
      t.integer :group_id

      t.timestamps
    end
  end
end
