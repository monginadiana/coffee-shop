Rails.application.routes.draw do
  resources :feedbacks, only: [:index, :create, :show, :update, :destroy]
  resources :toppings, only: [:index, :create, :show, :update, :destroy]
  resources :coffees, only: [:index, :create, :show, :update, :destroy]
  resources :users, only: [:index, :create, :update, :destroy]

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "/me", to: "users#show"
  post "/login", to: "sessions#create"
  
  get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }

end
