Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "pages#home"

  get "about", to: "pages#about"

  get "new", to: "signups#new"

  get "thanks", to: "pages#thanks"
  
  resources :signups
end
