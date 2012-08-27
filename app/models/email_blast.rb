# == Schema Information
#
# Table name: email_blasts
#
#  id         :integer         not null, primary key
#  done       :boolean
#  contents   :string(255)
#  schedule   :datetime
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

class EmailBlast < ActiveRecord::Base
  attr_accessible :contents, :done, :schedule

  belongs_to :group
end
