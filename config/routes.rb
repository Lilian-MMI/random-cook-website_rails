Rails.application.routes.draw do

    root "list_ingredient#index"

    get "/list_ingredient", to: "list_ingredient#index"

end
