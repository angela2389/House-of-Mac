Rails.application.routes.draw do
  devise_for :customer
  resources :orders


  root 'welcome#index'
  get 'welcome/index'

# routes cart
  get '/cart' => 'cart#index'
  get '/cart/clear' => 'cart#clearCart'
  get '/cart/:id' => 'cart#add'
  get '/cart/remove/:id' => 'cart#remove'

# routes products
  get "products" => "products#index"
  get "products/:id" => "products#show", as: :product
end
