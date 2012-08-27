class Notifier < ActionMailer::Base
  default :from => "no-reply@eventsha.re"
	    

  def test(email)
    mail( :to => email,
	  :subject => "Testing")
  end

  def signup_email(user)
    mail( :to => user.email,
          :subject => "Welcome to VentureBoard!")
  end

end
