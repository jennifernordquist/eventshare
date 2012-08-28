class AddRequireNameAndOfferNameToSetting < ActiveRecord::Migration
  def change
    add_column :settings, :require_name, :string
    add_column :settings, :offer_name, :string
  end
end
