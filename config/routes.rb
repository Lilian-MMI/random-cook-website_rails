
Rails.application.routes.draw do
  root "home#index"

  get '/admin', to: "index#index"

  get "/profil", to:"profil#index"

  get "/home", to:"home#index"
  resources :profil

  get "/recipe", to:"recipe#index"
  get "/recipe/:id", to: "recipe#show"
  get "/recipe_week", to: "recipe#random_week"
  get "/recipe/delete/:id", to: "recipe#delete"

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
  get 'sessions/new'


end
