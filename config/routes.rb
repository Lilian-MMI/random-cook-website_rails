
Rails.application.routes.draw do

    get "/recipes/:id", to: "recipes#show"

    get "/list_ingredient", to: "list_ingredient#index"
 
  root "index#index"

  resources :profil

  get "/recipe", to:"recipe#index"
  resources :recipe
  
  get 'user/index'
  get 'user/show'
  get 'user/new'
  resources :users
  get 'inscription', to: 'inscription#index'

end
