class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.string :street
      t.string :street2
      t.string :city
      t.string :state
      t.string :zip
      t.string :location

      t.timestamps
    end
  end
end
