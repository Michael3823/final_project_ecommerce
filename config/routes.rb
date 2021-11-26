Rails.application.routes.draw do
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

  resources :products, only: %i[index show] do 
    collection do 
      get "search"
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
