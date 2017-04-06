Rails.application.routes.draw do
  namespace :admin do
    namespace :admin do
      get 'stores/index'
    end
  end

  namespace :admin do
    namespace :admin do
      get 'stores/create'
    end
  end

  namespace :admin do
    namespace :admin do
      get 'stores/new'
    end
  end

  namespace :admin do
    namespace :admin do
      get 'stores/edit'
    end
  end

  namespace :admin do
    namespace :admin do
      get 'stores/show'
    end
  end

  namespace :admin do
    namespace :admin do
      get 'stores/update'
    end
  end

  namespace :admin do
    namespace :admin do
      get 'stores/destroy'
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'landing#welcome'

  namespace :admin do
    resources :stores
  end

end
