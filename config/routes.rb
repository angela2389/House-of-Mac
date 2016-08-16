Rails.application.routes.draw do
  devise_for :customer
  resources :order
  get 'welcome/index'

  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "products" => "products#index"
  get "products/:id" => "products#show", as: :product
end
