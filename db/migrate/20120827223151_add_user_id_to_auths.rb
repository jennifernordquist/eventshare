class AddUserIdToAuths < ActiveRecord::Migration
  def up 
  	add_column :auths, :user_id, :integer
  end

  def down
	remove_column :auths, :user_id, :integer
  end

end
