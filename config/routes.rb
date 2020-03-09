Rails.application.routes.draw do
  
  resources :billings, only: [] do
      collection do 
        get 'pre_pay'
        get 'execute'
      end
  end

  get 'home/index'
  get 'products', to: "products#index"
  
  resources :products
  resources :categories
  devise_for :users
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"
end

