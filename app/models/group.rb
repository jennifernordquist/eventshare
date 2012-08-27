# == Schema Information
#
# Table name: groups
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#  event_id   :integer
#

class Group < ActiveRecord::Base
  attr_accessible :name

  belongs_to :event

  has_many :text_blasts
  has_many :email_blasts

end
