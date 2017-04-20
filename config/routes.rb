Rails.application.routes.draw do
  get 'rankings/have'

  get 'rankings/want'

  get 'ownerships/create'

  get 'ownerships/destroy'
  
  get 'rankings/want', to: 'rankings#want'
  
  get 'rankings/have', to: 'rankings#have'

  root to: 'toppages#index'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  get 'signup', to: 'users#new'
  resources :users, only: [:show, :new, :create]

  resources :items, only: [:show, :new]
  resources :ownerships, only: [:create, :destroy]
end