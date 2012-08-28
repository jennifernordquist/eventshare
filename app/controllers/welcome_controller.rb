class WelcomeController < ApplicationController

  def welcome
    render "welcome", :layout => nil
  end
end
