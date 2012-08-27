Eventshare::Application.routes.draw do
  devise_for :users

  root :to => "dashboard_controller#index"

  resources :email_blasts

  resources :text_blasts

  resources :events
end
