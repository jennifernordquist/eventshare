# == Schema Information
#
# Table name: recipients
#
#  id          :integer         not null, primary key
#  name        :string(255)
#  email       :string(255)
#  phone       :string(255)
#  facebook_id :string(255)
#  rsvp        :string(255)
#  created_at  :datetime        not null
#  updated_at  :datetime        not null
#

class Recipient < ActiveRecord::Base
  attr_accessible :email, :facebook_id, :name, :phone, :rsvp

  has_and_belongs_to_many :groups

  # .first works because all groups belongs to the same event
  validates :email, :presence => :true, :if => groups.first.event.setting.require_email
  validates :phone, :presence => :true, :if => groups.first.event.setting.require_phone
  validates :rsvp, :presence => :true, :if => groups.first.event.setting.require_rsvp
end
