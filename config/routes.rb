Rails.application.routes.draw do
  root 'bars#index'
  devise_for :users

  resources :bars, only: [:index, :new, :show, :create, :edit, :update]
end
