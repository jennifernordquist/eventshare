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

require 'twilio-ruby'

class TextBlast < ActiveRecord::Base
  attr_accessible :contents, :done, :schedule

  belongs_to :group

  validates :done, :inclusion => { :in => [true, false] }
  validates :contents, :schedule, :presence => true

  def TextBlast.run 
    blasts = TextBlast.all
    puts blasts
    blasts.select! { |b| !b.done }
    puts blasts
    blasts.select! { |b| (b.schedule - Time.now) <= 0 }
    puts blasts
    blasts.map(&:blast)
  end

  def blast
    client = Twilio::REST::Client.new(TWILIO_CONFIG["account_sid"], TWILIO_CONFIG["auth_token"])

    group.recipients.each do |r|
	    puts r
	    client.account.sms.messages.create({:from => '+17329457342',
	    					:to => r.phone.gsub(/[^0-9]/, ""),
	    					:body => contents})
    end
    done = true
    save
  end


end
