Rails.application.routes.draw do
  root 'bars#index'
  devise_for :users

<<<<<<< HEAD
  resources :bars do
    resources :reviews, only: [:new, :create, :edit, :update, :destroy]
  end

=======
  resources :bars
  resources :users, only: [:show, :edit, :update, :delete]
>>>>>>> 58a78672759f5606a5bfc88b355b46eab0aef433
end
