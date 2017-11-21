Rails.application.routes.draw do
  devise_for :users, :path => 'accounts',
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  resources :users, only: [:show]
  root to: 'pages#home'
  get '/about', to: 'pages#about'
  resources :locations
  resources :users do
    resources :locations, only: [:show, :index, :create, :update]

  resources :bookings

  mount Attachinary::Engine => "/attachinary"
    end
  end




  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
