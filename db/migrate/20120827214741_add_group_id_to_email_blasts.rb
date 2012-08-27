class AddGroupIdToEmailBlasts < ActiveRecord::Migration

  def up 
	add_column :email_blasts, :group_id, :integer
  end

  def down
	remove_column :email_blasts, :group_id, :integer
  end

end
