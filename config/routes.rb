Rails.application.routes.draw do    
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
