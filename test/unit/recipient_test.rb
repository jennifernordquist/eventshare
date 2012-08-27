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

require 'test_helper'

class RecipientTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
