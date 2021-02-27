Rails.application.routes.draw do
  # resources :users
  get '/users', to: 'users#index'
  get '/users/:id', to: 'users#show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
