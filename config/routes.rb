Eventshare::Application.routes.draw do
  root :to => "welcome#welcome"

  match "/sign_up" => "auth#register" 
  match "/sign_in" => "auth#login" 

  devise_for :users

  resources :settings
  resources :venues
  resources :groups
  resources :recipients
  resources :email_blasts
  resources :text_blasts
  resources :events do
    match "dashboard/overview" => "dashboard#overview"
    match "dashboard/event" => "dashboard#event"
    match "dashboard/audience" => "dashboard#audience"
    match "dashboard/messages" => "dashboard#messages"
    match "dashboard/social" => "dashboard#social"
    match "dashboard/flyer" => "dashboard#flyer"
    match "dashboard/newemail" => "dashboard#newemail"
    match "dashboard/newsms" => "dashboard#newsms"
  end
end
