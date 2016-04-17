Miejscowka::Application.routes.draw do
resources :places, only: [:new, :create]
resources :visitors, only: [:new, :create]
resources :exsists, only: [:new, :create]
root to: 'visitors#new'
end