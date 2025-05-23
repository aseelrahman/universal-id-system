Rails.application.routes.draw do
  devise_for :users
  
  authenticated :user do
    root 'dashboard#index', as: :authenticated_root
  end
  
  root 'home#index'
  
  get 'dashboard', to: 'dashboard#index'
end