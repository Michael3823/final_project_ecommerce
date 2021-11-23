Rails.application.routes.draw do
  get 'shop/index'
  get 'boxing_gloves/index'
  get 'boxing_gears/index'
  get 'boxing_shoes/index'
  get 'punching_bags/index'
  get 'about_us/index'
  get 'home_page/index'
  root 'home_page#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
