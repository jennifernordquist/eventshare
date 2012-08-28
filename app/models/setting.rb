# == Schema Information
#
# Table name: settings
#
#  id            :integer         not null, primary key
#  require_email :boolean
#  require_phone :boolean
#  require_rsvp  :boolean
#  offer_email   :boolean
#  offer_phone   :boolean
#  offer_rsvp    :boolean
#  created_at    :datetime        not null
#  updated_at    :datetime        not null
#  event_id      :integer
#

class Setting < ActiveRecord::Base
  attr_accessible :offer_email, :offer_phone, :offer_rsvp, :offer_name, :require_email, :require_phone, :require_rsvp, :require_name

  belongs_to :event
end
