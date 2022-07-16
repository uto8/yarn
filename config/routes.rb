Rails.application.routes.draw do
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
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
