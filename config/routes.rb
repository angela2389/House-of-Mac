Rails.application.routes.draw do
  devise_for :customer
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "products" => "products#index"
end
