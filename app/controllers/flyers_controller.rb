class FlyersController < ApplicationController
  skip_authorization_check

  def show
    @event = Event.find(params[:event_id])
    render "show"
  end
end
