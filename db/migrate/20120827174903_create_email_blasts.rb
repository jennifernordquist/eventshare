class CreateEmailBlasts < ActiveRecord::Migration
  def change
    create_table :email_blasts do |t|
      t.boolean :done
      t.string :contents
      t.datetime :schedule

      t.timestamps
    end
  end
end
