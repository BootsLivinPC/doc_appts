Rails.application.routes.draw do
  devise_for :users
  
  resources :doctors
  resources :users do 
    resources :appointments, only: [:index, :new, :create, :destroy]
  end
end
