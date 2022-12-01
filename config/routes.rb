Rails.application.routes.draw do

  #these are the routes for listings
  resources :listings

  get "/listings", to: "listings#index"
  get "listings/:id", to: "listing#show"


  #these are the routes for agents
  resources :agents

  get "/agents", to: "agents#index"
  get "agents/:id", to: "agents#show"

  #these are the routes for brokers
  resources :brokers
  
  get "/brokers", to: "brokers#index"
  get "/brokers/:id", to: "brokers#show"

  #not sure why this is here. I feel like this is a part of a db that needs to be dropped
  resources :users
  resources :staffs
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
