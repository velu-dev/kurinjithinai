Rails.application.routes.draw do
  
  get 'pages/dashboard'
  
    get 'pages/login'
  
    get 'pages/logout'
  
    get 'pages/contact'
  
    get 'pages/about'
    
    get 'pages/register'

    post 'pages/login_attempt'
    
  resources :product_categories
  resources :orders
  resources :carts
  resources :customer_details
  resources :customers
  resources :products
  resources :offers
  resources :units
  resources :backend_users
  resources :roles
  
  
root "pages#dashboard"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
