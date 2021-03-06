Rails.application.routes.draw do

  namespace :api do 
    namespace :v1 do 
      post '/signup', to: 'users#create'
      post '/login', to: 'sessions#create'
      post '/logout', to: 'sessions#destroy'
      resources :games, only: [:index]
    end
  end

end
