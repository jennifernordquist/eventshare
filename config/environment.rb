# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Eventshare::Application.initialize!

# Setup the SendGrid settings for ActionMailer. 
ActionMailer::Base.smtp_settings = {
:user_name => "app7077592@heroku.com",
:password => "iiqvzlnq",
:domain => "eventsha.re",
:address => "smtp.sendgrid.net",
:port => 587,
:authentication => :plain,
:enable_starttls_auto => true
}


