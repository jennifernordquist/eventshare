class CreateSettings < ActiveRecord::Migration
  def change
    create_table :settings do |t|
      t.boolean :require_email
      t.boolean :require_phone
      t.boolean :require_rsvp
      t.boolean :offer_email
      t.boolean :offer_phone
      t.boolean :offer_rsvp

      t.timestamps
    end
  end
end
