
Rails.application.routes.draw do

  root "home#index"

  get "/profil", to:"index#index"

  get "/home", to:"home#index"
  resources :profil

  get "/recipe", to:"recipe#index"
  get "/recipe/:id", to: "recipe#show"

  get "/recipe_random", to: "recipe_random#index"
  resources :recipe
  resources :recipe do
    put :favorite, on: :member
  end

  get "/recipe/:id/favorite", to: "recipe#favorite"
  
  get 'user/index'
  get 'user/show'
  get 'user/new'
  resources :users

  get 'inscription', to: 'inscription#index'

end
