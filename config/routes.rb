Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  
  get 'products/index'
  get 'products/show'
  get 'shops/index'
  get 'shops/show'
  get 'shop/index'
  get 'boxing_gloves/index'
  get 'boxing_gears/index'
  get 'boxing_shoes/index'
  get 'punching_bags/index'
  get 'about_us/index'
  get 'home_page/index'
  root 'home_page#index'

  
  

  resources :cart, only: %i[create destroy]
  resources :products, only: %i[index show] do 
    collection do 
      get "search"
    end
  end
  scope "/checkout" do
    post "create",  to: "checkout#create",  as: "checkout_create"
    get  "success", to: "checkout#success", as: "checkout_success"
    get  "cancel",  to: "checkout#cancel",  as: "checkout_cancel"
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
