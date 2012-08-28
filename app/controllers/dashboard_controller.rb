class DashboardController < ApplicationController
  load_and_authorize_resource :class => "DashboardController"
  
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
