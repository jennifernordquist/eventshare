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

  def dispatch

  end 

end
