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
#  group_id   :integer
#

class EmailBlast < ActiveRecord::Base
  attr_accessible :contents, :done, :schedule

  belongs_to :group

  validates :done, :inclusion => { :in => [true, false] }
  validates :contents, :schedule, :presence => true

  def EmailBlast.run
    blasts = EmailBlast.all
    blasts.collect! { |b| b.done ? nil : b }
    blasts.compact!
    blasts.collect! { |b| if (b.schedule - Time.now) <= 0 ? b : nil }
    blasts.compact!
    blasts.each do |b|
      b.blast 
    end
  end

  def blast
    group = Group.find(self.group_id)
    event = Event.find(group.event_id)
    group.recipients.each do |r|
	    Notifier.send_email_blast(r, event, self.contents)
    end
    self.done = true
  end

end
