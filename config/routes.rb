Rails.application.routes.draw do
  root 'bars#index'
  devise_for :users

  resources :bars do
    resources :reviews, only: [:new, :create, :edit, :update, :destroy]
  end

end
