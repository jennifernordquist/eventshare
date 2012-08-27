# == Schema Information
#
# Table name: auths
#
#  id         :integer         not null, primary key
#  token      :string(255)
#  secret     :string(255)
#  provider   :string(255)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

class Auth < ActiveRecord::Base
  attr_accessible :provider, :secret, :token
end