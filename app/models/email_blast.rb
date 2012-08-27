class EmailBlast < ActiveRecord::Base
  attr_accessible :contents, :done, :schedule
end
