Eventshare::Application.routes.draw do
  root :to => "dashboard#index"

  devise_for :users

  resources :settings
  resources :venues
  resources :groups
  resources :recipients
  resources :email_blasts
  resources :text_blasts
  resources :events
end
