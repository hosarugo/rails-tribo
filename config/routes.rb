Rails.application.routes.draw do
  devise_for :users, :path => 'accounts'
  resources :users, only: [:show]
  root to: 'pages#home'
  resources :users do
    resources :locations do
      resources :bookings
    end
  end
    end




  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
