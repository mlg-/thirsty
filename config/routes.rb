Rails.application.routes.draw do
  root 'bars#index'
  devise_for :users

  resources :bars
  resources :users, only: [ :show, :edit, :update, :delete ]
end
