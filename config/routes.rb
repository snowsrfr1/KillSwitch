Rails.application.routes.draw do
  resources :apps
  root to: 'visitors#index'
  devise_for :users
  resources :users
end
