Rails.application.routes.draw do
  root to: 'customers#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :customers 
  resources :orders
end
