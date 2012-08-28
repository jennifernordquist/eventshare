Eventshare::Application.routes.draw do
  root :to => "welcome#welcome"
  get "facebook/create_event"


  
  match '/auth/:provider/callback' => 'auths#create'
  
  match "/sign_up" => "auth#register" 
  match "/sign_in" => "auth#login" 

  devise_for :users, controllers: {omniauth_callbacks: "omniauth_callbacks" }

  resources :settings
  resources :venues
  resources :groups
  resources :recipients
  resources :email_blasts
  resources :text_blasts
  resources :facebook_blasts
  resources :auths

  resources :events do
    match "dashboard/overview" => "dashboard#overview"
    match "dashboard/event" => "dashboard#event"
    match "dashboard/audience" => "dashboard#audience"
    match "dashboard/messages" => "dashboard#messages"
    match "dashboard/social" => "dashboard#social"
    match "dashboard/flyer" => "dashboard#flyer"
    match "dashboard/newemail" => "dashboard#newemail"
    match "dashboard/newsms" => "dashboard#newsms"
    match "flyer" => "flyers#show"
  end
  
end
