Rails.application.routes.draw do
  devise_for :users
  root 'posts#index'
  resources :users
  resources :posts, only: [:index, :show]

  namespace :creator do
    resources :posts, except: [:index, :show]
  end 
end
