class AddEventIdToSettings < ActiveRecord::Migration
  def change
    add_column :settings, :event_id, :integer
  end
end
