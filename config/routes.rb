Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do 
      post "/users", to: "users#create"
      post "/login", to: "auth#login"
    end
  end
end
