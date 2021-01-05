Rails.application.routes.draw do

    get "/recipe_random", to: 'recipe_random#index'

    get "/list_ingredient", to: "list_ingredient#index"

end
