Rails.application.routes.draw do
  devise_for :users
  root 'users#index'
  
  resources :users
  resources :doctors do
    resources :appointments, only: [:index, :new, :create, :destroy]
  end
end
