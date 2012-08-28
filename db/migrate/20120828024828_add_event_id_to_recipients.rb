class AddEventIdToRecipients < ActiveRecord::Migration
  def change
    add_column :recipients, :event_id, :integer
  end
end
