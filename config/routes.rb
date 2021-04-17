Rails.application.routes.draw do
  namespace :api do
    #USER LOGIN ROUTES
    post "/users" => "users#create"
    post "/sessions" => "sessions#create"

    #SHOW/CREATE/DELETE CATEGORY ROUTES
    post "/categories" => "categories#create"
    get "/categories" => "categories#index"
    get "/categories/:id" => "categories#show"
    delete "/categories/:id" => "categories#destroy"

    #SHOW/CREATE/DELETE ITEMS ROUTES
    post "/items" => "items#create"
    get "/items" => "items#index"
    get "/items/:id" => "items#show"
    delete "/items/:id" => "items#destroy"

    #SHOW TYPES ROUTES
    post "/types" => "types#create"
    get "/types" => "types#index"
    get "/types/:id" => "types#show"

    #SHOW ITEM_TYPES ROUTES
    post "/item_types" => "_item_types#create"
    get "/item_types" => "item_types#index"
    get "/item_types/:id" => "item_types#show"

  end
end
