Rails.application.routes.draw do
  devise_for :users
  resources :posts do 
    resources :comments # only associated with posts
  end

  root 'posts#index'
end
