Rails.application.routes.draw do
  
  get 'users/show'
  get 'users/edit'
  get 'users/show'
  #get 'users/show'
  #get 'users/edit'
  root to:  'homes#top'
  devise_for :users
  resources :post_images, only: [:new, :create, :index, :show, :destroy] do
  resources :post_comments, only: [:create]
  resources :post_comments, only: [:create, :destroy]
  resource :favorites, only: [:create, :destroy]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.htmlr
  #get "/homes/about" => "homes#about", as: "about"
  #resources :post_images, only: [:new, :create, :index, :show, :destroy]
  resources :users, only: [:show, :edit, :update]
end
