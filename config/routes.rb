Rails.application.routes.draw do
  devise_for :customers
  resources :products, only: [:index]
  resource :cart, only: [:show]
  resources :order_items, only: [:create, :update, :destroy]

  get 'welcome/index'

  root 'welcome#index'

  get "products" => "products#index"
  get "products/:id" => "products#show", as: :product
end
