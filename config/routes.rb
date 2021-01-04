Rails.application.routes.draw do    
  root "index#index"

  get "/profil", to: "profil#index"
  get "/new_recipe", to: "profil#new_recipe"
end
