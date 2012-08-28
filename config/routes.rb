Eventshare::Application.routes.draw do
  root :to => "dashboard#overview"

  get "dashboard/overview"
  get "dashboard/event"
  get "dashboard/audience"
  get "dashboard/social"
  get "dashboard/flyer"

  devise_for :users

  resources :settings
  resources :venues
  resources :groups
  resources :recipients
  resources :email_blasts
  resources :text_blasts
  resources :events
end
