class AddUidToAuths < ActiveRecord::Migration
  def change
    add_column :auths, :uid, :integer
  end
end
