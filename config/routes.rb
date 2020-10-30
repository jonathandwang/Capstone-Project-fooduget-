Rails.application.routes.draw do
  namespace :api do
    #USER LOGIN ROUTES
    post "/users" => "users#create"
    post "/sessions" => "sessions#create"

    #SHOW/CREATE CATEGORY ROUTES
    get "/categories" => "categories#create"
    get "/categories" => "categories#index"
    get "/categories/:id" => "categories#show"

    #SHOW/CREATE ITEMS ROUTES
    get "/items" => "items#create"
    get "/items" => "items#index"
    get "/items/:id" => "items#show"

    #SHOW TYPES ROUTES
    get "/types" => "types#create"
    get "/types" => "types#index"
    get "/types/:id" => "types#show"
  end


end
