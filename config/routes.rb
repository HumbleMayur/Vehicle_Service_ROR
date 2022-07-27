Rails.application.routes.draw do
  resources :service_histories
  resources :customers
  resources :posts
  root to: 'pages#home'
  devise_for :users
  
  get 'cart', to: 'cart#show'
  post 'cart/add'
  post 'cart/remove'
  post 'service_histories/checkout'
  
  resources :products

  
  
  #root 'products#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
