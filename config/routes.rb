Rails.application.routes.draw do
  resources :appstates
  root to: 'visitors#index'
  devise_for :users
  resources :users
end
