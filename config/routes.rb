Eventshare::Application.routes.draw do
  root :to => "dashboard#overview"

  get "dashboard/overview"
  get "dashboard/event"
  get "dashboard/audience"
  get "dashboard/social"
  get "dashboard/flyer"
  get "dashboard/messages"
  get "dashboard/newsms"
  get "dashboard/newemail"

  match "/sign_up" => "auth#register" 
  match "/sign_in" => "auth#login" 

  devise_for :users

  resources :settings
  resources :venues
  resources :groups
  resources :recipients
  resources :email_blasts
  resources :text_blasts
  resources :events
end
