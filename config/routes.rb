Rails.application.routes.draw do
  resources :users, only: [:show, :edit]
  resources :events
  resources :attends, only: [:create, :destroy]
  root 'pages#index'
  get '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'
  delete '/logout', to: 'sessions#destroy'
  post '/create-event',  to: 'events#create'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'


  get '/create-event',  to: 'events#new'
  post '/create-event',  to: 'events#create'
  patch '/create-event',  to: 'events#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
