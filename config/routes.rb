Rails.application.routes.draw do
  devise_for :users
  resources :posts do 
    member do 
      get "like", to: "posts#upvote"
      get "dislike", to: "posts#downvote"
    end

    resources :comments # only associated with posts
  end

  root 'posts#index'
end
