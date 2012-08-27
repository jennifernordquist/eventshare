class AddGroupIdToTextBlasts < ActiveRecord::Migration
  def up 
	add_column :text_blasts, :group_id, :integer
  end

  def down
	remove_column :text_blasts, :group_id, :integer
  end

end
