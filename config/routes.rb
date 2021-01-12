
Rails.application.routes.draw do
  get 'sessions/new'


  root "home#index"

  get "/profil", to:"profil#index"

  get "/home", to:"home#index"
  resources :profil

  get "/recipe", to:"recipe#index"
  get "/recipe/:id", to: "recipe#show"
  get "/recipe_week", to: "recipe#random_week"

  get "/recipe_random", to: "recipe_random#index"
  resources :recipe
  

  get 'user/index'
  get 'user/show'
  get 'user/new'
  resources :users
  resources :sessions, :only => [:new, :create, :destroy]
  get 'inscription', to: 'inscription#index'
  get 'sessions/create'
  get 'sessions/error'
  get 'sessions/destroy'


end
