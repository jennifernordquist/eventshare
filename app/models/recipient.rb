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

  belongs_to :event

  validate :has_group_through_event
  # .first works because all groups belongs to the same event
  validates :email, :presence => :true, :if => Proc.new { setting("email") }
  validates :phone, :presence => :true, :if => Proc.new { setting("phone") }
  validates :rsvp, :presence => :true, :if => Proc.new { setting("rsvp") }

  after_create :add_to_all_group

 private
  def has_group_through_event
    raise Exception, :message => "Recipient needs an event!" if event.nil?
    raise Exception, :message => "Event needs a group!" if event.groups.empty?
  end

  def setting(name)
    raise Exception, :message => "Event needs a Setting instance!" if event.setting.nil?
    event.setting.send("require_#{name}")
  end

  def add_to_all_group
    unless event.groups.find_by_name("All").recipients.all.include?(self)
      event.groups.find_by_name("All").recipients << self 
    end
  end
end
