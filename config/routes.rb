Rails.application.routes.draw do    
  root "index#index"

  get "/profil", to: "profil#index"
  get "/new_recipe", to: "profil#new_recipe"

  post "/traitement_recipe", to: "profil#traitement_recipe"
end
