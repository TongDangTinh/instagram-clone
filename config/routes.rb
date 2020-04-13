Rails.application.routes.draw do
  devise_for :accounts
  root "public#homepage"

  # Dashboard 
  get "dashboard", to: "accounts#index"

  resources :posts, only: [:show, :new, :create]
end
