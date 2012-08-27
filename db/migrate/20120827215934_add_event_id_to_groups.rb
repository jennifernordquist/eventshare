class AddEventIdToGroups < ActiveRecord::Migration
  def up 
	add_column :groups, :event_id, :integer
  end

  def down
	remove_column :groups, :event_id, :integer
  end

end
