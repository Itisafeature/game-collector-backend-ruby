Rails.application.routes.draw do

  namespace :api do 
    namespace :v1 do 
      get '/test', to: 'users#test'
      post '/signup', to: 'users#create'
      post '/login', to: 'sessions#create'
    end
  end

end
