Rails.application.routes.draw do
  root 'bars#index'
  devise_for :users
  get 'users/:id' => 'users#destroy', :via => :delete,
                                      :as => :admin_destroy_user
  get 'users/:id' => 'users#show', as: :user

  resources :bars do
    resources :reviews, only: [:new, :create, :edit, :update, :destroy]
  end

  resources :reviews, only: [:new, :create, :edit, :update, :destroy] do
    resources :votes, only: [:index, :create]
  end

  resources :users, only: [:index, :show, :edit, :update, :destroy]
end
