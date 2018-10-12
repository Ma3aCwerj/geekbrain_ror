Rails.application.routes.draw do
  root 'posts#index'
<<<<<<< HEAD
  devise_for :users
=======
  # resources :users
>>>>>>> git/users
  resources :posts, only: [:index, :show]

  namespace :creator do
    resources :posts, except: [:index, :show]
  end 
  namespace :moderator do
    resources :users
  end
end
