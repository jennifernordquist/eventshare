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
    puts blasts
    blasts.select! { |b| !b.done }
    puts blasts
    blasts.select! { |b| (b.schedule - Time.now) <= 0 }
    puts blasts
    blasts.map(&:blast)
  end

  def blast
    group.recipients.each do |r|
	    puts r
	    Notifier.send_email_blast(r, group.event, contents).deliver
    end
    done = true
  end

end
