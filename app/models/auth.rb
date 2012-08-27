class Auth < ActiveRecord::Base
  attr_accessible :provider, :secret, :token
end
