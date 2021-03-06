class DashboardController < ApplicationController
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
    @event = Event.find(params[:event_id])
    render "dashboard/social"
  end

  def flyer
    render "flyer"
  end
  
   def newemail
    render "newemail"
  end
end
