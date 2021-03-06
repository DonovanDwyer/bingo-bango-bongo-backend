Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, only: [:create, :update]
      post '/login', to: "auth#create"
      get '/profile', to: "users#profile"
      post '/values', to: "values#index"
    end
  end

end
