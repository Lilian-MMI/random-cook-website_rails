Rails.application.routes.draw do
  get 'user/index'
  get 'user/show'
  get 'user/new'
  resources :users
  get 'inscription', to: 'inscription#index'

end
