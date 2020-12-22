Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # version 1 of the API
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :products, only: [:index, :show, :update, :create, :destroy]
    end
  end

  # Version 2 of the API
  namespace :api, defaults: { format: :json } do
    namespace :v2 do
      resources :products, only: [:index, :show, :update, :create, :destroy]
      resources :months, only: [:show]
    end
  end

end
