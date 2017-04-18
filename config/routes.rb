Rails.application.routes.draw do
  namespace :api do
    get 'stores/index'
  end

  namespace :api do
    get 'stores/show'
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'landing#welcome'

  namespace :admin do
    resources :products
    resources :stores do
      resources :product_stores
    end

    resources :orders do
      resources :order_stores do
        resources :order_products
      end
    end
  end

  namespace :api do
    resources :stores, only: [:index, :show]
  end

end
