Rails.application.routes.draw do
  resources :posts, only: [:create, :new] do
    resources :comments, only: [:create, :new]
  end
  resources :likes, only: [:create, :destroy]
  devise_for :users
  root "site#index"
end
