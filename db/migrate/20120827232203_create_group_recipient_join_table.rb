class CreateGroupRecipientJoinTable < ActiveRecord::Migration

  def change 
  	create_table :groups_recipients, :id => false do |t|
	        t.integer :group_id
		t.integer :recipeient_id
	end
  end

end
