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
#

class Event < ActiveRecord::Base
  attr_accessible :desc, :end_time, :name, :start_time

  has_many :groups

  has_one :venue

end
