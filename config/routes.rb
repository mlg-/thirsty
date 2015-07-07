Rails.application.routes.draw do
  root 'bars#index'
  devise_for :users
  get 'user/:id' => 'users#destroy', :via => :delete, :as => :admin_destroy_user
  get 'user/:id' => 'users#show', as: :user

  resources :bars do
    resources :reviews, only: [:new, :create, :edit, :update, :destroy]
  end
  resources :users, only: [:index, :show, :edit, :update, :destroy]
end
