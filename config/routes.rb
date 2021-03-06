Spree::Core::Engine.routes.draw do

  namespace :admin do
    resource :marketplace_settings
    resources :shipments
    resources :suppliers
  end

  namespace :api do
    resources :suppliers, only: :index
  end

end

Spree::Core::Engine.routes.prepend do
  namespace :admin do

    resources :reports, only: [:index] do
      collection do
        get   :earnings
        post  :earnings
      end
    end

    resources :users do
      member do
        get :wallets
        put :wallets_actions
        put :addcard
      end

    end


  end
end
