class AddEventIdToVenues < ActiveRecord::Migration
  def up 
	add_column :venues, :event_id, :integer
  end

  def down
	remove_column :venues, :event_id, :integer
  end

end
