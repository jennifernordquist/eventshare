class DashboardController < ApplicationController
  def overview
    render "overview"
  end

  def event
    render "event"
  end
  
  def audience
    render "audience"
  end

  def social
    render "social"
  end

  def flyer
    render "flyer"
  end
end
