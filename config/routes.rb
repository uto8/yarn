Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root to: 'pages#home'
  resources :users, only: [:index, :edit, :show, :update] do
    collection do
      get 'search'
    end
    member do
      get :following, :followers, :users_tweets
    end
  end
  resources :relationships, only: [:create, :destroy]
  resources :events do
    member do
      resources :requests, only: [:create]
    end
  end
  resources :license_approvals, only: [:new, :create]
  resources :requests, only: [:edit, :update]
  get 'direct_message/:id' => 'direct_messages#show', as: 'direct_message'
  resources :direct_messages, only: [:create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
