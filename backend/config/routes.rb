Rails.application.routes.draw do
  namespace :api do 
    namespace :v1 do 
      resources :tasks
      resources :professionals
      get '/users', to: 'users#index'
      get '/users/:id', to: 'users#show'    
    end 
  end 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
