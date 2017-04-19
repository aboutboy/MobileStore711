Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'landing#welcome'

  namespace :admin do
    resources :products
    resources :stores do
      resources :product_stores
    end

    resources :orders do
        resources :order_products
    end

    resources :users
  end

  namespace :api do
    resources :stores, only: [:index, :show]
    resources :product_stores, only: [] do
      collection{
        post 'get_products_from_store'
      }
    end
  end

end
