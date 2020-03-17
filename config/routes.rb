Rails.application.routes.draw do
  
  resources :events
  get 'calendars/index'
  get 'galleries/index'
  get 'gallery/home'
  resources :billings, only: [] do
      collection do 
        get 'pre_pay'
        get 'execute'
      end
  end

  resources :products do
    resources :orders, only: :create
    delete 'delete_image/:image_id', on: :member, to: 'products#delete_image',
    as: 'delete_image'
  end

  get 'home/index'
  get 'products', to: "products#index"
  
  resources :orders, only: :index do
    collection do
      get 'clean'
    end
  end

  resources :galleries
  resources :products
  resources :categories
  devise_for :users
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"
end

