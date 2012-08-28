class FixRecipientSpellingInGroupsRecipients < ActiveRecord::Migration
  def up
    rename_column :groups_recipients, :recipeient_id, :recipient_id
  end

  def down
  end
end
