class ApplicationController < ActionController::Base
  protect_from_forgery
  check_authorization :unless => :devise_controller?
  
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to "/users/sign_in", :alert => "You're not allowed to do that, are you logged in?"
  end
end
