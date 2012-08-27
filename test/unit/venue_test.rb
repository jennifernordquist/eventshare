# == Schema Information
#
# Table name: venues
#
#  id         :integer         not null, primary key
#  street     :string(255)
#  street2    :string(255)
#  city       :string(255)
#  state      :string(255)
#  zip        :string(255)
#  location   :string(255)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

require 'test_helper'

class VenueTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
