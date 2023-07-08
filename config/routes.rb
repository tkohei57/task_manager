Rails.application.routes.draw do
  devise_for :users
  root to: 'tasks#index'
  resources :tasks do
    member do
      patch 'complete'
    end
  end
  resources :tasks, only: [:new, :create, :show, :edit, :update, :destroy]
end
