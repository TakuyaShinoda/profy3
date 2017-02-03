Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show, :edit, :update]
  root 'top#index'
  resources :groups, only: [:show, :edit, :update]
  resources :questions, only: [:create]
  resouces :answers, only: [:new, :create]
end
