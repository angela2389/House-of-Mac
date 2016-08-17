Rails.application.routes.draw do
  devise_for :customer
  resources :orders
  get 'welcome/index'

  root 'welcome#index'

  # routes products

  get "products" => "products#index"
  get "products/:id" => "products#show", as: :product
end
