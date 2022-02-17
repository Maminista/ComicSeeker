Rails.application.routes.draw do
  devise_for :users
  root to: "home#index"
  # resouces :users とすることで必要なルーティングがすべて実装される
  resources :users 
  
  resources :comics do
    resource :likes, only: [:create, :destroy]
    resource :favorites, only: [:create, :destroy]
  end
end
