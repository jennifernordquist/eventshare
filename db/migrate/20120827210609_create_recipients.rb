class CreateRecipients < ActiveRecord::Migration
  def change
    create_table :recipients do |t|
      t.string :name
      t.string :email
      t.integer :phone
      t.string :facebook_id
      t.string :rsvp

      t.timestamps
    end
  end
end
