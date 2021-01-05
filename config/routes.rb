Rails.application.routes.draw do    
  root "index#index"

  resources :profil

  get "/recipe", to:"recipe#index"
  resources :recipe
end
