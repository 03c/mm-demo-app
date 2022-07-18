Rails.application.routes.draw do
  resources :products
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "hello#index"

  get "/hello", to: "hello#index"
  get "/slow/:seconds", to: "hello#slow"
end
