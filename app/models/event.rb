class Event < ActiveRecord::Base
  attr_accessible :desc, :end_time, :name, :start_time
end
