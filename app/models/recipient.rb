class Recipient < ActiveRecord::Base
  attr_accessible :email, :facebook_id, :name, :phone, :rsvp
end
