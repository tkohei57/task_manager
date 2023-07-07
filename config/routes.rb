Rails.application.routes.draw do
  devise_for :users
  root to: 'tasks#index'
  resources :tasks do
    member do
      get 'complete'
    end
  end
  resources :tasks, only: [:new, :create, :show]
end
