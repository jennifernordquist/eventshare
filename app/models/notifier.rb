class Notifier < ActionMailer::Base
  default :from => "no-reply@eventsha.re"
	    

  def test(email)
    mail( :to => email,
	  :subject => "Testing")
  end

  def signup_email(user)
    mail( :to => user.email,
          :subject => "Welcome to EventShare!")
  end

  def send_email_blast(recipient, event, content)
    mail( :to => recipient.email,
	  :subject => "Message for #{event.name}",
	  :body => content )
  end

end
