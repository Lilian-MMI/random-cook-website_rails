Rails.application.routes.draw do
  get 'sessions/new'
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
