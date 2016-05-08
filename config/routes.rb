Miejscowka::Application.routes.draw do
resources :places, only: [:new, :create]
resources :visitors, only: [:new, :create]
resources :exsists, only: [:new, :create]
resources :users, only: [:new, :create, :show]
resources :sessions, only: [:new, :create, :destroy]
resources :users do
    resources :sessions
end
root to: 'visitors#new'
end