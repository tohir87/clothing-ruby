Rails.application.routes.draw do
    root :to => 'welcome#index'
  get 'welcome/about'
  get 'welcome/contact'
  get 'welcome/index'
  get 'welcome/product_details'
  get 'products/jumpsuits'
  get 'products/sunglasses'
  get 'products/details'
  get 'products/cart'
  get 'customer/new'
  get 'customer/login'
  get 'customer/logout'
  post 'customer/do_login'
  post 'customer/create'

  resources :customers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
