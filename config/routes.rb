Rails.application.routes.draw do
      get "/", to: "home#index"

      get "/recipes/:id", to: "recipes#show"
end
