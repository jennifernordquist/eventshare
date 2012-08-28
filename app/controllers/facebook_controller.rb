class FacebookController < ApplicationController
  load_and_authorize_resource :class => "FacebookController"
  require 'koala'

  def create_event
    event = Event.find(params['event_id'])
    auth = Auth.find(:first, :conditions => ["user_id = ? AND provider = ?", current_user.id, "facebook"])
    graph = Koala::Facebook::API.new(auth.token) 
    params = {
     # :picture => picture,
      :name => event.name,
      :description => event.desc,
      :start_time => event.start_time,
      :end_time => event.end_time
    }
    hash = graph.put_object('me', 'events', params);  
    event.facebook_id = hash['id'].to_s
    event.save!
  end


end
