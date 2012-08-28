Eventshare::Application.routes.draw do
  resources :settings

  resources :venues

  devise_for :users

  root :to => "dashboard#index"

  resources :groups

  resources :recipients

  resources :email_blasts

  resources :text_blasts

  resources :events
end
