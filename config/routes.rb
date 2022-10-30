Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get '/users/:id', to: "sessions#show"
  root to: 'users#index'
  get '/signup', to: 'user#new'
  post '/signup', to: 'users#create'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  patch '/change/:id', to: "users#update"
  
 
  resources :users, only: [:create,:show, :index]
  resources :parcels
end
