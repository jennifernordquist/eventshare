class ChangePhoneToStringInRecipients < ActiveRecord::Migration
  def up
    change_column :recipients, :phone, :string
  end

  def down
   change_column :recipients, :phone, :integer
  end
end
