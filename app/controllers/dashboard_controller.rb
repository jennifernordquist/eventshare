class DashboardController < ApplicationController
  load_and_authorize_resource :class => "DashboardController"
  
  def overview
    @event = Event.find(params[:event_id])
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
  
   def newemail
    render "newemail"
  end
end
