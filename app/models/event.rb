# == Schema Information
#
# Table name: events
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  desc       :string(255)
#  start_time :datetime
#  end_time   :datetime
#  created_at :datetime        not null
#  updated_at :datetime        not null
#  user_id    :integer
#  host       :string(255)
#

class Event < ActiveRecord::Base
  attr_accessible :desc, :end_time, :name, :start_time, :user_id, :host, :venue


  belongs_to :user

  has_many :groups

  has_one :venue

  has_one :setting

  has_many :recipients

  validates :desc, :start_time, :name, :user_id, :host, :presence => true

  after_create :create_default_group

 private

  def create_default_group
    groups.create!(name: "All")
  end
end
