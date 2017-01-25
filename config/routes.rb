Miejscowka::Application.routes.draw do
match "admins/edit" => "admins#edit", :via => :post, :as => :edit
match "admins/panel" => "admins#panel", :via => :post, :as => :panel
match "admins/update" => "admins#update", :via => :post, :as => :update
match "admins/placepanel" => "admins#placepanel", :via => :post, :as => :placepanel
match "admins/placeupdate" => "admins#placeupdate", :via => :post, :as => :placeupdate
match "admins/userp" => "admins#userp", :via => :post, :as => :userp
get '/admins/userplaces', to: 'admins#userplaces'
resources :places, only: [:new, :create]
resources :visitors, only: [:new, :create]
resources :exsists, only: [:new, :create, :destroy]
resources :exsists, only: [:new, :create]
resources :users, only: [:new, :create, :show]
resources :sessions, only: [:new, :create, :destroy]
resources :admins do
  resources :users, :places
end

resources :users do
    resources :sessions
end


root to: 'visitors#new'
end