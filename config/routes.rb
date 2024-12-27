Rails.application.routes.draw do
  devise_for :users
  authenticated :user do
    root 'tasks#index', as: :authenticated_root
  end
  root 'home#index'
  resources :tasks
end