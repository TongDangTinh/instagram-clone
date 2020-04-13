Rails.application.routes.draw do
  devise_for :accounts
  root "public#homepage"

  # Dashboard 
  get "dashboard", to: "accounts#index"
  get "profile/:username", to: "accounts#profile", as: :profile
  resources :posts, only: [:show, :new, :create]
end
