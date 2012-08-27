Eventshare::Application.routes.draw do
  devise_for :users

  root :to => "dashboard_controller#index"

  resources :groups

  resources :recipients

  resources :email_blasts

  resources :text_blasts

  resources :events
end
