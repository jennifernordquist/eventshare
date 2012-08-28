# == Schema Information
#
# Table name: text_blasts
#
#  id         :integer         not null, primary key
#  done       :boolean
#  contents   :string(255)
#  schedule   :datetime
#  created_at :datetime        not null
#  updated_at :datetime        not null
#  group_id   :integer
#

# == Schema Information
#
# Table name: text_blasts
#
#  id         :integer         not null, primary key
#  done       :boolean
#  contents   :string(255)
#  schedule   :datetime
#  created_at :datetime        not null
#  updated_at :datetime        not null
#
require 'twilio-ruby'

class TextBlast < ActiveRecord::Base
  attr_accessible :contents, :done, :schedule

  belongs_to :group

  validates :done, :inclusion => { :in => [true, false] }
  validates :contents, :schedule, :presence => true

  def dispatch

  end 

end
