Rails.application.routes.draw do
  resources :tasks
  resources :projects
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :login, only: [:new, :create]
  root "users#index"
  delete "logout", to: "login#destroy", as: "log_out"
end
