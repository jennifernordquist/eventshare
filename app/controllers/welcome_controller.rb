class WelcomeController < ApplicationController
  skip_authorization_check

  def welcome
    render "welcome", :layout => nil
  end
end
