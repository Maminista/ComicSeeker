Rails.application.routes.draw do
  devise_for :users
  root to: "home#index"
  # resouces :users とすることで必要なルーティングがすべて実装される
  resources :users do
    resource :relationships, only: [:create, :destroy]
    # memberとするとネストとなり/users/:id/followerというURLになる
    # followingsページとfollowersページのためのURL
    get :followings, on: :member
    get :followers, on: :member
  end
  
  resources :comics do
    resource :likes, only: [:create, :destroy]
    resource :favorites, only: [:create, :destroy]
    resources :comments, only: [:create, :destroy]
    collection do
      get :ranking
      get :search
    end
  end
end
