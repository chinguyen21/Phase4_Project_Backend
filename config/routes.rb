Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do 
      post "/users", to: "users#create"
      get "/users/:id", to: "users#show"
      post "/login", to: "auth#login"
      post "/find", to: "users#find"
    end
  end

  post "/finditem", to: "user_foods#find_item"
  get "foods", to: "foods#index"
  post "/userfoods", to: "user_foods#create"


end
