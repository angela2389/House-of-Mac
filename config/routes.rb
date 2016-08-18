Rails.application.routes.draw do
  devise_for :customer
  resources :orders
  get 'welcome/index'

  root 'welcome#index'

  get '/cart' => 'cart#index'
  get '/cart/clear' => 'cart#clearCart'
  get '/cart/:id' => 'cart#add'


  # routes products

  get "products" => "products#index"
  get "products/:id" => "products#show", as: :product
end
